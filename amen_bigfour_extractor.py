from __future__ import annotations

import csv
import hashlib
import json
import re
import shutil
import unicodedata
from dataclasses import dataclass, asdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Iterable

# ============================================================
# AMEN BIG FOUR â€” DOCUMENT EXTRACTION & SEEDING ENGINE
# Source : D:\SPIRITUALITE
# Version : 1.0
#
# PRINCIPES
# - zÃ©ro invention
# - zÃ©ro Ã©crasement de source
# - traÃ§abilitÃ© complÃ¨te
# - hash SHA-256
# - dÃ©duplication
# - extraction multi-formats
# - chunking dÃ©terministe
# - QA documentaire
# - manifest JSON/CSV
# - prÃ©paration du seeding AMEN
#
# Le moteur NE pousse PAS directement en base par dÃ©faut.
# Il produit d'abord un package auditable.
# ============================================================


# ------------------------------------------------------------
# CONFIGURATION
# ------------------------------------------------------------

SOURCE_DIR = Path(r"D:\SPIRITUALITE")

OUTPUT_DIR = Path(r"D:\AMEN-SEEDING")

EXTRACT_DIR = OUTPUT_DIR / "01_EXTRACTED"
CHUNK_DIR = OUTPUT_DIR / "02_CHUNKS"
MANIFEST_DIR = OUTPUT_DIR / "03_MANIFEST"
QA_DIR = OUTPUT_DIR / "04_QA"
SEED_DIR = OUTPUT_DIR / "05_SEED_PACKAGE"

CHUNK_SIZE = 1200
CHUNK_OVERLAP = 180

SUPPORTED_EXTENSIONS = {
    ".pdf",
    ".docx",
    ".doc",
    ".txt",
    ".md",
    ".csv",
    ".xlsx",
    ".xls",
    ".xlsb",
    ".pptx",
}

RUN_ID = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")


# ------------------------------------------------------------
# OPTIONAL DEPENDENCIES
# ------------------------------------------------------------

def optional_imports():
    modules = {}

    try:
        import fitz
        modules["fitz"] = fitz
    except ImportError:
        modules["fitz"] = None

    try:
        from docx import Document
        modules["docx"] = Document
    except ImportError:
        modules["docx"] = None

    try:
        import openpyxl
        modules["openpyxl"] = openpyxl
    except ImportError:
        modules["openpyxl"] = None

    try:
        import pandas as pd
        modules["pandas"] = pd
    except ImportError:
        modules["pandas"] = None

    try:
        from pptx import Presentation
        modules["pptx"] = Presentation
    except ImportError:
        modules["pptx"] = None

    return modules


MOD = optional_imports()


# ------------------------------------------------------------
# DATA MODEL
# ------------------------------------------------------------

@dataclass
class DocumentRecord:
    document_id: str
    source_path: str
    relative_path: str
    filename: str
    extension: str
    size_bytes: int
    sha256: str
    modified_at: str

    title: str
    language: str

    extraction_status: str
    extraction_method: str

    character_count: int
    word_count: int
    page_count: int

    duplicate_of: str | None
    quality_status: str
    quality_flags: str

    chunk_count: int
    run_id: str


@dataclass
class ChunkRecord:
    chunk_id: str
    document_id: str
    chunk_index: int

    text: str

    character_count: int
    word_count: int

    source_path: str
    title: str
    language: str

    sha256: str
    run_id: str


# ------------------------------------------------------------
# UTILITIES
# ------------------------------------------------------------

def ensure_dirs():
    for directory in [
        OUTPUT_DIR,
        EXTRACT_DIR,
        CHUNK_DIR,
        MANIFEST_DIR,
        QA_DIR,
        SEED_DIR,
    ]:
        directory.mkdir(parents=True, exist_ok=True)


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()

    with path.open("rb") as f:
        while True:
            block = f.read(1024 * 1024)
            if not block:
                break
            h.update(block)

    return h.hexdigest()


def sha256_text(text: str) -> str:
    return hashlib.sha256(
        text.encode("utf-8", errors="ignore")
    ).hexdigest()


def normalize_text(text: str) -> str:
    if not text:
        return ""

    text = text.replace("\x00", " ")

    # Normalisation Unicode
    text = unicodedata.normalize("NFC", text)

    # espaces
    text = re.sub(r"[ \t]+", " ", text)

    # lignes vides multiples
    text = re.sub(r"\n\s*\n\s*\n+", "\n\n", text)

    return text.strip()


