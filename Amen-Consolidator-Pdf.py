
from pathlib import Path
from reportlab.lib.pagesizes import A4
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, PageBreak
from reportlab.lib.styles import getSampleStyleSheet
import datetime

def build_pdf(export_dir: Path):
    export_dir = Path(export_dir)
    pdf_path = export_dir / f"AMEN_READDY_FULL_CONTROL_{datetime.datetime.now().strftime('%Y%m%dT%H%M%S')}.pdf"
    doc = SimpleDocTemplate(str(pdf_path), pagesize=A4, leftMargin=40, rightMargin=40, topMargin=40, bottomMargin=40)
    styles = getSampleStyleSheet()
    story = []
    story.append(Paragraph("AMEN - READDY AI - FULL INTEGRATION CONTROL", styles['Title']))
    story.append(Spacer(1,12))
    for name in ["README_READDY_IMPORT.md","MASTER_PROMPT_READDY_AMEN.txt","QA_REPORT.txt","EXTRACTION_ERRORS.json","SHA256SUMS.txt"]:
        p = export_dir / name
        if p.exists():
            story.append(Paragraph(f"=== {name} ===", styles['Heading1']))
            txt = p.read_text(encoding='utf-8', errors='ignore')[:15000]
            txt = txt.replace('<','&lt;').replace('>','&gt;').replace('\n','<br/>')
            story.append(Paragraph(f"<font size=7>{txt}</font>", styles['Code']))
            story.append(PageBreak())
    doc.build(story)
    print(f"PDF OK: {pdf_path}")
    return pdf_path

if __name__ == "__main__":
    import sys
    build_pdf(sys.argv[1] if len(sys.argv)>1 else ".")