def detect_language(text: str) -> str:
    """
    DÃ©tection volontairement prudente.
    Aucun modÃ¨le externe.
    Retourne UNKNOWN si le signal est insuffisant.
    """

    if not text or len(text.strip()) < 100:
        return "UNKNOWN"

    lower = text.lower()

    scores = {
        "fr": sum(lower.count(x) for x in [
            " le ", " la ", " les ", " des ",
            " une ", " dans ", " avec ", " pour ",
            " que ", " est ", " sur "
        ]),
        "en": sum(lower.count(x) for x in [
            " the ", " and ", " of ", " to ",
            " in ", " with ", " for ", " is "
        ]),
        "es": sum(lower.count(x) for x in [
            " el ", " la ", " los ", " las ",
            " de ", " para ", " que ", " es "
        ]),
        "pt": sum(lower.count(x) for x in [
            " o ", " a ", " os ", " as ",
            " de ", " para ", " que ", " Ã© "
        ]),
    }

    best = max(scores, key=scores.get)

    if scores[best] < 3:
        return "UNKNOWN"

    return best.upper()


def safe_title(filename: str) -> str:
    stem = Path(filename).stem
    stem = re.sub(r"[_\-]+", " ", stem)
    stem = re.sub(r"\s+", " ", stem)
    return stem.strip()


# ------------------------------------------------------------
# TEXT EXTRACTION
# ------------------------------------------------------------

def extract_txt(path: Path) -> tuple[str, int, str]:
    for encoding in ["utf-8", "utf-8-sig", "cp1252", "latin-1"]:
        try:
            text = path.read_text(encoding=encoding)
            return text, 1, f"TEXT/{encoding}"
        except UnicodeDecodeError:
            continue

    raise RuntimeError("Encodage texte non reconnu")


def extract_docx(path: Path) -> tuple[str, int, str]:
    if MOD["docx"] is None:
        raise RuntimeError("python-docx non installÃ©")

    doc = MOD["docx"](str(path))

    blocks = []

    for p in doc.paragraphs:
        value = p.text.strip()

        if value:
            blocks.append(value)

    # Extraction des tableaux
    for table in doc.tables:
        for row in table.rows:
            values = []

            for cell in row.cells:
                value = cell.text.strip()

                if value:
                    values.append(value)

            if values:
                blocks.append(" | ".join(values))

    return "\n".join(blocks), 1, "DOCX"


def extract_pdf(path: Path) -> tuple[str, int, str]:
    if MOD["fitz"] is None:
        raise RuntimeError("PyMuPDF non installÃ©")

    doc = MOD["fitz"].open(str(path))

    pages = []

    for page in doc:
        text = page.get_text("text")

        if text:
            pages.append(text)

    return "\n".join(pages), len(doc), "PDF_TEXT"


def extract_xlsx(path: Path) -> tuple[str, int, str]:
    if MOD["pandas"] is None:
        raise RuntimeError("pandas non installÃ©")

    sheets = pd.ExcelFile(path).sheet_names
    blocks = []

    for sheet in sheets:
        df = pd.read_excel(path, sheet_name=sheet, dtype=str)

        blocks.append(
            f"\n### SHEET: {sheet}\n"
        )

        blocks.append(
            df.fillna("").to_csv(
                index=False,
                sep=" | "
            )
        )

    return "\n".join(blocks), len(sheets), "XLSX/PANDAS"


def extract_csv(path: Path) -> tuple[str, int, str]:
    if MOD["pandas"] is None:
        raise RuntimeError("pandas non installÃ©")

    for encoding in ["utf-8", "utf-8-sig", "cp1252", "latin-1"]:
        try:
            df = pd.read_csv(
                path,
                dtype=str,
                encoding=encoding
            )

            return (
                df.fillna("").to_csv(
                    index=False,
                    sep=" | "
                ),
                1,
                f"CSV/{encoding}"
            )

        except Exception:
            continue

    raise RuntimeError("CSV illisible")


def extract_pptx(path: Path) -> tuple[str, int, str]:
    if MOD["pptx"] is None:
        raise RuntimeError("python-pptx non installÃ©")

    prs = MOD["pptx"](str(path))

    blocks = []

    for i, slide in enumerate(prs.slides, start=1):

        blocks.append(f"\n### SLIDE {i}\n")

        for shape in slide.shapes:

            if hasattr(shape, "text"):

                text = shape.text.strip()

                if text:
                    blocks.append(text)

    return "\n".join(blocks), len(prs.slides), "PPTX"


def extract_document(path: Path) -> tuple[str, int, str]:
    ext = path.suffix.lower()

    if ext in [".txt", ".md"]:
        return extract_txt(path)

    if ext == ".docx":
        return extract_docx(path)

    if ext == ".pdf":
        return extract_pdf(path)

    if ext in [".xlsx", ".xls", ".xlsb"]:
        return extract_xlsx(path)

    if ext == ".csv":
        return extract_csv(path)

    if ext == ".pptx":
        return extract_pptx(path)

    raise RuntimeError(
        f"Extension non supportÃ©e: {ext}"
    )


# ------------------------------------------------------------
# CHUNKING
# ------------------------------------------------------------

def chunk_text(
    text: str,
    size: int = CHUNK_SIZE,
    overlap: int = CHUNK_OVERLAP
) -> list[str]:

    text = normalize_text(text)

    if not text:
        return []

    paragraphs = text.split("\n")

    chunks = []
    current = ""

    for paragraph in paragraphs:

        paragraph = paragraph.strip()

        if not paragraph:
            continue

        if len(current) + len(paragraph) + 1 <= size:
            current += (
                ("\n" if current else "")
                + paragraph
            )
        else:

            if current:
                chunks.append(current)

            # chevauchement dÃ©terministe
            previous = current[-overlap:] if current else ""

            current = (
                previous
                + "\n"
                + paragraph
            )

    if current:
        chunks.append(current)

    return [
        normalize_text(x)
        for x in chunks
        if len(normalize_text(x)) >= 50
    ]


# ------------------------------------------------------------
# QUALITY ASSURANCE
# ------------------------------------------------------------

def quality_check(
    text: str,
    extraction_status: str
) -> tuple[str, list[str]]:

    flags = []

    if extraction_status != "SUCCESS":
        flags.append("EXTRACTION_FAILURE")

    if not text:
        flags.append("EMPTY_DOCUMENT")

    if len(text) < 100:
        flags.append("VERY_SHORT_TEXT")

    replacement_chars = text.count("\ufffd")

    if replacement_chars > 0:
        flags.append("UNICODE_REPLACEMENT_CHAR")

    repeated = len(
        re.findall(
            r"(.)\1{20,}",
            text
        )
    )

    if repeated:
        flags.append("REPEATED_CHARACTER_PATTERN")

    if flags:
        return "REVIEW", flags

    return "PASS", []


# ------------------------------------------------------------
# EXTRACTION ENGINE
# ------------------------------------------------------------

def process_document(
    path: Path,
    seen_hashes: dict[str, str],
) -> tuple[DocumentRecord, list[ChunkRecord]]:

    relative_path = str(
        path.relative_to(SOURCE_DIR)
    )

    file_hash = sha256_file(path)

    document_id = (
        "AMEN-DOC-"
        + file_hash[:16].upper()
    )

    duplicate_of = seen_hashes.get(file_hash)

    extraction_status = "SUCCESS"
    extraction_method = ""
    page_count = 0
    text = ""

    if duplicate_of:

        extraction_status = "DUPLICATE"
        extraction_method = "HASH_DUPLICATE"

    else:

        try:

            text, page_count, extraction_method = (
                extract_document(path)
            )

            text = normalize_text(text)

        except Exception as exc:

            extraction_status = "ERROR"
            extraction_method = (
                f"ERROR: {type(exc).__name__}: {exc}"
            )

    quality_status, flags = quality_check(
        text,
        extraction_status
    )

    if duplicate_of:
        chunks = []
    else:
        chunks = chunk_text(text)

    title = safe_title(path.name)

    language = detect_language(text)

    record = DocumentRecord(
        document_id=document_id,
        source_path=str(path),
        relative_path=relative_path,
        filename=path.name,
        extension=path.suffix.lower(),
        size_bytes=path.stat().st_size,
        sha256=file_hash,
        modified_at=datetime.fromtimestamp(
            path.stat().st_mtime,
            tz=timezone.utc
        ).isoformat(),

        title=title,
        language=language,

        extraction_status=extraction_status,
        extraction_method=extraction_method,

        character_count=len(text),
        word_count=len(text.split()),
        page_count=page_count,

        duplicate_of=duplicate_of,
        quality_status=quality_status,
        quality_flags=";".join(flags),

        chunk_count=len(chunks),
        run_id=RUN_ID,
    )

    chunk_records = []

    for i, chunk in enumerate(chunks):

        chunk_hash = sha256_text(chunk)

        chunk_id = (
            f"{document_id}-CH-{i + 1:05d}"
        )

        chunk_records.append(
            ChunkRecord(
                chunk_id=chunk_id,
                document_id=document_id,
                chunk_index=i,

                text=chunk,

                character_count=len(chunk),
                word_count=len(chunk.split()),

                source_path=relative_path,
                title=title,
                language=language,

                sha256=chunk_hash,
                run_id=RUN_ID,
            )
        )

    return record, chunk_records


# ------------------------------------------------------------
# OUTPUT
# ------------------------------------------------------------

def write_jsonl(
    path: Path,
    records: Iterable
):

    with path.open(
        "w",
        encoding="utf-8"
    ) as f:

        for record in records:

            f.write(
                json.dumps(
                    asdict(record),
                    ensure_ascii=False
                )
                + "\n"
            )


def write_csv(
    path: Path,
    records: list
):

    if not records:
        return

    rows = [
        asdict(record)
        for record in records
    ]

    fields = list(rows[0].keys())

    with path.open(
        "w",
        newline="",
        encoding="utf-8-sig"
    ) as f:

        writer = csv.DictWriter(
            f,
            fieldnames=fields
        )

        writer.writeheader()

        writer.writerows(rows)


# ------------------------------------------------------------
# SEED PACKAGE
# ------------------------------------------------------------

def generate_seed_manifest(
    documents: list[DocumentRecord],
    chunks: list[ChunkRecord]
):

    manifest = {

        "engine": {
            "name": "AMEN Big Four Document Extraction Engine",
            "version": "1.0",
            "run_id": RUN_ID,
            "generated_at": datetime.now(
                timezone.utc
            ).isoformat(),
        },

        "source": {
            "path": str(SOURCE_DIR),
            "supported_extensions": sorted(
                SUPPORTED_EXTENSIONS
            ),
        },

        "controls": {
            "zero_invention": True,
            "source_preservation": True,
            "sha256": True,
            "deduplication": True,
            "deterministic_chunking": True,
            "quality_control": True,
        },

        "statistics": {

            "files_discovered": len(documents),

            "successful": sum(
                1 for x in documents
                if x.extraction_status == "SUCCESS"
            ),

            "duplicates": sum(
                1 for x in documents
                if x.extraction_status == "DUPLICATE"
            ),

            "errors": sum(
                1 for x in documents
                if x.extraction_status == "ERROR"
            ),

            "qa_pass": sum(
                1 for x in documents
                if x.quality_status == "PASS"
            ),

            "qa_review": sum(
                1 for x in documents
                if x.quality_status == "REVIEW"
            ),

            "chunks": len(chunks),

            "words": sum(
                x.word_count
                for x in documents
            ),

            "characters": sum(
                x.character_count
                for x in documents
            ),
        },

        "documents": [
            asdict(x)
            for x in documents
        ],

    }

    path = (
        MANIFEST_DIR
        / f"AMEN_SEED_MANIFEST_{RUN_ID}.json"
    )

    path.write_text(
        json.dumps(
            manifest,
            ensure_ascii=False,
            indent=2
        ),
        encoding="utf-8"
    )

    return path


# ------------------------------------------------------------
# QA REPORT
# ------------------------------------------------------------

def generate_qa_report(
    documents: list[DocumentRecord]
):

    report = []

    report.append(
        "AMEN BIG FOUR â€” EXTRACTION QA REPORT"
    )

    report.append(
        f"RUN_ID: {RUN_ID}"
    )

    report.append(
        f"SOURCE: {SOURCE_DIR}"
    )

    report.append("")

    report.append(
        f"DOCUMENTS: {len(documents)}"
    )

    report.append(
        "SUCCESS: "
        + str(sum(
            x.extraction_status == "SUCCESS"
            for x in documents
        ))
    )

    report.append(
        "DUPLICATES: "
        + str(sum(
            x.extraction_status == "DUPLICATE"
            for x in documents
        ))
    )

    report.append(
        "ERRORS: "
        + str(sum(
            x.extraction_status == "ERROR"
            for x in documents
        ))
    )

    report.append("")

    report.append(
        "DOCUMENTS REQUIRING REVIEW"
    )

    report.append(
        "----------------------------------------"
    )

    for x in documents:

        if x.quality_status != "PASS":

            report.append(
                f"{x.document_id} | "
                f"{x.relative_path} | "
                f"{x.quality_flags}"
            )

    output = (
        QA_DIR
        / f"QA_REPORT_{RUN_ID}.txt"
    )

    output.write_text(
        "\n".join(report),
        encoding="utf-8"
    )

    return output


# ------------------------------------------------------------
# MAIN
# ------------------------------------------------------------

def main():

    print("")
    print("=" * 80)
    print("AMEN BIG FOUR â€” DOCUMENT EXTRACTION & SEEDING ENGINE")
    print("=" * 80)
    print(f"SOURCE : {SOURCE_DIR}")
    print(f"OUTPUT : {OUTPUT_DIR}")
    print(f"RUN ID : {RUN_ID}")
    print("")

    if not SOURCE_DIR.exists():

        raise SystemExit(
            f"ERREUR : source inexistante : {SOURCE_DIR}"
        )

    ensure_dirs()

    files = [
        p
        for p in SOURCE_DIR.rglob("*")
        if p.is_file()
        and p.suffix.lower()
        in SUPPORTED_EXTENSIONS
    ]

    files.sort(
        key=lambda x: str(x).lower()
    )

    print(
        f"[DISCOVERY] {len(files)} fichiers dÃ©tectÃ©s"
    )

    documents = []
    chunks = []

    seen_hashes = {}

    for index, path in enumerate(files, start=1):

        print(
            f"[{index}/{len(files)}] "
            f"{path.relative_to(SOURCE_DIR)}"
        )

        try:

            document, document_chunks = (
                process_document(
                    path,
                    seen_hashes
                )
            )

            documents.append(document)

            if document.extraction_status == "SUCCESS":

                seen_hashes[
                    document.sha256
                ] = document.document_id

            chunks.extend(
                document_chunks
            )

        except Exception as exc:

            print(
                f"  [FATAL FILE ERROR] {exc}"
            )

    # --------------------------------------------------------
    # JSONL
    # --------------------------------------------------------

    write_jsonl(
        MANIFEST_DIR / "documents.jsonl",
        documents
    )

    write_jsonl(
        MANIFEST_DIR / "chunks.jsonl",
        chunks
    )

    # --------------------------------------------------------
    # CSV
    # --------------------------------------------------------

    write_csv(
        MANIFEST_DIR / "documents.csv",
        documents
    )

    write_csv(
        MANIFEST_DIR / "chunks.csv",
        chunks
    )

    # --------------------------------------------------------
    # MANIFEST
    # --------------------------------------------------------

    manifest_path = generate_seed_manifest(
        documents,
        chunks
    )

    # --------------------------------------------------------
    # QA
    # --------------------------------------------------------

    qa_path = generate_qa_report(
        documents
    )

    # --------------------------------------------------------
    # FINAL SUMMARY
    # --------------------------------------------------------

    success = sum(
        x.extraction_status == "SUCCESS"
        for x in documents
    )

    duplicates = sum(
        x.extraction_status == "DUPLICATE"
        for x in documents
    )

    errors = sum(
        x.extraction_status == "ERROR"
        for x in documents
    )

    review = sum(
        x.quality_status == "REVIEW"
        for x in documents
    )

    print("")
    print("=" * 80)
    print("AMEN EXTRACTION â€” FINAL CONTROL")
    print("=" * 80)

    print(f"Documents              : {len(documents)}")
    print(f"Extraction SUCCESS     : {success}")
    print(f"Duplicates SHA-256     : {duplicates}")
    print(f"Extraction ERRORS      : {errors}")
    print(f"QA REVIEW              : {review}")
    print(f"Chunks                 : {len(chunks)}")
    print("")
    print(f"Manifest               : {manifest_path}")
    print(f"QA report              : {qa_path}")
    print("")
    print(f"Documents JSONL        : {MANIFEST_DIR / 'documents.jsonl'}")
    print(f"Chunks JSONL           : {MANIFEST_DIR / 'chunks.jsonl'}")
    print("")
    print("STATUS :", "PASS" if errors == 0 else "REVIEW")
    print("=" * 80)


if __name__ == "__main__":
    main()