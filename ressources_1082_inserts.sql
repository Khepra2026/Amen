-- PEUPLEMENT 1082 RESSOURCES - Généré 2026-09-22 22:07:19
-- Source: D:\CLONE_SPIRITUALITE_20260922
-- Total: 1077 fichiers

insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '📜 RITUEL DU PENTAGRAMME SUPRÊME AVANCÉ.docx',
  'D:\CLONE_SPIRITUALITE_20260922\📜 RITUEL DU PENTAGRAMME SUPRÊME AVANCÉ.docx',
  '📜 RITUEL DU PENTAGRAMME SUPRÊME AVANCÉ.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '📜 RITUEL DU PENTAGRAMME SUPRÊME AVANCÉ',
  'importe',
  'spiritualite-raw',
  '📜 RITUEL DU PENTAGRAMME SUPRÊME AVANCÉ.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '🔱 Rituel Suprême de Bannissement.docx',
  'D:\CLONE_SPIRITUALITE_20260922\🔱 Rituel Suprême de Bannissement.docx',
  '🔱 Rituel Suprême de Bannissement.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '🔱 Rituel Suprême de Bannissement',
  'importe',
  'spiritualite-raw',
  '🔱 Rituel Suprême de Bannissement.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '06_Egypte_05.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\06_Egypte_05.pdf',
  '06_Egypte_05.pdf',
  'pdf',
  'application/pdf',
  10.99,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '06 Egypte 05',
  'importe',
  'spiritualite-raw',
  '06_Egypte_05.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '11014510-1-z.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\11014510-1-z.jpg',
  '11014510-1-z.jpg',
  'jpg',
  'image/jpeg',
  0.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '11014510 1 z',
  'importe',
  'spiritualite-raw',
  '11014510-1-z.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '13203535-papyrus-égyptiens-représentant-la-reine-néfertari-faire-une-offrande-à-isis.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\13203535-papyrus-égyptiens-représentant-la-reine-néfertari-faire-une-offrande-à-isis.jpg',
  '13203535-papyrus-égyptiens-représentant-la-reine-néfertari-faire-une-offrande-à-isis.jpg',
  'jpg',
  'image/jpeg',
  0.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '13203535 papyrus égyptiens représentant la reine néfertari faire une offrande à isis',
  'importe',
  'spiritualite-raw',
  '13203535-papyrus-égyptiens-représentant-la-reine-néfertari-faire-une-offrande-à-isis.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '139_bouddha-sa-vie-d-apres-les-textes-de-l-inde-ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\139_bouddha-sa-vie-d-apres-les-textes-de-l-inde-ancienne.pdf',
  '139_bouddha-sa-vie-d-apres-les-textes-de-l-inde-ancienne.pdf',
  'pdf',
  'application/pdf',
  3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '139 bouddha sa vie d apres les textes de l inde ancienne',
  'importe',
  'spiritualite-raw',
  '139_bouddha-sa-vie-d-apres-les-textes-de-l-inde-ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '175359454.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\175359454.pdf',
  '175359454.pdf',
  'pdf',
  'application/pdf',
  40.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '175359454',
  'importe',
  'spiritualite-raw',
  '175359454.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '180161496-Pratiques-Martinistes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\180161496-Pratiques-Martinistes.pdf',
  '180161496-Pratiques-Martinistes.pdf',
  'pdf',
  'application/pdf',
  0.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '180161496 Pratiques Martinistes',
  'importe',
  'spiritualite-raw',
  '180161496-Pratiques-Martinistes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '1897__jollivet-castelot___comment_on_devient_alchimiste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\1897__jollivet-castelot___comment_on_devient_alchimiste.pdf',
  '1897__jollivet-castelot___comment_on_devient_alchimiste.pdf',
  'pdf',
  'application/pdf',
  15.9,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '1897  jollivet castelot   comment on devient alchimiste',
  'importe',
  'spiritualite-raw',
  '1897__jollivet-castelot___comment_on_devient_alchimiste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '1956-les-mysteres-majeurs.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\1956-les-mysteres-majeurs.pdf',
  '1956-les-mysteres-majeurs.pdf',
  'pdf',
  'application/pdf',
  0.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '1956 les mysteres majeurs',
  'importe',
  'spiritualite-raw',
  '1956-les-mysteres-majeurs.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '32_1969-cours-esoterique-de-magie-runique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\32_1969-cours-esoterique-de-magie-runique.pdf',
  '32_1969-cours-esoterique-de-magie-runique.pdf',
  'pdf',
  'application/pdf',
  0.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '32 1969 cours esoterique de magie runique',
  'importe',
  'spiritualite-raw',
  '32_1969-cours-esoterique-de-magie-runique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '33_1969-cours-esoterique-de-kabbale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\33_1969-cours-esoterique-de-kabbale.pdf',
  '33_1969-cours-esoterique-de-kabbale.pdf',
  'pdf',
  'application/pdf',
  1.66,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  '',
  '33 1969 cours esoterique de kabbale',
  'importe',
  'spiritualite-raw',
  '33_1969-cours-esoterique-de-kabbale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '34_1968-les-corps-solaires.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\34_1968-les-corps-solaires.pdf',
  '34_1968-les-corps-solaires.pdf',
  'pdf',
  'application/pdf',
  1.9,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '34 1968 les corps solaires',
  'importe',
  'spiritualite-raw',
  '34_1968-les-corps-solaires.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '350947092-HolyGuardianAngel-DRAFT-01-1-pdf.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\350947092-HolyGuardianAngel-DRAFT-01-1-pdf.pdf',
  '350947092-HolyGuardianAngel-DRAFT-01-1-pdf.pdf',
  'pdf',
  'application/pdf',
  2.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '350947092 HolyGuardianAngel DRAFT 01 1 pdf',
  'importe',
  'spiritualite-raw',
  '350947092-HolyGuardianAngel-DRAFT-01-1-pdf.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '36 conciliateurs.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\36 conciliateurs.mp3',
  '36 conciliateurs.mp3',
  'mp3',
  'audio/mpeg',
  170.84,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '36 conciliateurs',
  'importe',
  'spiritualite-raw',
  '36 conciliateurs.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '37243184-Sacramentaire-du-Rose-Croix.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\37243184-Sacramentaire-du-Rose-Croix.pdf',
  '37243184-Sacramentaire-du-Rose-Croix.pdf',
  'pdf',
  'application/pdf',
  3.09,
  (select id from piliers where code='AMEN'),
  'Meditations',
  '',
  '37243184 Sacramentaire du Rose Croix',
  'importe',
  'spiritualite-raw',
  '37243184-Sacramentaire-du-Rose-Croix.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '52_1959-logos-mantras-et-theurgie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\52_1959-logos-mantras-et-theurgie.pdf',
  '52_1959-logos-mantras-et-theurgie.pdf',
  'pdf',
  'application/pdf',
  1.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '52 1959 logos mantras et theurgie',
  'importe',
  'spiritualite-raw',
  '52_1959-logos-mantras-et-theurgie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '55_1959-le-livre-jaune.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\55_1959-le-livre-jaune.pdf',
  '55_1959-le-livre-jaune.pdf',
  'pdf',
  'application/pdf',
  0.69,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '55 1959 le livre jaune',
  'importe',
  'spiritualite-raw',
  '55_1959-le-livre-jaune.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '56_1958-le-magnus-opus.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\56_1958-le-magnus-opus.pdf',
  '56_1958-le-magnus-opus.pdf',
  'pdf',
  'application/pdf',
  0.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '56 1958 le magnus opus',
  'importe',
  'spiritualite-raw',
  '56_1958-le-magnus-opus.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '62_1954-manuel-de-magie-pratique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\62_1954-manuel-de-magie-pratique.pdf',
  '62_1954-manuel-de-magie-pratique.pdf',
  'pdf',
  'application/pdf',
  0.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '62 1954 manuel de magie pratique',
  'importe',
  'spiritualite-raw',
  '62_1954-manuel-de-magie-pratique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '72 anges génies.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\72 anges génies.jpg',
  '72 anges génies.jpg',
  'jpg',
  'image/jpeg',
  0.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '72 anges génies',
  'importe',
  'spiritualite-raw',
  '72 anges génies.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '82_bhagavad-gita-telle-qu-elle-est.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\82_bhagavad-gita-telle-qu-elle-est.pdf',
  '82_bhagavad-gita-telle-qu-elle-est.pdf',
  'pdf',
  'application/pdf',
  0.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  '82 bhagavad gita telle qu elle est',
  'importe',
  'spiritualite-raw',
  '82_bhagavad-gita-telle-qu-elle-est.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Agrippa_La_magie_d_Arbatel.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Agrippa_La_magie_d_Arbatel.pdf',
  'Agrippa_La_magie_d_Arbatel.pdf',
  'pdf',
  'application/pdf',
  2.91,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Agrippa La magie d Arbatel',
  'importe',
  'spiritualite-raw',
  'Agrippa_La_magie_d_Arbatel.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Alchemical-Writings-of-Edward-Kelly-1893.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Alchemical-Writings-of-Edward-Kelly-1893.pdf',
  'Alchemical-Writings-of-Edward-Kelly-1893.pdf',
  'pdf',
  'application/pdf',
  4.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Alchemical Writings of Edward Kelly 1893',
  'importe',
  'spiritualite-raw',
  'Alchemical-Writings-of-Edward-Kelly-1893.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ALCHEMY KEY - Hermetic Order of the Golden Dawn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ALCHEMY KEY - Hermetic Order of the Golden Dawn.pdf',
  'ALCHEMY KEY - Hermetic Order of the Golden Dawn.pdf',
  'pdf',
  'application/pdf',
  6.4,
  (select id from piliers where code='AETHER'),
  'Golden Dawn',
  '',
  'ALCHEMY KEY   Hermetic Order of the Golden Dawn',
  'importe',
  'spiritualite-raw',
  'ALCHEMY KEY - Hermetic Order of the Golden Dawn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'alchemy-and-the-tetragram-samael-aun-weor.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\alchemy-and-the-tetragram-samael-aun-weor.pdf',
  'alchemy-and-the-tetragram-samael-aun-weor.pdf',
  'pdf',
  'application/pdf',
  1.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'alchemy and the tetragram samael aun weor',
  'importe',
  'spiritualite-raw',
  'alchemy-and-the-tetragram-samael-aun-weor.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ambelain Robert - Le Rituel Des Gardiens Invisibles _ TOAZ.INFO.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Ambelain Robert - Le Rituel Des Gardiens Invisibles _ TOAZ.INFO.pdf',
  'Ambelain Robert - Le Rituel Des Gardiens Invisibles _ TOAZ.INFO.pdf',
  'pdf',
  'application/pdf',
  2.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Ambelain Robert   Le Rituel Des Gardiens Invisibles   TOAZ.INFO',
  'importe',
  'spiritualite-raw',
  'Ambelain Robert - Le Rituel Des Gardiens Invisibles _ TOAZ.INFO.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ambelain_Franc_Maconnerie_d_autrefois.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ambelain_Franc_Maconnerie_d_autrefois.pdf',
  'ambelain_Franc_Maconnerie_d_autrefois.pdf',
  'pdf',
  'application/pdf',
  10.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'ambelain Franc Maconnerie d autrefois',
  'importe',
  'spiritualite-raw',
  'ambelain_Franc_Maconnerie_d_autrefois.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ambelain-robert-lalchimie-spirituelle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ambelain-robert-lalchimie-spirituelle.pdf',
  'ambelain-robert-lalchimie-spirituelle.pdf',
  'pdf',
  'application/pdf',
  1.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'ambelain robert lalchimie spirituelle',
  'importe',
  'spiritualite-raw',
  'ambelain-robert-lalchimie-spirituelle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ANO CCMP N°013-2022_CABINET DU MINISTERE IFSI.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ANO CCMP N°013-2022_CABINET DU MINISTERE IFSI.pdf',
  'ANO CCMP N°013-2022_CABINET DU MINISTERE IFSI.pdf',
  'pdf',
  'application/pdf',
  0.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'ANO CCMP N°013 2022 CABINET DU MINISTERE IFSI',
  'importe',
  'spiritualite-raw',
  'ANO CCMP N°013-2022_CABINET DU MINISTERE IFSI.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Anton-Parks-Le-Testament-de-la-Vierge.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Anton-Parks-Le-Testament-de-la-Vierge.pdf',
  'Anton-Parks-Le-Testament-de-la-Vierge.pdf',
  'pdf',
  'application/pdf',
  21.95,
  (select id from piliers where code='AMEN'),
  'Meditations',
  '',
  'Anton Parks Le Testament de la Vierge',
  'importe',
  'spiritualite-raw',
  'Anton-Parks-Le-Testament-de-la-Vierge.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Arbatel of Magick.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Arbatel of Magick.pdf',
  'Arbatel of Magick.pdf',
  'pdf',
  'application/pdf',
  0.24,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Arbatel of Magick',
  'importe',
  'spiritualite-raw',
  'Arbatel of Magick.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Arbre sephirotique_Egyptien.png',
  'D:\CLONE_SPIRITUALITE_20260922\Arbre sephirotique_Egyptien.png',
  'Arbre sephirotique_Egyptien.png',
  'png',
  'image/png',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Arbre sephirotique Egyptien',
  'importe',
  'spiritualite-raw',
  'Arbre sephirotique_Egyptien.png'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Assmann_Nommer_l_Un_2015.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Assmann_Nommer_l_Un_2015.pdf',
  'Assmann_Nommer_l_Un_2015.pdf',
  'pdf',
  'application/pdf',
  13.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Assmann Nommer l Un 2015',
  'importe',
  'spiritualite-raw',
  'Assmann_Nommer_l_Un_2015.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'baixardoc.com-the-book-of-oberon.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\baixardoc.com-the-book-of-oberon.pdf',
  'baixardoc.com-the-book-of-oberon.pdf',
  'pdf',
  'application/pdf',
  39.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'baixardoc.com the book of oberon',
  'importe',
  'spiritualite-raw',
  'baixardoc.com-the-book-of-oberon.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Bible Hébreux-Français.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Bible Hébreux-Français.pdf',
  'Bible Hébreux-Français.pdf',
  'pdf',
  'application/pdf',
  41.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Bible Hébreux Français',
  'importe',
  'spiritualite-raw',
  'Bible Hébreux-Français.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Bickel_1994_La_cosmogonie_egyptienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Bickel_1994_La_cosmogonie_egyptienne.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne.pdf',
  'pdf',
  'application/pdf',
  20.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Bickel 1994 La cosmogonie egyptienne',
  'importe',
  'spiritualite-raw',
  'Bickel_1994_La_cosmogonie_egyptienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Book of the Dead_0.jpg.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\Book of the Dead_0.jpg.jpg',
  'Book of the Dead_0.jpg.jpg',
  'jpg',
  'image/jpeg',
  0.27,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Book of the Dead 0.jpg',
  'importe',
  'spiritualite-raw',
  'Book of the Dead_0.jpg.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Cabbale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Cabbale.pdf',
  'Cabbale.pdf',
  'pdf',
  'application/pdf',
  15.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Cabbale',
  'importe',
  'spiritualite-raw',
  'Cabbale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Cagliostro.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Cagliostro.pdf',
  'Cagliostro.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Cagliostro',
  'importe',
  'spiritualite-raw',
  'Cagliostro.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Carré magique Sri KUBERA.jpeg',
  'D:\CLONE_SPIRITUALITE_20260922\Carré magique Sri KUBERA.jpeg',
  'Carré magique Sri KUBERA.jpeg',
  'jpeg',
  'image/jpeg',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Carré magique Sri KUBERA',
  'importe',
  'spiritualite-raw',
  'Carré magique Sri KUBERA.jpeg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Cicero - Self Initiation into the Golden Dawn Tradition_Part 01.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Cicero - Self Initiation into the Golden Dawn Tradition_Part 01.pdf',
  'Cicero - Self Initiation into the Golden Dawn Tradition_Part 01.pdf',
  'pdf',
  'application/pdf',
  18.98,
  (select id from piliers where code='AETHER'),
  'Golden Dawn',
  '',
  'Cicero   Self Initiation into the Golden Dawn Tradition Part 01',
  'importe',
  'spiritualite-raw',
  'Cicero - Self Initiation into the Golden Dawn Tradition_Part 01.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Communiquer-Avec-Son-Ange-Gardien.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Communiquer-Avec-Son-Ange-Gardien.pdf',
  'Communiquer-Avec-Son-Ange-Gardien.pdf',
  'pdf',
  'application/pdf',
  2.73,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Communiquer Avec Son Ange Gardien',
  'importe',
  'spiritualite-raw',
  'Communiquer-Avec-Son-Ange-Gardien.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Crowley-magick-in-theory-and-practice-.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Crowley-magick-in-theory-and-practice-.pdf',
  'Crowley-magick-in-theory-and-practice-.pdf',
  'pdf',
  'application/pdf',
  4.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Crowley magick in theory and practice ',
  'importe',
  'spiritualite-raw',
  'Crowley-magick-in-theory-and-practice-.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Culte journalier divin Egypte.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Culte journalier divin Egypte.pdf',
  'Culte journalier divin Egypte.pdf',
  'pdf',
  'application/pdf',
  14.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Culte journalier divin Egypte',
  'importe',
  'spiritualite-raw',
  'Culte journalier divin Egypte.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'DEBUT_MASQUE.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\DEBUT_MASQUE.pdf',
  'DEBUT_MASQUE.pdf',
  'pdf',
  'application/pdf',
  0.18,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'DEBUT MASQUE',
  'importe',
  'spiritualite-raw',
  'DEBUT_MASQUE.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Dictionnaire_hebreu_francais.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Dictionnaire_hebreu_francais.pdf',
  'Dictionnaire_hebreu_francais.pdf',
  'pdf',
  'application/pdf',
  37.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Dictionnaire hebreu francais',
  'importe',
  'spiritualite-raw',
  'Dictionnaire_hebreu_francais.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'DocumentssurCagliostro.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\DocumentssurCagliostro.pdf',
  'DocumentssurCagliostro.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'DocumentssurCagliostro',
  'importe',
  'spiritualite-raw',
  'DocumentssurCagliostro.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Dogme et Rituel de la Haute Magie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Dogme et Rituel de la Haute Magie.pdf',
  'Dogme et Rituel de la Haute Magie.pdf',
  'pdf',
  'application/pdf',
  3.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Dogme et Rituel de la Haute Magie',
  'importe',
  'spiritualite-raw',
  'Dogme et Rituel de la Haute Magie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Dossier cplt HYPNOSE.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Dossier cplt HYPNOSE.pdf',
  'Dossier cplt HYPNOSE.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Dossier cplt HYPNOSE',
  'importe',
  'spiritualite-raw',
  'Dossier cplt HYPNOSE.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptian_30th_Dynasty_-_The_Judgement_of_Osiris_detail_from_a_Book_of_the_Dead_Late_Period_(papyrus)_-_(MeisterDrucke-425906).jpg',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptian_30th_Dynasty_-_The_Judgement_of_Osiris_detail_from_a_Book_of_the_Dead_Late_Period_(papyrus)_-_(MeisterDrucke-425906).jpg',
  'Egyptian_30th_Dynasty_-_The_Judgement_of_Osiris_detail_from_a_Book_of_the_Dead_Late_Period_(papyrus)_-_(MeisterDrucke-425906).jpg',
  'jpg',
  'image/jpeg',
  0.18,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Egyptian 30th Dynasty   The Judgement of Osiris detail from a Book of the Dead Late Period (papyrus)   (MeisterDrucke 425906)',
  'importe',
  'spiritualite-raw',
  'Egyptian_30th_Dynasty_-_The_Judgement_of_Osiris_detail_from_a_Book_of_the_Dead_Late_Period_(papyrus)_-_(MeisterDrucke-425906).jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Encyclopedia of Ancient Egypt.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Encyclopedia of Ancient Egypt.pdf',
  'Encyclopedia of Ancient Egypt.pdf',
  'pdf',
  'application/pdf',
  4.75,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Encyclopedia of Ancient Egypt',
  'importe',
  'spiritualite-raw',
  'Encyclopedia of Ancient Egypt.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ennéade.jfif',
  'D:\CLONE_SPIRITUALITE_20260922\Ennéade.jfif',
  'Ennéade.jfif',
  'jfif',
  'application/octet-stream',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Ennéade',
  'importe',
  'spiritualite-raw',
  'Ennéade.jfif'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'EQUINOX A. Crowley.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\EQUINOX A. Crowley.pdf',
  'EQUINOX A. Crowley.pdf',
  'pdf',
  'application/pdf',
  2.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'EQUINOX A. Crowley',
  'importe',
  'spiritualite-raw',
  'EQUINOX A. Crowley.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Esseniens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Esseniens.pdf',
  'Esseniens.pdf',
  'pdf',
  'application/pdf',
  0.69,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Esseniens',
  'importe',
  'spiritualite-raw',
  'Esseniens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Exorcisme.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Exorcisme.docx',
  'Exorcisme.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Exorcisme',
  'importe',
  'spiritualite-raw',
  'Exorcisme.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Grammaire_égyptienne_ou_Principes_généraux_[...]Champollion_Jean-François_bpt6k61025921.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Grammaire_égyptienne_ou_Principes_généraux_[...]Champollion_Jean-François_bpt6k61025921.pdf',
  'Grammaire_égyptienne_ou_Principes_généraux_[...]Champollion_Jean-François_bpt6k61025921.pdf',
  'pdf',
  'application/pdf',
  27.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Grammaire égyptienne ou Principes généraux [...]Champollion Jean François bpt6k61025921',
  'importe',
  'spiritualite-raw',
  'Grammaire_égyptienne_ou_Principes_généraux_[...]Champollion_Jean-François_bpt6k61025921.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Grande invocation Khépérienne.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Grande invocation Khépérienne.docx',
  'Grande invocation Khépérienne.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Grande invocation Khépérienne',
  'importe',
  'spiritualite-raw',
  'Grande invocation Khépérienne.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Gregorian.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Gregorian.mp3',
  'Gregorian.mp3',
  'mp3',
  'audio/mpeg',
  1328.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Gregorian',
  'importe',
  'spiritualite-raw',
  'Gregorian.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Harmonisation avec le Neterou.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Harmonisation avec le Neterou.docx',
  'Harmonisation avec le Neterou.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Harmonisation avec le Neterou',
  'importe',
  'spiritualite-raw',
  'Harmonisation avec le Neterou.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Harmonisation avec les 10 sephirots.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Harmonisation avec les 10 sephirots.docx',
  'Harmonisation avec les 10 sephirots.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.66,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Harmonisation avec les 10 sephirots',
  'importe',
  'spiritualite-raw',
  'Harmonisation avec les 10 sephirots.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Henoch.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Henoch.pdf',
  'Henoch.pdf',
  'pdf',
  'application/pdf',
  2.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Henoch',
  'importe',
  'spiritualite-raw',
  'Henoch.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hermes Trismegiste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hermes Trismegiste.pdf',
  'Hermes Trismegiste.pdf',
  'pdf',
  'application/pdf',
  13.49,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hermes Trismegiste',
  'importe',
  'spiritualite-raw',
  'Hermes Trismegiste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Histoire de la magie_Eliphas Levi.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Histoire de la magie_Eliphas Levi.pdf',
  'Histoire de la magie_Eliphas Levi.pdf',
  'pdf',
  'application/pdf',
  172.94,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Histoire de la magie Eliphas Levi',
  'importe',
  'spiritualite-raw',
  'Histoire de la magie_Eliphas Levi.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Holy Guardian Angel by Michael Cecchetelli (z-lib.org).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Holy Guardian Angel by Michael Cecchetelli (z-lib.org).pdf',
  'Holy Guardian Angel by Michael Cecchetelli (z-lib.org).pdf',
  'pdf',
  'application/pdf',
  7.96,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Holy Guardian Angel by Michael Cecchetelli (z lib.org)',
  'importe',
  'spiritualite-raw',
  'Holy Guardian Angel by Michael Cecchetelli (z-lib.org).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymne à Amon-1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hymne à Amon-1.pdf',
  'Hymne à Amon-1.pdf',
  'pdf',
  'application/pdf',
  1.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hymne à Amon 1',
  'importe',
  'spiritualite-raw',
  'Hymne à Amon-1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymne à Amon.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Hymne à Amon.docx',
  'Hymne à Amon.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hymne à Amon',
  'importe',
  'spiritualite-raw',
  'Hymne à Amon.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymne à Amon.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hymne à Amon.pdf',
  'Hymne à Amon.pdf',
  'pdf',
  'application/pdf',
  1.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hymne à Amon',
  'importe',
  'spiritualite-raw',
  'Hymne à Amon.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymne à Osiris.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hymne à Osiris.pdf',
  'Hymne à Osiris.pdf',
  'pdf',
  'application/pdf',
  1.58,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hymne à Osiris',
  'importe',
  'spiritualite-raw',
  'Hymne à Osiris.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymne_à_Ammon-Ra___des_[...]_bpt6k330458 (1).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hymne_à_Ammon-Ra___des_[...]_bpt6k330458 (1).pdf',
  'Hymne_à_Ammon-Ra___des_[...]_bpt6k330458 (1).pdf',
  'pdf',
  'application/pdf',
  14.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hymne à Ammon Ra   des [...] bpt6k330458 (1)',
  'importe',
  'spiritualite-raw',
  'Hymne_à_Ammon-Ra___des_[...]_bpt6k330458 (1).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hypnose%20et%20Auto-Hypnose2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Hypnose%20et%20Auto-Hypnose2.pdf',
  'Hypnose%20et%20Auto-Hypnose2.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Hypnose%20et%20Auto Hypnose2',
  'importe',
  'spiritualite-raw',
  'Hypnose%20et%20Auto-Hypnose2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'I.Regardie_Complete_Golden_Dawn_(II ed.deluxe).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\I.Regardie_Complete_Golden_Dawn_(II ed.deluxe).pdf',
  'I.Regardie_Complete_Golden_Dawn_(II ed.deluxe).pdf',
  'pdf',
  'application/pdf',
  62.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'I.Regardie Complete Golden Dawn (II ed.deluxe)',
  'importe',
  'spiritualite-raw',
  'I.Regardie_Complete_Golden_Dawn_(II ed.deluxe).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'I.Regardie_Complete_Golden_Dawn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\I.Regardie_Complete_Golden_Dawn.pdf',
  'I.Regardie_Complete_Golden_Dawn.pdf',
  'pdf',
  'application/pdf',
  62.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'I.Regardie Complete Golden Dawn',
  'importe',
  'spiritualite-raw',
  'I.Regardie_Complete_Golden_Dawn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Invocation de Mars.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Invocation de Mars.docx',
  'Invocation de Mars.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Invocation de Mars',
  'importe',
  'spiritualite-raw',
  'Invocation de Mars.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Invocation des Keroubim 1.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Invocation des Keroubim 1.docx',
  'Invocation des Keroubim 1.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Invocation des Keroubim 1',
  'importe',
  'spiritualite-raw',
  'Invocation des Keroubim 1.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Invocation des Keroubim.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Invocation des Keroubim.docx',
  'Invocation des Keroubim.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Invocation des Keroubim',
  'importe',
  'spiritualite-raw',
  'Invocation des Keroubim.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Invocation Magie solaire.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Invocation Magie solaire.docx',
  'Invocation Magie solaire.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Invocation Magie solaire',
  'importe',
  'spiritualite-raw',
  'Invocation Magie solaire.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Invocation protection énergie vitale.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Invocation protection énergie vitale.docx',
  'Invocation protection énergie vitale.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Invocation protection énergie vitale',
  'importe',
  'spiritualite-raw',
  'Invocation protection énergie vitale.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'INVOCATIONS KABBALISTIQUES.docx',
  'D:\CLONE_SPIRITUALITE_20260922\INVOCATIONS KABBALISTIQUES.docx',
  'INVOCATIONS KABBALISTIQUES.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'INVOCATIONS KABBALISTIQUES',
  'importe',
  'spiritualite-raw',
  'INVOCATIONS KABBALISTIQUES.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'j-pascal-ruggiu-rituels-magiques-golden-dawn-tome-1-pdf-free.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\j-pascal-ruggiu-rituels-magiques-golden-dawn-tome-1-pdf-free.pdf',
  'j-pascal-ruggiu-rituels-magiques-golden-dawn-tome-1-pdf-free.pdf',
  'pdf',
  'application/pdf',
  15.72,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'j pascal ruggiu rituels magiques golden dawn tome 1 pdf free',
  'importe',
  'spiritualite-raw',
  'j-pascal-ruggiu-rituels-magiques-golden-dawn-tome-1-pdf-free.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Jugement du roi mort-Egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Jugement du roi mort-Egypte ancienne.pdf',
  'Jugement du roi mort-Egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  2.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Jugement du roi mort Egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Jugement du roi mort-Egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'K010-0.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\K010-0.pdf',
  'K010-0.pdf',
  'pdf',
  'application/pdf',
  3.9,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'K010 0',
  'importe',
  'spiritualite-raw',
  'K010-0.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Kabaleb-Llop-Tristan-Les-Mysteres-de-l-Oeuvre-Divine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Kabaleb-Llop-Tristan-Les-Mysteres-de-l-Oeuvre-Divine.pdf',
  'Kabaleb-Llop-Tristan-Les-Mysteres-de-l-Oeuvre-Divine.pdf',
  'pdf',
  'application/pdf',
  7.36,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Kabaleb Llop Tristan Les Mysteres de l Oeuvre Divine',
  'importe',
  'spiritualite-raw',
  'Kabaleb-Llop-Tristan-Les-Mysteres-de-l-Oeuvre-Divine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Kabbale-et-Destinee.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Kabbale-et-Destinee.pdf',
  'Kabbale-et-Destinee.pdf',
  'pdf',
  'application/pdf',
  2.05,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  '',
  'Kabbale et Destinee',
  'importe',
  'spiritualite-raw',
  'Kabbale-et-Destinee.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra_Hermeneia_Rituel_KHEPER-RA_EM_TA_2026-06-13.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Khepra_Hermeneia_Rituel_KHEPER-RA_EM_TA_2026-06-13.pdf',
  'Khepra_Hermeneia_Rituel_KHEPER-RA_EM_TA_2026-06-13.pdf',
  'pdf',
  'application/pdf',
  0.24,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  '',
  'Khepra Hermeneia Rituel KHEPER RA EM TA 2026 06 13',
  'importe',
  'spiritualite-raw',
  'Khepra_Hermeneia_Rituel_KHEPER-RA_EM_TA_2026-06-13.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kupdf.net_rituels-magiques-et-theacuteurgiques-tome1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\kupdf.net_rituels-magiques-et-theacuteurgiques-tome1.pdf',
  'kupdf.net_rituels-magiques-et-theacuteurgiques-tome1.pdf',
  'pdf',
  'application/pdf',
  8.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'kupdf.net rituels magiques et theacuteurgiques tome1',
  'importe',
  'spiritualite-raw',
  'kupdf.net_rituels-magiques-et-theacuteurgiques-tome1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'L-Initiation-1962-1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\L-Initiation-1962-1.pdf',
  'L-Initiation-1962-1.pdf',
  'pdf',
  'application/pdf',
  3.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'L Initiation 1962 1',
  'importe',
  'spiritualite-raw',
  'L-Initiation-1962-1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'L-Initiation-2004-3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\L-Initiation-2004-3.pdf',
  'L-Initiation-2004-3.pdf',
  'pdf',
  'application/pdf',
  3.36,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'L Initiation 2004 3',
  'importe',
  'spiritualite-raw',
  'L-Initiation-2004-3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'L-Initiation-2006-2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\L-Initiation-2006-2.pdf',
  'L-Initiation-2006-2.pdf',
  'pdf',
  'application/pdf',
  4.58,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'L Initiation 2006 2',
  'importe',
  'spiritualite-raw',
  'L-Initiation-2006-2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'La lumiere sur le royaume ou Pratique de la magie sacree au quotidien, tome 1 ( PDFDrive ).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\La lumiere sur le royaume ou Pratique de la magie sacree au quotidien, tome 1 ( PDFDrive ).pdf',
  'La lumiere sur le royaume ou Pratique de la magie sacree au quotidien, tome 1 ( PDFDrive ).pdf',
  'pdf',
  'application/pdf',
  4.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'La lumiere sur le royaume ou Pratique de la magie sacree au quotidien, tome 1 ( PDFDrive )',
  'importe',
  'spiritualite-raw',
  'La lumiere sur le royaume ou Pratique de la magie sacree au quotidien, tome 1 ( PDFDrive ).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'La lumire sur le Royaume.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\La lumire sur le Royaume.pdf',
  'La lumire sur le Royaume.pdf',
  'pdf',
  'application/pdf',
  4.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'La lumire sur le Royaume',
  'importe',
  'spiritualite-raw',
  'La lumire sur le Royaume.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'La magie énokienne.docx',
  'D:\CLONE_SPIRITUALITE_20260922\La magie énokienne.docx',
  'La magie énokienne.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'La magie énokienne',
  'importe',
  'spiritualite-raw',
  'La magie énokienne.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'La_divine_comédie_de_Dante_[...]Dante_Alighieri_bpt6k5455841k.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\La_divine_comédie_de_Dante_[...]Dante_Alighieri_bpt6k5455841k.pdf',
  'La_divine_comédie_de_Dante_[...]Dante_Alighieri_bpt6k5455841k.pdf',
  'pdf',
  'application/pdf',
  5.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'La divine comédie de Dante [...]Dante Alighieri bpt6k5455841k',
  'importe',
  'spiritualite-raw',
  'La_divine_comédie_de_Dante_[...]Dante_Alighieri_bpt6k5455841k.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'la_vie_des_maitres.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\la_vie_des_maitres.pdf',
  'la_vie_des_maitres.pdf',
  'pdf',
  'application/pdf',
  7.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'la vie des maitres',
  'importe',
  'spiritualite-raw',
  'la_vie_des_maitres.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'La-voyance-en-16-lecons.Delclos-Marie-.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\La-voyance-en-16-lecons.Delclos-Marie-.pdf',
  'La-voyance-en-16-lecons.Delclos-Marie-.pdf',
  'pdf',
  'application/pdf',
  12.73,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'La voyance en 16 lecons.Delclos Marie ',
  'importe',
  'spiritualite-raw',
  'La-voyance-en-16-lecons.Delclos-Marie-.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Le_ciel_et_ses_puissances_dans_les_ritue.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Le_ciel_et_ses_puissances_dans_les_ritue.pdf',
  'Le_ciel_et_ses_puissances_dans_les_ritue.pdf',
  'pdf',
  'application/pdf',
  7.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Le ciel et ses puissances dans les ritue',
  'importe',
  'spiritualite-raw',
  'Le_ciel_et_ses_puissances_dans_les_ritue.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Le_grand_Grimoire_avec_la_grande_clavicu-1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Le_grand_Grimoire_avec_la_grande_clavicu-1.pdf',
  'Le_grand_Grimoire_avec_la_grande_clavicu-1.pdf',
  'pdf',
  'application/pdf',
  2.76,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Le grand Grimoire avec la grande clavicu 1',
  'importe',
  'spiritualite-raw',
  'Le_grand_Grimoire_avec_la_grande_clavicu-1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Le_Kybalion.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Le_Kybalion.pdf',
  'Le_Kybalion.pdf',
  'pdf',
  'application/pdf',
  0.32,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Le Kybalion',
  'importe',
  'spiritualite-raw',
  'Le_Kybalion.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'le-combat-de-adam-et-eve-1-2-3-41.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\le-combat-de-adam-et-eve-1-2-3-41.pdf',
  'le-combat-de-adam-et-eve-1-2-3-41.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'le combat de adam et eve 1 2 3 41',
  'importe',
  'spiritualite-raw',
  'le-combat-de-adam-et-eve-1-2-3-41.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Le-livre-des-morts-des-anciens-Egyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Le-livre-des-morts-des-anciens-Egyptiens.pdf',
  'Le-livre-des-morts-des-anciens-Egyptiens.pdf',
  'pdf',
  'application/pdf',
  4.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Le livre des morts des anciens Egyptiens',
  'importe',
  'spiritualite-raw',
  'Le-livre-des-morts-des-anciens-Egyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'les-enseignements-qabalistiques-de-l-ordre-hermetique-de-la-golden-dawn-1_compress.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\les-enseignements-qabalistiques-de-l-ordre-hermetique-de-la-golden-dawn-1_compress.pdf',
  'les-enseignements-qabalistiques-de-l-ordre-hermetique-de-la-golden-dawn-1_compress.pdf',
  'pdf',
  'application/pdf',
  37.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'les enseignements qabalistiques de l ordre hermetique de la golden dawn 1 compress',
  'importe',
  'spiritualite-raw',
  'les-enseignements-qabalistiques-de-l-ordre-hermetique-de-la-golden-dawn-1_compress.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Les-lourds-secrets-du-Golgotha-Ambelain-Robert-Z-Library.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Les-lourds-secrets-du-Golgotha-Ambelain-Robert-Z-Library.pdf',
  'Les-lourds-secrets-du-Golgotha-Ambelain-Robert-Z-Library.pdf',
  'pdf',
  'application/pdf',
  10.49,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Les lourds secrets du Golgotha Ambelain Robert Z Library',
  'importe',
  'spiritualite-raw',
  'Les-lourds-secrets-du-Golgotha-Ambelain-Robert-Z-Library.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livre du secret de la création.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livre du secret de la création.pdf',
  'Livre du secret de la création.pdf',
  'pdf',
  'application/pdf',
  12.68,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Livre du secret de la création',
  'importe',
  'spiritualite-raw',
  'Livre du secret de la création.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'livre-henoch.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\livre-henoch.pdf',
  'livre-henoch.pdf',
  'pdf',
  'application/pdf',
  6.79,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'livre henoch',
  'importe',
  'spiritualite-raw',
  'livre-henoch.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Magick The Master Therion.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Magick The Master Therion.pdf',
  'Magick The Master Therion.pdf',
  'pdf',
  'application/pdf',
  16.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Magick The Master Therion',
  'importe',
  'spiritualite-raw',
  'Magick The Master Therion.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Magick.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Magick.pdf',
  'Magick.pdf',
  'pdf',
  'application/pdf',
  100.56,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Magick',
  'importe',
  'spiritualite-raw',
  'Magick.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Magie dans l''Egypte antique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Magie dans l''Egypte antique.pdf',
  'Magie dans l''Egypte antique.pdf',
  'pdf',
  'application/pdf',
  0.71,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Magie dans l''Egypte antique',
  'importe',
  'spiritualite-raw',
  'Magie dans l''Egypte antique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'maîtrise de la vie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\maîtrise de la vie.pdf',
  'maîtrise de la vie.pdf',
  'pdf',
  'application/pdf',
  0.68,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'maîtrise de la vie',
  'importe',
  'spiritualite-raw',
  'maîtrise de la vie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Mandala du Bonheur.jpeg',
  'D:\CLONE_SPIRITUALITE_20260922\Mandala du Bonheur.jpeg',
  'Mandala du Bonheur.jpeg',
  'jpeg',
  'image/jpeg',
  0.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Mandala du Bonheur',
  'importe',
  'spiritualite-raw',
  'Mandala du Bonheur.jpeg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrit d''ALGER Martinez de PASQUALLY .pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Manuscrit d''ALGER Martinez de PASQUALLY .pdf',
  'Manuscrit d''ALGER Martinez de PASQUALLY .pdf',
  'pdf',
  'application/pdf',
  0.67,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Manuscrit d''ALGER Martinez de PASQUALLY ',
  'importe',
  'spiritualite-raw',
  'Manuscrit d''ALGER Martinez de PASQUALLY .pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Marie.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\Marie.jpg',
  'Marie.jpg',
  'jpg',
  'image/jpeg',
  0.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Marie',
  'importe',
  'spiritualite-raw',
  'Marie.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maystre_1992_Les_grands_pretres_de_Ptah_de_Memphis.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Maystre_1992_Les_grands_pretres_de_Ptah_de_Memphis.pdf',
  'Maystre_1992_Les_grands_pretres_de_Ptah_de_Memphis.pdf',
  'pdf',
  'application/pdf',
  10.74,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Maystre 1992 Les grands pretres de Ptah de Memphis',
  'importe',
  'spiritualite-raw',
  'Maystre_1992_Les_grands_pretres_de_Ptah_de_Memphis.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Mystères Egyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Mystères Egyptiens.pdf',
  'Mystères Egyptiens.pdf',
  'pdf',
  'application/pdf',
  8.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Mystères Egyptiens',
  'importe',
  'spiritualite-raw',
  'Mystères Egyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Nirvana Shatakam Mantra.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Nirvana Shatakam Mantra.docx',
  'Nirvana Shatakam Mantra.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Nirvana Shatakam Mantra',
  'importe',
  'spiritualite-raw',
  'Nirvana Shatakam Mantra.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Objectifs Prospérités financières 2022-2026.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Objectifs Prospérités financières 2022-2026.docx',
  'Objectifs Prospérités financières 2022-2026.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Objectifs Prospérités financières 2022 2026',
  'importe',
  'spiritualite-raw',
  'Objectifs Prospérités financières 2022-2026.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Octogone.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Octogone.docx',
  'Octogone.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Octogone',
  'importe',
  'spiritualite-raw',
  'Octogone.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ovni.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ovni.pdf',
  'ovni.pdf',
  'pdf',
  'application/pdf',
  1.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'ovni',
  'importe',
  'spiritualite-raw',
  'ovni.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'pdf',
  'application/pdf',
  56.67,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'pdfcoffee.com les rituels magiques de l ordre hermetique de la golden dawn pdf free',
  'importe',
  'spiritualite-raw',
  'pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Pouvoirs%20interieurs.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Pouvoirs%20interieurs.pdf',
  'Pouvoirs%20interieurs.pdf',
  'pdf',
  'application/pdf',
  0.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Pouvoirs%20interieurs',
  'importe',
  'spiritualite-raw',
  'Pouvoirs%20interieurs.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Pratiques magiques_Pentagramme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Pratiques magiques_Pentagramme.pdf',
  'Pratiques magiques_Pentagramme.pdf',
  'pdf',
  'application/pdf',
  9.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Pratiques magiques Pentagramme',
  'importe',
  'spiritualite-raw',
  'Pratiques magiques_Pentagramme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Préparation du rituel kabbalistique de conjuration de Mars.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Préparation du rituel kabbalistique de conjuration de Mars.docx',
  'Préparation du rituel kabbalistique de conjuration de Mars.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Préparation du rituel kabbalistique de conjuration de Mars',
  'importe',
  'spiritualite-raw',
  'Préparation du rituel kabbalistique de conjuration de Mars.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Prière d''invocation des Noces Alchimiques.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Prière d''invocation des Noces Alchimiques.docx',
  'Prière d''invocation des Noces Alchimiques.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Prière d''invocation des Noces Alchimiques',
  'importe',
  'spiritualite-raw',
  'Prière d''invocation des Noces Alchimiques.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Prière de régénération_Chérubins et anges planétaires.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Prière de régénération_Chérubins et anges planétaires.docx',
  'Prière de régénération_Chérubins et anges planétaires.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Prière de régénération Chérubins et anges planétaires',
  'importe',
  'spiritualite-raw',
  'Prière de régénération_Chérubins et anges planétaires.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Prière de Salomon.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Prière de Salomon.docx',
  'Prière de Salomon.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Prière de Salomon',
  'importe',
  'spiritualite-raw',
  'Prière de Salomon.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Psaume 119_Vav-Lamed.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Psaume 119_Vav-Lamed.docx',
  'Psaume 119_Vav-Lamed.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Psaume 119 Vav Lamed',
  'importe',
  'spiritualite-raw',
  'Psaume 119_Vav-Lamed.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rite égyptien Memphis.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rite égyptien Memphis.docx',
  'Rite égyptien Memphis.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rite égyptien Memphis',
  'importe',
  'spiritualite-raw',
  'Rite égyptien Memphis.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rite renovée de ASET.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rite renovée de ASET.docx',
  'Rite renovée de ASET.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rite renovée de ASET',
  'importe',
  'spiritualite-raw',
  'Rite renovée de ASET.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'RITUEL 1 PURIFICATION.docx',
  'D:\CLONE_SPIRITUALITE_20260922\RITUEL 1 PURIFICATION.docx',
  'RITUEL 1 PURIFICATION.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'RITUEL 1 PURIFICATION',
  'importe',
  'spiritualite-raw',
  'RITUEL 1 PURIFICATION.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel 2.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel 2.docx',
  'Rituel 2.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  1.27,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel 2',
  'importe',
  'spiritualite-raw',
  'Rituel 2.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel d''ancrage réputationnel KHEPRA EXPERTS.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel d''ancrage réputationnel KHEPRA EXPERTS.pdf',
  'Rituel d''ancrage réputationnel KHEPRA EXPERTS.pdf',
  'pdf',
  'application/pdf',
  4.86,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  '',
  'Rituel d''ancrage réputationnel KHEPRA EXPERTS',
  'importe',
  'spiritualite-raw',
  'Rituel d''ancrage réputationnel KHEPRA EXPERTS.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel d''invocation NEITH.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel d''invocation NEITH.docx',
  'Rituel d''invocation NEITH.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel d''invocation NEITH',
  'importe',
  'spiritualite-raw',
  'Rituel d''invocation NEITH.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel d''invocation Serket.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel d''invocation Serket.docx',
  'Rituel d''invocation Serket.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel d''invocation Serket',
  'importe',
  'spiritualite-raw',
  'Rituel d''invocation Serket.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel de compensation_Mouton.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel de compensation_Mouton.docx',
  'Rituel de compensation_Mouton.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel de compensation Mouton',
  'importe',
  'spiritualite-raw',
  'Rituel de compensation_Mouton.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'RITUEL DE CONSECRATION DES ARMES MAGIQUES.docx',
  'D:\CLONE_SPIRITUALITE_20260922\RITUEL DE CONSECRATION DES ARMES MAGIQUES.docx',
  'RITUEL DE CONSECRATION DES ARMES MAGIQUES.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'RITUEL DE CONSECRATION DES ARMES MAGIQUES',
  'importe',
  'spiritualite-raw',
  'RITUEL DE CONSECRATION DES ARMES MAGIQUES.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel de destruction de la sorcellerie familiale.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel de destruction de la sorcellerie familiale.docx',
  'Rituel de destruction de la sorcellerie familiale.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel de destruction de la sorcellerie familiale',
  'importe',
  'spiritualite-raw',
  'Rituel de destruction de la sorcellerie familiale.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel de quête d''illumination.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel de quête d''illumination.docx',
  'Rituel de quête d''illumination.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel de quête d''illumination',
  'importe',
  'spiritualite-raw',
  'Rituel de quête d''illumination.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel du culte journalier Egyptien.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel du culte journalier Egyptien.pdf',
  'Rituel du culte journalier Egyptien.pdf',
  'pdf',
  'application/pdf',
  16.72,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel du culte journalier Egyptien',
  'importe',
  'spiritualite-raw',
  'Rituel du culte journalier Egyptien.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel du Pilier du Milieu.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel du Pilier du Milieu.docx',
  'Rituel du Pilier du Milieu.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel du Pilier du Milieu',
  'importe',
  'spiritualite-raw',
  'Rituel du Pilier du Milieu.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel Kabbalistique de Conjuration de Saturne.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel Kabbalistique de Conjuration de Saturne.docx',
  'Rituel Kabbalistique de Conjuration de Saturne.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel Kabbalistique de Conjuration de Saturne',
  'importe',
  'spiritualite-raw',
  'Rituel Kabbalistique de Conjuration de Saturne.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel Kabbalistique de Magie Lunaire.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel Kabbalistique de Magie Lunaire.docx',
  'Rituel Kabbalistique de Magie Lunaire.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel Kabbalistique de Magie Lunaire',
  'importe',
  'spiritualite-raw',
  'Rituel Kabbalistique de Magie Lunaire.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel Kabbalistique de Magie Solaire.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel Kabbalistique de Magie Solaire.docx',
  'Rituel Kabbalistique de Magie Solaire.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel Kabbalistique de Magie Solaire',
  'importe',
  'spiritualite-raw',
  'Rituel Kabbalistique de Magie Solaire.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel kabbalistique de régénération spirituelle.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel kabbalistique de régénération spirituelle.docx',
  'Rituel kabbalistique de régénération spirituelle.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel kabbalistique de régénération spirituelle',
  'importe',
  'spiritualite-raw',
  'Rituel kabbalistique de régénération spirituelle.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel Sri KUBERA.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel Sri KUBERA.docx',
  'Rituel Sri KUBERA.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel Sri KUBERA',
  'importe',
  'spiritualite-raw',
  'Rituel Sri KUBERA.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituel_Conjuration_Samael_Aun_Weor_Clean.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Rituel_Conjuration_Samael_Aun_Weor_Clean.pdf',
  'Rituel_Conjuration_Samael_Aun_Weor_Clean.pdf',
  'pdf',
  'application/pdf',
  0,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituel Conjuration Samael Aun Weor Clean',
  'importe',
  'spiritualite-raw',
  'Rituel_Conjuration_Samael_Aun_Weor_Clean.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rituels de l''Initiation des Elus Coen.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Rituels de l''Initiation des Elus Coen.pdf',
  'Rituels de l''Initiation des Elus Coen.pdf',
  'pdf',
  'application/pdf',
  4.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rituels de l''Initiation des Elus Coen',
  'importe',
  'spiritualite-raw',
  'Rituels de l''Initiation des Elus Coen.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'RobertAmbelain-SymboliqueMaonniqueDesOutils.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\RobertAmbelain-SymboliqueMaonniqueDesOutils.pdf',
  'RobertAmbelain-SymboliqueMaonniqueDesOutils.pdf',
  'pdf',
  'application/pdf',
  0.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'RobertAmbelain SymboliqueMaonniqueDesOutils',
  'importe',
  'spiritualite-raw',
  'RobertAmbelain-SymboliqueMaonniqueDesOutils.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Rudrashtakam.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Rudrashtakam.docx',
  'Rudrashtakam.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Rudrashtakam',
  'importe',
  'spiritualite-raw',
  'Rudrashtakam.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ruggiu, Jean-Pascal - Rituels magiques de la Golden Dawn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Ruggiu, Jean-Pascal - Rituels magiques de la Golden Dawn.pdf',
  'Ruggiu, Jean-Pascal - Rituels magiques de la Golden Dawn.pdf',
  'pdf',
  'application/pdf',
  31.09,
  (select id from piliers where code='AETHER'),
  'Golden Dawn',
  '',
  'Ruggiu, Jean Pascal   Rituels magiques de la Golden Dawn',
  'importe',
  'spiritualite-raw',
  'Ruggiu, Jean-Pascal - Rituels magiques de la Golden Dawn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Sahasrara Mandala.jpeg',
  'D:\CLONE_SPIRITUALITE_20260922\Sahasrara Mandala.jpeg',
  'Sahasrara Mandala.jpeg',
  'jpeg',
  'image/jpeg',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Sahasrara Mandala',
  'importe',
  'spiritualite-raw',
  'Sahasrara Mandala.jpeg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Sahasrara Mandala2.jpeg',
  'D:\CLONE_SPIRITUALITE_20260922\Sahasrara Mandala2.jpeg',
  'Sahasrara Mandala2.jpeg',
  'jpeg',
  'image/jpeg',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Sahasrara Mandala2',
  'importe',
  'spiritualite-raw',
  'Sahasrara Mandala2.jpeg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Scarabée_Kheper mythologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Scarabée_Kheper mythologie.pdf',
  'Scarabée_Kheper mythologie.pdf',
  'pdf',
  'application/pdf',
  3.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Scarabée Kheper mythologie',
  'importe',
  'spiritualite-raw',
  'Scarabée_Kheper mythologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Secret Inner Order Rituals of the Golden Dawm.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Secret Inner Order Rituals of the Golden Dawm.pdf',
  'Secret Inner Order Rituals of the Golden Dawm.pdf',
  'pdf',
  'application/pdf',
  1.84,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Secret Inner Order Rituals of the Golden Dawm',
  'importe',
  'spiritualite-raw',
  'Secret Inner Order Rituals of the Golden Dawm.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Secret_M_Egyptienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Secret_M_Egyptienne.pdf',
  'Secret_M_Egyptienne.pdf',
  'pdf',
  'application/pdf',
  62.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Secret M Egyptienne',
  'importe',
  'spiritualite-raw',
  'Secret_M_Egyptienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Sentier Vav.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Sentier Vav.docx',
  'Sentier Vav.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Sentier Vav',
  'importe',
  'spiritualite-raw',
  'Sentier Vav.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Shri Hanumana Chalisa.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Shri Hanumana Chalisa.docx',
  'Shri Hanumana Chalisa.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Shri Hanumana Chalisa',
  'importe',
  'spiritualite-raw',
  'Shri Hanumana Chalisa.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Shri Kubera Mantra.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Shri Kubera Mantra.docx',
  'Shri Kubera Mantra.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Shri Kubera Mantra',
  'importe',
  'spiritualite-raw',
  'Shri Kubera Mantra.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Sri KUBERA.jpeg',
  'D:\CLONE_SPIRITUALITE_20260922\Sri KUBERA.jpeg',
  'Sri KUBERA.jpeg',
  'jpeg',
  'image/jpeg',
  0.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Sri KUBERA',
  'importe',
  'spiritualite-raw',
  'Sri KUBERA.jpeg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'système nerveux auton.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\système nerveux auton.pdf',
  'système nerveux auton.pdf',
  'pdf',
  'application/pdf',
  2.88,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'système nerveux auton',
  'importe',
  'spiritualite-raw',
  'système nerveux auton.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'tai-chi-2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\tai-chi-2.mp3',
  'tai-chi-2.mp3',
  'mp3',
  'audio/mpeg',
  143.66,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'tai chi 2',
  'importe',
  'spiritualite-raw',
  'tai-chi-2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Temple Heliopolis.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Temple Heliopolis.pdf',
  'Temple Heliopolis.pdf',
  'pdf',
  'application/pdf',
  0.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Temple Heliopolis',
  'importe',
  'spiritualite-raw',
  'Temple Heliopolis.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The Complete Golden Dawn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\The Complete Golden Dawn.pdf',
  'The Complete Golden Dawn.pdf',
  'pdf',
  'application/pdf',
  33.94,
  (select id from piliers where code='AETHER'),
  'Golden Dawn',
  '',
  'The Complete Golden Dawn',
  'importe',
  'spiritualite-raw',
  'The Complete Golden Dawn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The egyptian book of the dead.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\The egyptian book of the dead.pdf',
  'The egyptian book of the dead.pdf',
  'pdf',
  'application/pdf',
  36.75,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'The egyptian book of the dead',
  'importe',
  'spiritualite-raw',
  'The egyptian book of the dead.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The Secret History of the World.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\The Secret History of the World.pdf',
  'The Secret History of the World.pdf',
  'pdf',
  'application/pdf',
  25.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'The Secret History of the World',
  'importe',
  'spiritualite-raw',
  'The Secret History of the World.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The Secret Rituals of the O.T.O. (Illuminati, Templars, Freemasons, etc.).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\The Secret Rituals of the O.T.O. (Illuminati, Templars, Freemasons, etc.).pdf',
  'The Secret Rituals of the O.T.O. (Illuminati, Templars, Freemasons, etc.).pdf',
  'pdf',
  'application/pdf',
  1.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'The Secret Rituals of the O.T.O. (Illuminati, Templars, Freemasons, etc.)',
  'importe',
  'spiritualite-raw',
  'The Secret Rituals of the O.T.O. (Illuminati, Templars, Freemasons, etc.).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The_judgement_of_the_dead_in_the_presence_of_Osiris.jpg',
  'D:\CLONE_SPIRITUALITE_20260922\The_judgement_of_the_dead_in_the_presence_of_Osiris.jpg',
  'The_judgement_of_the_dead_in_the_presence_of_Osiris.jpg',
  'jpg',
  'image/jpeg',
  0.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'The judgement of the dead in the presence of Osiris',
  'importe',
  'spiritualite-raw',
  'The_judgement_of_the_dead_in_the_presence_of_Osiris.jpg'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'The+Arbatel+Experience_Ritual+of+PHALEG.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\The+Arbatel+Experience_Ritual+of+PHALEG.pdf',
  'The+Arbatel+Experience_Ritual+of+PHALEG.pdf',
  'pdf',
  'application/pdf',
  9.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'The+Arbatel+Experience Ritual+of+PHALEG',
  'importe',
  'spiritualite-raw',
  'The+Arbatel+Experience_Ritual+of+PHALEG.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'TheGodsoftheEgyptians_10565455.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\TheGodsoftheEgyptians_10565455.pdf',
  'TheGodsoftheEgyptians_10565455.pdf',
  'pdf',
  'application/pdf',
  13.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'TheGodsoftheEgyptians 10565455',
  'importe',
  'spiritualite-raw',
  'TheGodsoftheEgyptians_10565455.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Théologie Egyptienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Théologie Egyptienne.pdf',
  'Théologie Egyptienne.pdf',
  'pdf',
  'application/pdf',
  13.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Théologie Egyptienne',
  'importe',
  'spiritualite-raw',
  'Théologie Egyptienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Thèse_corps en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Thèse_corps en egypte ancienne.pdf',
  'Thèse_corps en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  62.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Thèse corps en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Thèse_corps en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Thèse_egyptologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Thèse_egyptologie.pdf',
  'Thèse_egyptologie.pdf',
  'pdf',
  'application/pdf',
  21.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  '',
  'Thèse egyptologie',
  'importe',
  'spiritualite-raw',
  'Thèse_egyptologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'theurgia-magica-tome-3-theurgie-des-36-arches-de-la-lumiere-divine_compress.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\theurgia-magica-tome-3-theurgie-des-36-arches-de-la-lumiere-divine_compress.pdf',
  'theurgia-magica-tome-3-theurgie-des-36-arches-de-la-lumiere-divine_compress.pdf',
  'pdf',
  'application/pdf',
  3.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'theurgia magica tome 3 theurgie des 36 arches de la lumiere divine compress',
  'importe',
  'spiritualite-raw',
  'theurgia-magica-tome-3-theurgie-des-36-arches-de-la-lumiere-divine_compress.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ThreeBooksofOccultPhilosophyorMagic_10001483.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ThreeBooksofOccultPhilosophyorMagic_10001483.pdf',
  'ThreeBooksofOccultPhilosophyorMagic_10001483.pdf',
  'pdf',
  'application/pdf',
  15.74,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'ThreeBooksofOccultPhilosophyorMagic 10001483',
  'importe',
  'spiritualite-raw',
  'ThreeBooksofOccultPhilosophyorMagic_10001483.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité Mystique sur l''hermétisme_Vitriol.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité Mystique sur l''hermétisme_Vitriol.docx',
  'Traité Mystique sur l''hermétisme_Vitriol.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité Mystique sur l''hermétisme Vitriol',
  'importe',
  'spiritualite-raw',
  'Traité Mystique sur l''hermétisme_Vitriol.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité mystique sur l''Homme-Dieu.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité mystique sur l''Homme-Dieu.docx',
  'Traité mystique sur l''Homme-Dieu.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité mystique sur l''Homme Dieu',
  'importe',
  'spiritualite-raw',
  'Traité mystique sur l''Homme-Dieu.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité sur l''arc-en-ciel.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité sur l''arc-en-ciel.docx',
  'Traité sur l''arc-en-ciel.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité sur l''arc en ciel',
  'importe',
  'spiritualite-raw',
  'Traité sur l''arc-en-ciel.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité sur le ministère de l''homme esprit.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité sur le ministère de l''homme esprit.docx',
  'Traité sur le ministère de l''homme esprit.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité sur le ministère de l''homme esprit',
  'importe',
  'spiritualite-raw',
  'Traité sur le ministère de l''homme esprit.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité sur les forces de saturne.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité sur les forces de saturne.docx',
  'Traité sur les forces de saturne.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité sur les forces de saturne',
  'importe',
  'spiritualite-raw',
  'Traité sur les forces de saturne.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Traité_ Temple Intérieur.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Traité_ Temple Intérieur.docx',
  'Traité_ Temple Intérieur.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Traité  Temple Intérieur',
  'importe',
  'spiritualite-raw',
  'Traité_ Temple Intérieur.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'voie_cathare.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\voie_cathare.pdf',
  'voie_cathare.pdf',
  'pdf',
  'application/pdf',
  0.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'voie cathare',
  'importe',
  'spiritualite-raw',
  'voie_cathare.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Yeshaouah et la Réintégration des Êtres.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Yeshaouah et la Réintégration des Êtres.docx',
  'Yeshaouah et la Réintégration des Êtres.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '',
  'Yeshaouah et la Réintégration des Êtres',
  'importe',
  'spiritualite-raw',
  'Yeshaouah et la Réintégration des Êtres.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_1.pdf',
  'Cours_1.pdf',
  'pdf',
  'application/pdf',
  0.93,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 1',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_10.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_10.pdf',
  'Cours_10.pdf',
  'pdf',
  'application/pdf',
  4.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 10',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_10.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_11.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_11.pdf',
  'Cours_11.pdf',
  'pdf',
  'application/pdf',
  1.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 11',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_11.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_12.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_12.pdf',
  'Cours_12.pdf',
  'pdf',
  'application/pdf',
  1.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 12',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_12.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_2.pdf',
  'Cours_2.pdf',
  'pdf',
  'application/pdf',
  1.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 2',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_3.pdf',
  'Cours_3.pdf',
  'pdf',
  'application/pdf',
  1.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 3',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_4.pdf',
  'Cours_4.pdf',
  'pdf',
  'application/pdf',
  0.61,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 4',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_5.pdf',
  'Cours_5.pdf',
  'pdf',
  'application/pdf',
  1.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 5',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_6.pdf',
  'Cours_6.pdf',
  'pdf',
  'application/pdf',
  0.88,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 6',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_7.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_7.pdf',
  'Cours_7.pdf',
  'pdf',
  'application/pdf',
  0.69,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 7',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_7.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_8.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_8.pdf',
  'Cours_8.pdf',
  'pdf',
  'application/pdf',
  1.56,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 8',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_8.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Cours_9.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Cours_9.pdf',
  'Cours_9.pdf',
  'pdf',
  'application/pdf',
  4.72,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Cours 9',
  'importe',
  'spiritualite-raw',
  'Aether\Cours_9.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether\Questionnaire cours 1-12.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Aether\Questionnaire cours 1-12.pdf',
  'Questionnaire cours 1-12.pdf',
  'pdf',
  'application/pdf',
  0.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Aether',
  'Questionnaire cours 1 12',
  'importe',
  'spiritualite-raw',
  'Aether\Questionnaire cours 1-12.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Chants grégoriens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Chants grégoriens.pdf',
  'Chants grégoriens.pdf',
  'pdf',
  'application/pdf',
  3.66,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Chants grégoriens',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Chants grégoriens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Convocation_Protocole Technicien modif.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Convocation_Protocole Technicien modif.docx',
  'Convocation_Protocole Technicien modif.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Convocation Protocole Technicien modif',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Convocation_Protocole Technicien modif.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Convocation_Protocole Technicien.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Convocation_Protocole Technicien.docx',
  'Convocation_Protocole Technicien.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Convocation Protocole Technicien',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Convocation_Protocole Technicien.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Coran.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Coran.pdf',
  'Coran.pdf',
  'pdf',
  'application/pdf',
  2.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Coran',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Coran.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\eglisescoccultes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\eglisescoccultes.pdf',
  'eglisescoccultes.pdf',
  'pdf',
  'application/pdf',
  1.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'eglisescoccultes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\eglisescoccultes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\En Regardant le Mystère.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\En Regardant le Mystère.doc',
  'En Regardant le Mystère.doc',
  'doc',
  'application/msword',
  0.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'En Regardant le Mystère',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\En Regardant le Mystère.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\etrehumain.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\etrehumain.pdf',
  'etrehumain.pdf',
  'pdf',
  'application/pdf',
  3.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'etrehumain',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\etrehumain.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Evangile de Thomas.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Evangile de Thomas.pdf',
  'Evangile de Thomas.pdf',
  'pdf',
  'application/pdf',
  0.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Evangile de Thomas',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Evangile de Thomas.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Feng.Shui.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Feng.Shui.pdf',
  'Feng.Shui.pdf',
  'pdf',
  'application/pdf',
  22.47,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Feng.Shui',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Feng.Shui.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm004.pdf',
  'fm004.pdf',
  'pdf',
  'application/pdf',
  0.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm004',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm029.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm029.pdf',
  'fm029.pdf',
  'pdf',
  'application/pdf',
  9.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm029',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm029.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm043.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm043.pdf',
  'fm043.pdf',
  'pdf',
  'application/pdf',
  0.75,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm043',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm043.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm046.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm046.pdf',
  'fm046.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm046',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm046.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm056.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm056.pdf',
  'fm056.pdf',
  'pdf',
  'application/pdf',
  8.53,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm056',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm056.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm072.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm072.pdf',
  'fm072.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm072',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm072.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\fm094.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\fm094.pdf',
  'fm094.pdf',
  'pdf',
  'application/pdf',
  3.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'fm094',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\fm094.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\FRENCH-OKRC WEBSITE-bible de jefferson.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\FRENCH-OKRC WEBSITE-bible de jefferson.pdf',
  'FRENCH-OKRC WEBSITE-bible de jefferson.pdf',
  'pdf',
  'application/pdf',
  0.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'FRENCH OKRC WEBSITE bible de jefferson',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\FRENCH-OKRC WEBSITE-bible de jefferson.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Fulcanelli Les Demeures Philosophales.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Fulcanelli Les Demeures Philosophales.pdf',
  'Fulcanelli Les Demeures Philosophales.pdf',
  'pdf',
  'application/pdf',
  2.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Fulcanelli Les Demeures Philosophales',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Fulcanelli Les Demeures Philosophales.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Géométrie Sacrée.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Géométrie Sacrée.pdf',
  'Géométrie Sacrée.pdf',
  'pdf',
  'application/pdf',
  131.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Géométrie Sacrée',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Géométrie Sacrée.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GUEVELS.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GUEVELS.pdf',
  'GUEVELS.pdf',
  'pdf',
  'application/pdf',
  1.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'GUEVELS',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GUEVELS.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'pdf',
  'application/pdf',
  3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'H Spencer Lewis  Rosicrucian Manual  AMORC 1990',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\HEBREUX.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\HEBREUX.pdf',
  'HEBREUX.pdf',
  'pdf',
  'application/pdf',
  3.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'HEBREUX',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\HEBREUX.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\hommecorps.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\hommecorps.pdf',
  'hommecorps.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'hommecorps',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\hommecorps.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\INIT 1er_Protocole Technicien.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\INIT 1er_Protocole Technicien.docx',
  'INIT 1er_Protocole Technicien.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'INIT 1er Protocole Technicien',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\INIT 1er_Protocole Technicien.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\initieenaction.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\initieenaction.pdf',
  'initieenaction.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'initieenaction',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\initieenaction.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Kab num.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Kab num.pdf',
  'Kab num.pdf',
  'pdf',
  'application/pdf',
  7.71,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Kab num',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Kab num.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\kab001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\kab001.pdf',
  'kab001.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'kab001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\kab001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\KEC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\KEC.pdf',
  'KEC.pdf',
  'pdf',
  'application/pdf',
  1.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'KEC',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\KEC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Kempis Imitation du Christ.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Kempis Imitation du Christ.pdf',
  'Kempis Imitation du Christ.pdf',
  'pdf',
  'application/pdf',
  3.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Kempis Imitation du Christ',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Kempis Imitation du Christ.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\KLPRH.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\KLPRH.pdf',
  'KLPRH.pdf',
  'pdf',
  'application/pdf',
  10.5,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'KLPRH',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\KLPRH.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\KPRAT.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\KPRAT.pdf',
  'KPRAT.pdf',
  'pdf',
  'application/pdf',
  2.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'KPRAT',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\KPRAT.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\La Grande Rébellion.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\La Grande Rébellion.doc',
  'La Grande Rébellion.doc',
  'doc',
  'application/msword',
  0.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'La Grande Rébellion',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\La Grande Rébellion.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\La Révolution de BEL.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\La Révolution de BEL.doc',
  'La Révolution de BEL.doc',
  'doc',
  'application/msword',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'La Révolution de BEL',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\La Révolution de BEL.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LA SAGESSE DE L.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LA SAGESSE DE L.doc',
  'LA SAGESSE DE L.doc',
  'doc',
  'application/msword',
  0.34,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LA SAGESSE DE L',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LA SAGESSE DE L.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LCS.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LCS.pdf',
  'LCS.pdf',
  'pdf',
  'application/pdf',
  2.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LCS',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LCS.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LCSMBiographie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LCSMBiographie.pdf',
  'LCSMBiographie.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LCSMBiographie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LCSMBiographie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LDLC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LDLC.pdf',
  'LDLC.pdf',
  'pdf',
  'application/pdf',
  1.2,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LDLC',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LDLC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Le Mariage Parfait (sans images).doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Le Mariage Parfait (sans images).doc',
  'Le Mariage Parfait (sans images).doc',
  'doc',
  'application/msword',
  0.69,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Le Mariage Parfait (sans images)',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Le Mariage Parfait (sans images).doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'pdf',
  'application/pdf',
  14.73,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'les Symboles Secrets des Rosicruciens des 16e et 17e siecles',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LEXK.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LEXK.pdf',
  'LEXK.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LEXK',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LEXK.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Livre des Morts Tibetain.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Livre des Morts Tibetain.pdf',
  'Livre des Morts Tibetain.pdf',
  'pdf',
  'application/pdf',
  2.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Livre des Morts Tibetain',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Livre des Morts Tibetain.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\LLDN.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\LLDN.pdf',
  'LLDN.pdf',
  'pdf',
  'application/pdf',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'LLDN',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\LLDN.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'pdf',
  'application/pdf',
  0.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'manifesto nouvelles noces chymiques rosenkreutz',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Manuel runique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Manuel runique.pdf',
  'Manuel runique.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Manuel runique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Manuel runique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MED01.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MED01.pdf',
  'MED01.pdf',
  'pdf',
  'application/pdf',
  0.45,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'MED01',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MED01.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MED02.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MED02.pdf',
  'MED02.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'MED02',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MED02.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\nomesomar.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\nomesomar.pdf',
  'nomesomar.pdf',
  'pdf',
  'application/pdf',
  3.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'nomesomar',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\nomesomar.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\occ014.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\occ014.pdf',
  'occ014.pdf',
  'pdf',
  'application/pdf',
  3.83,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'occ014',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\occ014.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\occ023.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\occ023.pdf',
  'occ023.pdf',
  'pdf',
  'application/pdf',
  1.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'occ023',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\occ023.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Pierre_Cubique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Pierre_Cubique.pdf',
  'Pierre_Cubique.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Pierre Cubique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Pierre_Cubique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Planche passage_SI_11-2017.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Planche passage_SI_11-2017.docx',
  'Planche passage_SI_11-2017.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Planche passage SI 11 2017',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Planche passage_SI_11-2017.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Planche temps sacré.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Planche temps sacré.docx',
  'Planche temps sacré.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Planche temps sacré',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Planche temps sacré.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Planche_FONCTION TECHNICIEN Déf.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Planche_FONCTION TECHNICIEN Déf.docx',
  'Planche_FONCTION TECHNICIEN Déf.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Planche FONCTION TECHNICIEN Déf',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Planche_FONCTION TECHNICIEN Déf.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Planche_symbolisme nombre 10.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Planche_symbolisme nombre 10.docx',
  'Planche_symbolisme nombre 10.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Planche symbolisme nombre 10',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Planche_symbolisme nombre 10.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\problemes humains (rtf).rtf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\problemes humains (rtf).rtf',
  'problemes humains (rtf).rtf',
  'rtf',
  'application/octet-stream',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'problemes humains (rtf)',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\problemes humains (rtf).rtf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Psychologie Revolutionnaire (rtf).rtf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Psychologie Revolutionnaire (rtf).rtf',
  'Psychologie Revolutionnaire (rtf).rtf',
  'rtf',
  'application/octet-stream',
  0.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Psychologie Revolutionnaire (rtf)',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Psychologie Revolutionnaire (rtf).rtf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\RC 001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\RC 001.pdf',
  'RC 001.pdf',
  'pdf',
  'application/pdf',
  2.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'RC 001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\RC 001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\rc001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\rc001.pdf',
  'rc001.pdf',
  'pdf',
  'application/pdf',
  10.96,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'rc001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\rc001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\rc002.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\rc002.pdf',
  'rc002.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'rc002',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\rc002.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\rc007.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\rc007.pdf',
  'rc007.pdf',
  'pdf',
  'application/pdf',
  9.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'rc007',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\rc007.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\rc008.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\rc008.pdf',
  'rc008.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'rc008',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\rc008.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\rc009.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\rc009.pdf',
  'rc009.pdf',
  'pdf',
  'application/pdf',
  0.6,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'rc009',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\rc009.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\ResMahabharata.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\ResMahabharata.pdf',
  'ResMahabharata.pdf',
  'pdf',
  'application/pdf',
  0.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'ResMahabharata',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\ResMahabharata.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\scitotmar.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\scitotmar.pdf',
  'scitotmar.pdf',
  'pdf',
  'application/pdf',
  0.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'scitotmar',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\scitotmar.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\SDLK.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\SDLK.pdf',
  'SDLK.pdf',
  'pdf',
  'application/pdf',
  15.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'SDLK',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\SDLK.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\SURYA.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\SURYA.pdf',
  'SURYA.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'SURYA',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\SURYA.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tablettes_de_Toth.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tablettes_de_Toth.pdf',
  'Tablettes_de_Toth.pdf',
  'pdf',
  'application/pdf',
  0.96,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Tablettes de Toth',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tablettes_de_Toth.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\TECHNICIEN RC.xlsx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\TECHNICIEN RC.xlsx',
  'TECHNICIEN RC.xlsx',
  'xlsx',
  'application/octet-stream',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'TECHNICIEN RC',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\TECHNICIEN RC.xlsx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Textes_init 1eT déf.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Textes_init 1eT déf.docx',
  'Textes_init 1eT déf.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Textes init 1eT déf',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Textes_init 1eT déf.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Textes_init 1eT déf1.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Textes_init 1eT déf1.docx',
  'Textes_init 1eT déf1.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Textes init 1eT déf1',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Textes_init 1eT déf1.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Textes_init 1eT.docx',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Textes_init 1eT.docx',
  'Textes_init 1eT.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Textes init 1eT',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Textes_init 1eT.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tome1-Psychologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tome1-Psychologie.pdf',
  'Tome1-Psychologie.pdf',
  'pdf',
  'application/pdf',
  1.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Tome1 Psychologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tome1-Psychologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tome2-Psychologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tome2-Psychologie.pdf',
  'Tome2-Psychologie.pdf',
  'pdf',
  'application/pdf',
  1.36,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Tome2 Psychologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tome2-Psychologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tome3-Anthropologie-et-Symbolisme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tome3-Anthropologie-et-Symbolisme.pdf',
  'Tome3-Anthropologie-et-Symbolisme.pdf',
  'pdf',
  'application/pdf',
  1.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Tome3 Anthropologie et Symbolisme',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tome3-Anthropologie-et-Symbolisme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tome4-Kabbale-et-Christification.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tome4-Kabbale-et-Christification.pdf',
  'Tome4-Kabbale-et-Christification.pdf',
  'pdf',
  'application/pdf',
  1.37,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'BIBLIOTHEQUES',
  'Tome4 Kabbale et Christification',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tome4-Kabbale-et-Christification.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Tome5-Metaphysique-Gnostique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Tome5-Metaphysique-Gnostique.pdf',
  'Tome5-Metaphysique-Gnostique.pdf',
  'pdf',
  'application/pdf',
  1.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Tome5 Metaphysique Gnostique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Tome5-Metaphysique-Gnostique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Traité d''Alchimie Sexuelle.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Traité d''Alchimie Sexuelle.doc',
  'Traité d''Alchimie Sexuelle.doc',
  'doc',
  'application/msword',
  0.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Traité d''Alchimie Sexuelle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Traité d''Alchimie Sexuelle.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\USVE.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\USVE.pdf',
  'USVE.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'USVE',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\USVE.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\VIERGE DU CARMEN (rtf).rtf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\VIERGE DU CARMEN (rtf).rtf',
  'VIERGE DU CARMEN (rtf).rtf',
  'rtf',
  'application/octet-stream',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'VIERGE DU CARMEN (rtf)',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\VIERGE DU CARMEN (rtf).rtf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\VOCDFM.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\VOCDFM.pdf',
  'VOCDFM.pdf',
  'pdf',
  'application/pdf',
  2.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'VOCDFM',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\VOCDFM.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Yi-King.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Yi-King.pdf',
  'Yi-King.pdf',
  'pdf',
  'application/pdf',
  5.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES',
  'Yi King',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Yi-King.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1950 la revolution de bel.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1950 la revolution de bel.pdf',
  '1950 la revolution de bel.pdf',
  'pdf',
  'application/pdf',
  0.25,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1950 la revolution de bel',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1950 la revolution de bel.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1951 cours zodiacal.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1951 cours zodiacal.pdf',
  '1951 cours zodiacal.pdf',
  'pdf',
  'application/pdf',
  0.18,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1951 cours zodiacal',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1951 cours zodiacal.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1952 catechisme gnostique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1952 catechisme gnostique.pdf',
  '1952 catechisme gnostique.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1952 catechisme gnostique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1952 catechisme gnostique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1952 la livre de la vierge du carmel.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1952 la livre de la vierge du carmel.pdf',
  '1952 la livre de la vierge du carmel.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1952 la livre de la vierge du carmel',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1952 la livre de la vierge du carmel.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1953 les sept paroles.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1953 les sept paroles.pdf',
  '1953 les sept paroles.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1953 les sept paroles',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1953 les sept paroles.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1954 la rose ignee.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1954 la rose ignee.pdf',
  '1954 la rose ignee.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1954 la rose ignee',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1954 la rose ignee.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1954 manuel de magie pratique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1954 manuel de magie pratique.pdf',
  '1954 manuel de magie pratique.pdf',
  'pdf',
  'application/pdf',
  0.1,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1954 manuel de magie pratique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1954 manuel de magie pratique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1955 les mysteres du feu.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1955 les mysteres du feu.pdf',
  '1955 les mysteres du feu.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1955 les mysteres du feu',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1955 les mysteres du feu.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1955 les soucoupes volantes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1955 les soucoupes volantes.pdf',
  '1955 les soucoupes volantes.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1955 les soucoupes volantes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1955 les soucoupes volantes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1956 les mysteres majeurs.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1956 les mysteres majeurs.pdf',
  '1956 les mysteres majeurs.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1956 les mysteres majeurs',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1956 les mysteres majeurs.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1958 le magnus opus.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1958 le magnus opus.pdf',
  '1958 le magnus opus.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1958 le magnus opus',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1958 le magnus opus.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 la montagne de la juratena.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 la montagne de la juratena.pdf',
  '1959 la montagne de la juratena.pdf',
  'pdf',
  'application/pdf',
  0.07,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 la montagne de la juratena',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 la montagne de la juratena.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 le livre jaune.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 le livre jaune.pdf',
  '1959 le livre jaune.pdf',
  'pdf',
  'application/pdf',
  0.11,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 le livre jaune',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 le livre jaune.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 logos, mantras, theurgie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 logos, mantras, theurgie.pdf',
  '1959 logos, mantras, theurgie.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 logos, mantras, theurgie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 logos, mantras, theurgie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 notions fondamentales endocrinologie et criminologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 notions fondamentales endocrinologie et criminologie.pdf',
  '1959 notions fondamentales endocrinologie et criminologie.pdf',
  'pdf',
  'application/pdf',
  0.25,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 notions fondamentales endocrinologie et criminologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 notions fondamentales endocrinologie et criminologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 traite esoterique de theurgie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 traite esoterique de theurgie.pdf',
  '1959 traite esoterique de theurgie.pdf',
  'pdf',
  'application/pdf',
  0.07,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 traite esoterique de theurgie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 traite esoterique de theurgie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959 volonte christ.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959 volonte christ.pdf',
  '1959 volonte christ.pdf',
  'pdf',
  'application/pdf',
  0.14,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 volonte christ',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959 volonte christ.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1959_logos,_mantras,_theurgie[1].pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1959_logos,_mantras,_theurgie[1].pdf',
  '1959_logos,_mantras,_theurgie[1].pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1959 logos, mantras, theurgie[1]',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1959_logos,_mantras,_theurgie[1].pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1961 introduction a la gnose.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1961 introduction a la gnose.pdf',
  '1961 introduction a la gnose.pdf',
  'pdf',
  'application/pdf',
  0.1,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1961 introduction a la gnose',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1961 introduction a la gnose.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1961 le mariage parfait.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1961 le mariage parfait.pdf',
  '1961 le mariage parfait.pdf',
  'pdf',
  'application/pdf',
  0.61,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1961 le mariage parfait',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1961 le mariage parfait.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1962 les mysteres de la vie et de la mort.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1962 les mysteres de la vie et de la mort.pdf',
  '1962 les mysteres de la vie et de la mort.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1962 les mysteres de la vie et de la mort',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1962 les mysteres de la vie et de la mort.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1963 gnose au 20eme siecle ou messages de noel de 1952 a 1963.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1963 gnose au 20eme siecle ou messages de noel de 1952 a 1963.pdf',
  '1963 gnose au 20eme siecle ou messages de noel de 1952 a 1963.pdf',
  'pdf',
  'application/pdf',
  0.18,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1963 gnose au 20eme siecle ou messages de noel de 1952 a 1963',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1963 gnose au 20eme siecle ou messages de noel de 1952 a 1963.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1963 mariage divorce et tantrisme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1963 mariage divorce et tantrisme.pdf',
  '1963 mariage divorce et tantrisme.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1963 mariage divorce et tantrisme',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1963 mariage divorce et tantrisme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1964 la dissolution du moi.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1964 la dissolution du moi.pdf',
  '1964 la dissolution du moi.pdf',
  'pdf',
  'application/pdf',
  0.08,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1964 la dissolution du moi',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1964 la dissolution du moi.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1964 les vaisseaux cosmiques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1964 les vaisseaux cosmiques.pdf',
  '1964 les vaisseaux cosmiques.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1964 les vaisseaux cosmiques',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1964 les vaisseaux cosmiques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1965 la science de la musique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1965 la science de la musique.pdf',
  '1965 la science de la musique.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1965 la science de la musique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1965 la science de la musique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1965 le livre des morts.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1965 le livre des morts.pdf',
  '1965 le livre des morts.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1965 le livre des morts',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1965 le livre des morts.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1967 le collier du bouddha.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1967 le collier du bouddha.pdf',
  '1967 le collier du bouddha.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1967 le collier du bouddha',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1967 le collier du bouddha.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1967_le_collier_du_bouddha.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1967_le_collier_du_bouddha.pdf',
  '1967_le_collier_du_bouddha.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1967 le collier du bouddha',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1967_le_collier_du_bouddha.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1968 les corps solaires.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1968 les corps solaires.pdf',
  '1968 les corps solaires.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1968 les corps solaires',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1968 les corps solaires.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1969 cours esoterique de kabbale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1969 cours esoterique de kabbale.pdf',
  '1969 cours esoterique de kabbale.pdf',
  'pdf',
  'application/pdf',
  0.19,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1969 cours esoterique de kabbale',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1969 cours esoterique de kabbale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1969 cours esoterique de magie runique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1969 cours esoterique de magie runique.pdf',
  '1969 cours esoterique de magie runique.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1969 cours esoterique de magie runique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1969 cours esoterique de magie runique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1969 mon retour au tibet.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1969 mon retour au tibet.pdf',
  '1969 mon retour au tibet.pdf',
  'pdf',
  'application/pdf',
  0.35,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1969 mon retour au tibet',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1969 mon retour au tibet.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1970 au-dela de la mort.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1970 au-dela de la mort.pdf',
  '1970 au-dela de la mort.pdf',
  'pdf',
  'application/pdf',
  0.14,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1970 au dela de la mort',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1970 au-dela de la mort.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1970-Le-parsifal-Devoile.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1970-Le-parsifal-Devoile.pdf',
  '1970-Le-parsifal-Devoile.pdf',
  'pdf',
  'application/pdf',
  1.1,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1970 Le parsifal Devoile',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1970-Le-parsifal-Devoile.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1972 en regardant le mystere.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1972 en regardant le mystere.pdf',
  '1972 en regardant le mystere.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1972 en regardant le mystere',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1972 en regardant le mystere.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1972 les trois montagnes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1972 les trois montagnes.pdf',
  '1972 les trois montagnes.pdf',
  'pdf',
  'application/pdf',
  0.51,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1972 les trois montagnes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1972 les trois montagnes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1973 enfer, diable, karma.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1973 enfer, diable, karma.pdf',
  '1973 enfer, diable, karma.pdf',
  'pdf',
  'application/pdf',
  0.55,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1973 enfer, diable, karma',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1973 enfer, diable, karma.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1973 magie christique azteque.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1973 magie christique azteque.pdf',
  '1973 magie christique azteque.pdf',
  'pdf',
  'application/pdf',
  0.19,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1973 magie christique azteque',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1973 magie christique azteque.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1975 la grande rebellion.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1975 la grande rebellion.pdf',
  '1975 la grande rebellion.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1975 la grande rebellion',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1975 la grande rebellion.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1975 psychologie revolutionnaire.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1975 psychologie revolutionnaire.pdf',
  '1975 psychologie revolutionnaire.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1975 psychologie revolutionnaire',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1975 psychologie revolutionnaire.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1978 anthropologie gnostique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1978 anthropologie gnostique.pdf',
  '1978 anthropologie gnostique.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1978 anthropologie gnostique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1978 anthropologie gnostique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1980 pour le petit nombre.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1980 pour le petit nombre.pdf',
  '1980 pour le petit nombre.pdf',
  'pdf',
  'application/pdf',
  0.08,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1980 pour le petit nombre',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1980 pour le petit nombre.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1983 la pistis sophia devoilee.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1983 la pistis sophia devoilee.pdf',
  '1983 la pistis sophia devoilee.pdf',
  'pdf',
  'application/pdf',
  0.9,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1983 la pistis sophia devoilee',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1983 la pistis sophia devoilee.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1985 la revolution de la dialectique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1985 la revolution de la dialectique.pdf',
  '1985 la revolution de la dialectique.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1985 la revolution de la dialectique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1985 la revolution de la dialectique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1985 les ecoles esoteriques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1985 les ecoles esoteriques.pdf',
  '1985 les ecoles esoteriques.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1985 les ecoles esoteriques',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1985 les ecoles esoteriques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1985_les_ecoles_esoteriques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1985_les_ecoles_esoteriques.pdf',
  '1985_les_ecoles_esoteriques.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1985 les ecoles esoteriques',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1985_les_ecoles_esoteriques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\1990 la transformation radicale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\1990 la transformation radicale.pdf',
  '1990 la transformation radicale.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  '1990 la transformation radicale',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\1990 la transformation radicale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\GNOSE\Alchimie_Sexuelle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\GNOSE\Alchimie_Sexuelle.pdf',
  'Alchimie_Sexuelle.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Gnose',
  'BIBLIOTHEQUES\GNOSE',
  'Alchimie Sexuelle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\GNOSE\Alchimie_Sexuelle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\12 Upanishads.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\12 Upanishads.pdf',
  '12 Upanishads.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  '12 Upanishads',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\12 Upanishads.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ALCH-TOUT LE GRAND ŒUVRE PHOTOGRAPHIÉ.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ALCH-TOUT LE GRAND ŒUVRE PHOTOGRAPHIÉ.pdf',
  'ALCH-TOUT LE GRAND ŒUVRE PHOTOGRAPHIÉ.pdf',
  'pdf',
  'application/pdf',
  1.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ALCH TOUT LE GRAND ŒUVRE PHOTOGRAPHIÉ',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ALCH-TOUT LE GRAND ŒUVRE PHOTOGRAPHIÉ.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\amadoumartinisme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\amadoumartinisme.pdf',
  'amadoumartinisme.pdf',
  'pdf',
  'application/pdf',
  2.74,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'amadoumartinisme',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\amadoumartinisme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ambelain_Robert_-_Rituelie_Operative_de_l_alliance_de_l_Adeptus_Minor_5-6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ambelain_Robert_-_Rituelie_Operative_de_l_alliance_de_l_Adeptus_Minor_5-6.pdf',
  'Ambelain_Robert_-_Rituelie_Operative_de_l_alliance_de_l_Adeptus_Minor_5-6.pdf',
  'pdf',
  'application/pdf',
  1.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Ambelain Robert   Rituelie Operative de l alliance de l Adeptus Minor 5 6',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ambelain_Robert_-_Rituelie_Operative_de_l_alliance_de_l_Adeptus_Minor_5-6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\annalesmartinistes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\annalesmartinistes.pdf',
  'annalesmartinistes.pdf',
  'pdf',
  'application/pdf',
  0.18,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'annalesmartinistes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\annalesmartinistes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH1.pdf',
  'AOH1.pdf',
  'pdf',
  'application/pdf',
  51.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'AOH1',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH2.pdf',
  'AOH2.pdf',
  'pdf',
  'application/pdf',
  41.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'AOH2',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\AOH2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Arnaud_Desjardins-La_Voie_et_ses_Pieges.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Arnaud_Desjardins-La_Voie_et_ses_Pieges.pdf',
  'Arnaud_Desjardins-La_Voie_et_ses_Pieges.pdf',
  'pdf',
  'application/pdf',
  0.52,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Arnaud Desjardins La Voie et ses Pieges',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Arnaud_Desjardins-La_Voie_et_ses_Pieges.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Bhagavad-Gita.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Bhagavad-Gita.pdf',
  'Bhagavad-Gita.pdf',
  'pdf',
  'application/pdf',
  0.47,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Bhagavad Gita',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Bhagavad-Gita.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Blavatsky Isis Devoilee.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Blavatsky Isis Devoilee.pdf',
  'Blavatsky Isis Devoilee.pdf',
  'pdf',
  'application/pdf',
  10.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Blavatsky Isis Devoilee',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Blavatsky Isis Devoilee.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Boehme-Quarante-questions-sur-l-origine-l-essen.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Boehme-Quarante-questions-sur-l-origine-l-essen.pdf',
  'Boehme-Quarante-questions-sur-l-origine-l-essen.pdf',
  'pdf',
  'application/pdf',
  18.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Boehme Quarante questions sur l origine l essen',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Boehme-Quarante-questions-sur-l-origine-l-essen.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Cantique des cantiques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Cantique des cantiques.pdf',
  'Cantique des cantiques.pdf',
  'pdf',
  'application/pdf',
  0.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Cantique des cantiques',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Cantique des cantiques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAINE D''UNION.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAINE D''UNION.pdf',
  'CHAINE D''UNION.pdf',
  'pdf',
  'application/pdf',
  0.84,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'CHAINE D''UNION',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAINE D''UNION.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAKINI.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAKINI.pdf',
  'CHAKINI.pdf',
  'pdf',
  'application/pdf',
  0.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'CHAKINI',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\CHAKINI.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr017.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr017.pdf',
  'chr017.pdf',
  'pdf',
  'application/pdf',
  0.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'chr017',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr017.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr043.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr043.pdf',
  'chr043.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'chr043',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\chr043.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\defmagie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\defmagie.pdf',
  'defmagie.pdf',
  'pdf',
  'application/pdf',
  0.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'defmagie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\defmagie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 2_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 2_Saint Martin.pdf',
  'des erreurs et vérité 2_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 2 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 2_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 3_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 3_Saint Martin.pdf',
  'des erreurs et vérité 3_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 3 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 3_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 4_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 4_Saint Martin.pdf',
  'des erreurs et vérité 4_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 4 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 4_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 5_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 5_Saint Martin.pdf',
  'des erreurs et vérité 5_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 5 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 5_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 6_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 6_Saint Martin.pdf',
  'des erreurs et vérité 6_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 6 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 6_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 7_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 7_Saint Martin.pdf',
  'des erreurs et vérité 7_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 7 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 7_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 8_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 8_Saint Martin.pdf',
  'des erreurs et vérité 8_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 8 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 8_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 9_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 9_Saint Martin.pdf',
  'des erreurs et vérité 9_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.27,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité 9 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité 9_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité10_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité10_Saint Martin.pdf',
  'des erreurs et vérité10_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  2.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérité10 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérité10_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérités1_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérités1_Saint Martin.pdf',
  'des erreurs et vérités1_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'des erreurs et vérités1 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\des erreurs et vérités1_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div004.pdf',
  'div004.pdf',
  'pdf',
  'application/pdf',
  18.76,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'div004',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div012.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div012.pdf',
  'div012.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'div012',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\div012.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ecce_Homo_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ecce_Homo_Saint Martin.pdf',
  'Ecce_Homo_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  0.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Ecce Homo Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Ecce_Homo_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ENESUB.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ENESUB.pdf',
  'ENESUB.pdf',
  'pdf',
  'application/pdf',
  8.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ENESUB',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ENESUB.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Enseignement du Bouddha.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Enseignement du Bouddha.pdf',
  'Enseignement du Bouddha.pdf',
  'pdf',
  'application/pdf',
  31.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Enseignement du Bouddha',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Enseignement du Bouddha.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Essai sur l''apocalypse.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Essai sur l''apocalypse.pdf',
  'Essai sur l''apocalypse.pdf',
  'pdf',
  'application/pdf',
  0.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Essai sur l''apocalypse',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Essai sur l''apocalypse.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf',
  'pdf',
  'application/pdf',
  3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'H Spencer Lewis  Rosicrucian Manual  AMORC 1990',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\H-Spencer-Lewis--Rosicrucian-Manual--AMORC-1990.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir1_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir1_Saint Martin.pdf',
  'Homme-de-desir1_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Homme de desir1 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir1_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir2_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir2_Saint Martin.pdf',
  'Homme-de-desir2_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  0.45,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Homme de desir2 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Homme-de-desir2_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\initieenaction.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\initieenaction.pdf',
  'initieenaction.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'initieenaction',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\initieenaction.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kab num.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kab num.pdf',
  'Kab num.pdf',
  'pdf',
  'application/pdf',
  7.71,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Kab num',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kab num.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\kab001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\kab001.pdf',
  'kab001.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'kab001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\kab001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KEC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KEC.pdf',
  'KEC.pdf',
  'pdf',
  'application/pdf',
  1.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'KEC',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KEC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kempis Imitation du Christ.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kempis Imitation du Christ.pdf',
  'Kempis Imitation du Christ.pdf',
  'pdf',
  'application/pdf',
  3.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Kempis Imitation du Christ',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Kempis Imitation du Christ.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KLPRH.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KLPRH.pdf',
  'KLPRH.pdf',
  'pdf',
  'application/pdf',
  10.5,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'KLPRH',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KLPRH.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KPRAT.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KPRAT.pdf',
  'KPRAT.pdf',
  'pdf',
  'application/pdf',
  2.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'KPRAT',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\KPRAT.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCS.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCS.pdf',
  'LCS.pdf',
  'pdf',
  'application/pdf',
  2.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'LCS',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCS.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCSMBiographie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCSMBiographie.pdf',
  'LCSMBiographie.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'LCSMBiographie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LCSMBiographie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LDLC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LDLC.pdf',
  'LDLC.pdf',
  'pdf',
  'application/pdf',
  1.2,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'LDLC',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LDLC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile1_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile1_Saint Martin.pdf',
  'le crocodile1_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  2.99,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le crocodile1 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile1_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile2_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile2_Saint Martin.pdf',
  'le crocodile2_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  3.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le crocodile2 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile2_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile3_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile3_Saint Martin.pdf',
  'le crocodile3_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  3.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le crocodile3 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile3_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile4_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile4_Saint Martin.pdf',
  'le crocodile4_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  0.27,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le crocodile4 Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le crocodile4_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme1.pdf',
  'le nouvel homme1.pdf',
  'pdf',
  'application/pdf',
  4.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le nouvel homme1',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme2.pdf',
  'le nouvel homme2.pdf',
  'pdf',
  'application/pdf',
  3.94,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le nouvel homme2',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme3.pdf',
  'le nouvel homme3.pdf',
  'pdf',
  'application/pdf',
  4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'le nouvel homme3',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\le nouvel homme3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Le_Martinisme_Contemporain_Robert_Ambelain.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Le_Martinisme_Contemporain_Robert_Ambelain.pdf',
  'Le_Martinisme_Contemporain_Robert_Ambelain.pdf',
  'pdf',
  'application/pdf',
  0.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Le Martinisme Contemporain Robert Ambelain',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Le_Martinisme_Contemporain_Robert_Ambelain.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\leconslyon.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\leconslyon.pdf',
  'leconslyon.pdf',
  'pdf',
  'application/pdf',
  0.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'leconslyon',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\leconslyon.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf',
  'pdf',
  'application/pdf',
  14.73,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'les Symboles Secrets des Rosicruciens des 16e et 17e siecles',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\les_Symboles_Secrets_des_Rosicruciens_des_16e_et_17e_siecles.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LEXK.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LEXK.pdf',
  'LEXK.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'LEXK',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LEXK.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Livre des Morts Tibetain.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Livre des Morts Tibetain.pdf',
  'Livre des Morts Tibetain.pdf',
  'pdf',
  'application/pdf',
  2.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Livre des Morts Tibetain',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Livre des Morts Tibetain.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LLDN.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LLDN.pdf',
  'LLDN.pdf',
  'pdf',
  'application/pdf',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'LLDN',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\LLDN.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf',
  'pdf',
  'application/pdf',
  0.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'manifesto nouvelles noces chymiques rosenkreutz',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\manifesto-nouvelles-noces-chymiques-rosenkreutz.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Manuel runique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Manuel runique.pdf',
  'Manuel runique.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Manuel runique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Manuel runique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart002.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart002.pdf',
  'mart002.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart002',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart002.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart023.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart023.pdf',
  'mart023.pdf',
  'pdf',
  'application/pdf',
  1.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart023',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart023.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart046.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart046.pdf',
  'mart046.pdf',
  'pdf',
  'application/pdf',
  0.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart046',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart046.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart047.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart047.pdf',
  'mart047.pdf',
  'pdf',
  'application/pdf',
  17.77,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart047',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart047.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart048.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart048.pdf',
  'mart048.pdf',
  'pdf',
  'application/pdf',
  12.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart048',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart048.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart050.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart050.pdf',
  'mart050.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart050',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart050.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart051.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart051.pdf',
  'mart051.pdf',
  'pdf',
  'application/pdf',
  1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart051',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart051.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart053.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart053.pdf',
  'mart053.pdf',
  'pdf',
  'application/pdf',
  6.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart053',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart053.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart056.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart056.pdf',
  'mart056.pdf',
  'pdf',
  'application/pdf',
  3.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'mart056',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\mart056.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED01.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED01.pdf',
  'MED01.pdf',
  'pdf',
  'application/pdf',
  0.45,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'MED01',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED01.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED02.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED02.pdf',
  'MED02.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'MED02',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\MED02.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Nombres_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Nombres_Saint Martin.pdf',
  'Nombres_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  5.74,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Nombres Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Nombres_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ014.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ014.pdf',
  'occ014.pdf',
  'pdf',
  'application/pdf',
  3.83,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'occ014',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ014.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ023.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ023.pdf',
  'occ023.pdf',
  'pdf',
  'application/pdf',
  1.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'occ023',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\occ023.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordredutemple.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordredutemple.pdf',
  'ordredutemple.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ordredutemple',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordredutemple.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordremartiniste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordremartiniste.pdf',
  'ordremartiniste.pdf',
  'pdf',
  'application/pdf',
  1.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ordremartiniste',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ordremartiniste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\OrdreMartinisteInitiatiquelégende.doc',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\OrdreMartinisteInitiatiquelégende.doc',
  'OrdreMartinisteInitiatiquelégende.doc',
  'doc',
  'application/msword',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'OrdreMartinisteInitiatiquelégende',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\OrdreMartinisteInitiatiquelégende.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Papus_La_Science_des_Nombres.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Papus_La_Science_des_Nombres.pdf',
  'Papus_La_Science_des_Nombres.pdf',
  'pdf',
  'application/pdf',
  1.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Papus La Science des Nombres',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Papus_La_Science_des_Nombres.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Paracelse-Le_tresor_des_tresors_des_Alchimistes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Paracelse-Le_tresor_des_tresors_des_Alchimistes.pdf',
  'Paracelse-Le_tresor_des_tresors_des_Alchimistes.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Paracelse Le tresor des tresors des Alchimistes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Paracelse-Le_tresor_des_tresors_des_Alchimistes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Pierre_Cubique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Pierre_Cubique.pdf',
  'Pierre_Cubique.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Pierre Cubique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Pierre_Cubique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\RC 001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\RC 001.pdf',
  'RC 001.pdf',
  'pdf',
  'application/pdf',
  2.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'RC 001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\RC 001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc001.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc001.pdf',
  'rc001.pdf',
  'pdf',
  'application/pdf',
  10.96,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'rc001',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc001.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc002.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc002.pdf',
  'rc002.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'rc002',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc002.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc007.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc007.pdf',
  'rc007.pdf',
  'pdf',
  'application/pdf',
  9.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'rc007',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc007.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc008.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc008.pdf',
  'rc008.pdf',
  'pdf',
  'application/pdf',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'rc008',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc008.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc009.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc009.pdf',
  'rc009.pdf',
  'pdf',
  'application/pdf',
  0.6,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'rc009',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\rc009.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ResMahabharata.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ResMahabharata.pdf',
  'ResMahabharata.pdf',
  'pdf',
  'application/pdf',
  0.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ResMahabharata',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ResMahabharata.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ritmart.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ritmart.pdf',
  'ritmart.pdf',
  'pdf',
  'application/pdf',
  1.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'ritmart',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\ritmart.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SCIENCEMARTINISTE.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SCIENCEMARTINISTE.pdf',
  'SCIENCEMARTINISTE.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'SCIENCEMARTINISTE',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SCIENCEMARTINISTE.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\scitotmar.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\scitotmar.pdf',
  'scitotmar.pdf',
  'pdf',
  'application/pdf',
  0.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'scitotmar',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\scitotmar.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SDLK.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SDLK.pdf',
  'SDLK.pdf',
  'pdf',
  'application/pdf',
  15.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'SDLK',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SDLK.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Sepher Yetsirah.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Sepher Yetsirah.pdf',
  'Sepher Yetsirah.pdf',
  'pdf',
  'application/pdf',
  1.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Sepher Yetsirah',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Sepher Yetsirah.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Survivances-Templieres.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Survivances-Templieres.pdf',
  'Survivances-Templieres.pdf',
  'pdf',
  'application/pdf',
  0.52,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Survivances Templieres',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Survivances-Templieres.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SURYA.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SURYA.pdf',
  'SURYA.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'SURYA',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\SURYA.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tablettes_de_Toth.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tablettes_de_Toth.pdf',
  'Tablettes_de_Toth.pdf',
  'pdf',
  'application/pdf',
  0.96,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tablettes de Toth',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tablettes_de_Toth.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\temp006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\temp006.pdf',
  'temp006.pdf',
  'pdf',
  'application/pdf',
  18.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'temp006',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\temp006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Temples Elus Cohens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Temples Elus Cohens.pdf',
  'Temples Elus Cohens.pdf',
  'pdf',
  'application/pdf',
  2.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Temples Elus Cohens',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Temples Elus Cohens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome1-Psychologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome1-Psychologie.pdf',
  'Tome1-Psychologie.pdf',
  'pdf',
  'application/pdf',
  1.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tome1 Psychologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome1-Psychologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome2-Psychologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome2-Psychologie.pdf',
  'Tome2-Psychologie.pdf',
  'pdf',
  'application/pdf',
  1.36,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tome2 Psychologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome2-Psychologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome3-Anthropologie-et-Symbolisme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome3-Anthropologie-et-Symbolisme.pdf',
  'Tome3-Anthropologie-et-Symbolisme.pdf',
  'pdf',
  'application/pdf',
  1.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tome3 Anthropologie et Symbolisme',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome3-Anthropologie-et-Symbolisme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome4-Kabbale-et-Christification.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome4-Kabbale-et-Christification.pdf',
  'Tome4-Kabbale-et-Christification.pdf',
  'pdf',
  'application/pdf',
  1.37,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tome4 Kabbale et Christification',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome4-Kabbale-et-Christification.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome5-Metaphysique-Gnostique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome5-Metaphysique-Gnostique.pdf',
  'Tome5-Metaphysique-Gnostique.pdf',
  'pdf',
  'application/pdf',
  1.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'Tome5 Metaphysique Gnostique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\Tome5-Metaphysique-Gnostique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\traditiondufeu.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\traditiondufeu.pdf',
  'traditiondufeu.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'traditiondufeu',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\traditiondufeu.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\TraiteDesNombres_Saint Martin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\TraiteDesNombres_Saint Martin.pdf',
  'TraiteDesNombres_Saint Martin.pdf',
  'pdf',
  'application/pdf',
  1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'TraiteDesNombres Saint Martin',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\TraiteDesNombres_Saint Martin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\USVE.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\USVE.pdf',
  'USVE.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'USVE',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\USVE.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\VOCDFM.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\VOCDFM.pdf',
  'VOCDFM.pdf',
  'pdf',
  'application/pdf',
  2.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE',
  'VOCDFM',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\MARTINISME_SPIRITUALITE\VOCDFM.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\1 Etat de Disciple dans le Nouvel Age (Volumes 1 et 2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\1 Etat de Disciple dans le Nouvel Age (Volumes 1 et 2).pdf',
  '1 Etat de Disciple dans le Nouvel Age (Volumes 1 et 2).pdf',
  'pdf',
  'application/pdf',
  4.61,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '1 Etat de Disciple dans le Nouvel Age (Volumes 1 et 2)',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\1 Etat de Disciple dans le Nouvel Age (Volumes 1 et 2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\10 IntroductionMathers.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\10 IntroductionMathers.pdf',
  '10 IntroductionMathers.pdf',
  'pdf',
  'application/pdf',
  0.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '10 IntroductionMathers',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\10 IntroductionMathers.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\11 Ivanoff Mikhaël - Anges et l''arbre de vie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\11 Ivanoff Mikhaël - Anges et l''arbre de vie.pdf',
  '11 Ivanoff Mikhaël - Anges et l''arbre de vie.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '11 Ivanoff Mikhaël   Anges et l''arbre de vie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\11 Ivanoff Mikhaël - Anges et l''arbre de vie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\12 Ivanoff Mikhaël - Approche de la Cité céleste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\12 Ivanoff Mikhaël - Approche de la Cité céleste.pdf',
  '12 Ivanoff Mikhaël - Approche de la Cité céleste.pdf',
  'pdf',
  'application/pdf',
  7.61,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '12 Ivanoff Mikhaël   Approche de la Cité céleste',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\12 Ivanoff Mikhaël - Approche de la Cité céleste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\13 Ivanoff Mikhaël - Au Commencement était le Verbe.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\13 Ivanoff Mikhaël - Au Commencement était le Verbe.pdf',
  '13 Ivanoff Mikhaël - Au Commencement était le Verbe.pdf',
  'pdf',
  'application/pdf',
  17.97,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '13 Ivanoff Mikhaël   Au Commencement était le Verbe',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\13 Ivanoff Mikhaël - Au Commencement était le Verbe.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\14 Ivanoff Mikhaël - Centres et corps subtil.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\14 Ivanoff Mikhaël - Centres et corps subtil.pdf',
  '14 Ivanoff Mikhaël - Centres et corps subtil.pdf',
  'pdf',
  'application/pdf',
  13.9,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '14 Ivanoff Mikhaël   Centres et corps subtil',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\14 Ivanoff Mikhaël - Centres et corps subtil.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\15 Ivanoff Mikhaël - Création artistique et création spirituelle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\15 Ivanoff Mikhaël - Création artistique et création spirituelle.pdf',
  '15 Ivanoff Mikhaël - Création artistique et création spirituelle.pdf',
  'pdf',
  'application/pdf',
  8.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '15 Ivanoff Mikhaël   Création artistique et création spirituelle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\15 Ivanoff Mikhaël - Création artistique et création spirituelle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\16 Ivanoff Mikhaël - En esprit et en vérité.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\16 Ivanoff Mikhaël - En esprit et en vérité.pdf',
  '16 Ivanoff Mikhaël - En esprit et en vérité.pdf',
  'pdf',
  'application/pdf',
  7.84,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '16 Ivanoff Mikhaël   En esprit et en vérité',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\16 Ivanoff Mikhaël - En esprit et en vérité.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\17 Ivanoff Mikhaël - Exercices sur le soleil.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\17 Ivanoff Mikhaël - Exercices sur le soleil.pdf',
  '17 Ivanoff Mikhaël - Exercices sur le soleil.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '17 Ivanoff Mikhaël   Exercices sur le soleil',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\17 Ivanoff Mikhaël - Exercices sur le soleil.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\18 Ivanoff Mikhaël - Harmonie et santé.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\18 Ivanoff Mikhaël - Harmonie et santé.pdf',
  '18 Ivanoff Mikhaël - Harmonie et santé.pdf',
  'pdf',
  'application/pdf',
  7.87,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '18 Ivanoff Mikhaël   Harmonie et santé',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\18 Ivanoff Mikhaël - Harmonie et santé.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\19 Ivanoff Mikhaël - Hommage au Maître Peter Deunov.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\19 Ivanoff Mikhaël - Hommage au Maître Peter Deunov.pdf',
  '19 Ivanoff Mikhaël - Hommage au Maître Peter Deunov.pdf',
  'pdf',
  'application/pdf',
  6.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '19 Ivanoff Mikhaël   Hommage au Maître Peter Deunov',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\19 Ivanoff Mikhaël - Hommage au Maître Peter Deunov.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\2 Aïvanhov Mikhaël - De l''homme à Dieu.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\2 Aïvanhov Mikhaël - De l''homme à Dieu.pdf',
  '2 Aïvanhov Mikhaël - De l''homme à Dieu.pdf',
  'pdf',
  'application/pdf',
  2.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '2 Aïvanhov Mikhaël   De l''homme à Dieu',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\2 Aïvanhov Mikhaël - De l''homme à Dieu.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\20 Ivanoff Mikhaël - Hrani yoga Le sens alchimique et magique de la nutrition.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\20 Ivanoff Mikhaël - Hrani yoga Le sens alchimique et magique de la nutrition.pdf',
  '20 Ivanoff Mikhaël - Hrani yoga Le sens alchimique et magique de la nutrition.pdf',
  'pdf',
  'application/pdf',
  11.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '20 Ivanoff Mikhaël   Hrani yoga Le sens alchimique et magique de la nutrition',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\20 Ivanoff Mikhaël - Hrani yoga Le sens alchimique et magique de la nutrition.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\21 Ivanoff Mikhaël - La balance cosmique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\21 Ivanoff Mikhaël - La balance cosmique.pdf',
  '21 Ivanoff Mikhaël - La balance cosmique.pdf',
  'pdf',
  'application/pdf',
  10.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '21 Ivanoff Mikhaël   La balance cosmique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\21 Ivanoff Mikhaël - La balance cosmique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\22 Ivanoff Mikhaël - La clef essentielle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\22 Ivanoff Mikhaël - La clef essentielle.pdf',
  '22 Ivanoff Mikhaël - La clef essentielle.pdf',
  'pdf',
  'application/pdf',
  18.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '22 Ivanoff Mikhaël   La clef essentielle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\22 Ivanoff Mikhaël - La clef essentielle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\23 Ivanoff Mikhaël - La deuxième naissance.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\23 Ivanoff Mikhaël - La deuxième naissance.pdf',
  '23 Ivanoff Mikhaël - La deuxième naissance.pdf',
  'pdf',
  'application/pdf',
  15.52,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '23 Ivanoff Mikhaël   La deuxième naissance',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\23 Ivanoff Mikhaël - La deuxième naissance.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\24 Ivanoff Mikhaël - La foi qui transporte les montagnes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\24 Ivanoff Mikhaël - La foi qui transporte les montagnes.pdf',
  '24 Ivanoff Mikhaël - La foi qui transporte les montagnes.pdf',
  'pdf',
  'application/pdf',
  10.53,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '24 Ivanoff Mikhaël   La foi qui transporte les montagnes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\24 Ivanoff Mikhaël - La foi qui transporte les montagnes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\25 Ivanoff Mikhaël - La force sexuelle ou le Dragon ailé.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\25 Ivanoff Mikhaël - La force sexuelle ou le Dragon ailé.pdf',
  '25 Ivanoff Mikhaël - La force sexuelle ou le Dragon ailé.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '25 Ivanoff Mikhaël   La force sexuelle ou le Dragon ailé',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\25 Ivanoff Mikhaël - La force sexuelle ou le Dragon ailé.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\26 Ivanoff Mikhaël - La galvanoplastie spirituelle et l''avenir de l''humanité.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\26 Ivanoff Mikhaël - La galvanoplastie spirituelle et l''avenir de l''humanité.pdf',
  '26 Ivanoff Mikhaël - La galvanoplastie spirituelle et l''avenir de l''humanité.pdf',
  'pdf',
  'application/pdf',
  9.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '26 Ivanoff Mikhaël   La galvanoplastie spirituelle et l''avenir de l''humanité',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\26 Ivanoff Mikhaël - La galvanoplastie spirituelle et l''avenir de l''humanité.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\27 Ivanoff Mikhaël - La liberté, victoire de l''esprit.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\27 Ivanoff Mikhaël - La liberté, victoire de l''esprit.pdf',
  '27 Ivanoff Mikhaël - La liberté, victoire de l''esprit.pdf',
  'pdf',
  'application/pdf',
  6.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '27 Ivanoff Mikhaël   La liberté, victoire de l''esprit',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\27 Ivanoff Mikhaël - La liberté, victoire de l''esprit.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\28 Ivanoff Mikhaël - La nouvelle religion Solaire et universelle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\28 Ivanoff Mikhaël - La nouvelle religion Solaire et universelle.pdf',
  '28 Ivanoff Mikhaël - La nouvelle religion Solaire et universelle.pdf',
  'pdf',
  'application/pdf',
  25.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '28 Ivanoff Mikhaël   La nouvelle religion Solaire et universelle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\28 Ivanoff Mikhaël - La nouvelle religion Solaire et universelle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\29 Ivanoff Mikhaël - La nouvelle terre.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\29 Ivanoff Mikhaël - La nouvelle terre.pdf',
  '29 Ivanoff Mikhaël - La nouvelle terre.pdf',
  'pdf',
  'application/pdf',
  14.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '29 Ivanoff Mikhaël   La nouvelle terre',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\29 Ivanoff Mikhaël - La nouvelle terre.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\3 Aïvanhov Mikhaël - La lumière, esprit vivant.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\3 Aïvanhov Mikhaël - La lumière, esprit vivant.pdf',
  '3 Aïvanhov Mikhaël - La lumière, esprit vivant.pdf',
  'pdf',
  'application/pdf',
  1.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '3 Aïvanhov Mikhaël   La lumière, esprit vivant',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\3 Aïvanhov Mikhaël - La lumière, esprit vivant.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\30 Ivanoff Mikhaël - La pédagogie initiatique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\30 Ivanoff Mikhaël - La pédagogie initiatique.pdf',
  '30 Ivanoff Mikhaël - La pédagogie initiatique.pdf',
  'pdf',
  'application/pdf',
  48.49,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '30 Ivanoff Mikhaël   La pédagogie initiatique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\30 Ivanoff Mikhaël - La pédagogie initiatique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\31 Ivanoff Mikhaël - La pierre philosophale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\31 Ivanoff Mikhaël - La pierre philosophale.pdf',
  '31 Ivanoff Mikhaël - La pierre philosophale.pdf',
  'pdf',
  'application/pdf',
  10.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '31 Ivanoff Mikhaël   La pierre philosophale',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\31 Ivanoff Mikhaël - La pierre philosophale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\32 Ivanoff Mikhaël - La sublime origine et but de la sexualité et de la force sexuelle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\32 Ivanoff Mikhaël - La sublime origine et but de la sexualité et de la force sexuelle.pdf',
  '32 Ivanoff Mikhaël - La sublime origine et but de la sexualité et de la force sexuelle.pdf',
  'pdf',
  'application/pdf',
  0.2,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '32 Ivanoff Mikhaël   La sublime origine et but de la sexualité et de la force sexuelle',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\32 Ivanoff Mikhaël - La sublime origine et but de la sexualité et de la force sexuelle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\33 Ivanoff Mikhaël - La voie du silence.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\33 Ivanoff Mikhaël - La voie du silence.pdf',
  '33 Ivanoff Mikhaël - La voie du silence.pdf',
  'pdf',
  'application/pdf',
  6.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '33 Ivanoff Mikhaël   La voie du silence',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\33 Ivanoff Mikhaël - La voie du silence.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\34 Ivanoff Mikhaël - L''amour plus grand que la foi - Copie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\34 Ivanoff Mikhaël - L''amour plus grand que la foi - Copie.pdf',
  '34 Ivanoff Mikhaël - L''amour plus grand que la foi - Copie.pdf',
  'pdf',
  'application/pdf',
  10.82,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '34 Ivanoff Mikhaël   L''amour plus grand que la foi   Copie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\34 Ivanoff Mikhaël - L''amour plus grand que la foi - Copie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\35 Ivanoff Mikhaël - L''amour plus grand que la foi.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\35 Ivanoff Mikhaël - L''amour plus grand que la foi.pdf',
  '35 Ivanoff Mikhaël - L''amour plus grand que la foi.pdf',
  'pdf',
  'application/pdf',
  10.82,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '35 Ivanoff Mikhaël   L''amour plus grand que la foi',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\35 Ivanoff Mikhaël - L''amour plus grand que la foi.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\36 Ivanoff Mikhaël - Le devoir d''être heureux.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\36 Ivanoff Mikhaël - Le devoir d''être heureux.pdf',
  '36 Ivanoff Mikhaël - Le devoir d''être heureux.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '36 Ivanoff Mikhaël   Le devoir d''être heureux',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\36 Ivanoff Mikhaël - Le devoir d''être heureux.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\37 Iwen Chris - Comment éveiller le soleil intérieur.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\37 Iwen Chris - Comment éveiller le soleil intérieur.pdf',
  '37 Iwen Chris - Comment éveiller le soleil intérieur.pdf',
  'pdf',
  'application/pdf',
  29.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '37 Iwen Chris   Comment éveiller le soleil intérieur',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\37 Iwen Chris - Comment éveiller le soleil intérieur.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\38 La_Vie_des_Maitres.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\38 La_Vie_des_Maitres.pdf',
  '38 La_Vie_des_Maitres.pdf',
  'pdf',
  'application/pdf',
  7.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '38 La Vie des Maitres',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\38 La_Vie_des_Maitres.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\39 Le Livre de Vie des Maitres Ascensionnes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\39 Le Livre de Vie des Maitres Ascensionnes.pdf',
  '39 Le Livre de Vie des Maitres Ascensionnes.pdf',
  'pdf',
  'application/pdf',
  1.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '39 Le Livre de Vie des Maitres Ascensionnes',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\39 Le Livre de Vie des Maitres Ascensionnes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\4 Aïvanhov Mikhaël - Les lois de la morale cosmique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\4 Aïvanhov Mikhaël - Les lois de la morale cosmique.pdf',
  '4 Aïvanhov Mikhaël - Les lois de la morale cosmique.pdf',
  'pdf',
  'application/pdf',
  1.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '4 Aïvanhov Mikhaël   Les lois de la morale cosmique',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\4 Aïvanhov Mikhaël - Les lois de la morale cosmique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\40 Le Mat Jean-François - La kabbale Symbolisme et astrologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\40 Le Mat Jean-François - La kabbale Symbolisme et astrologie.pdf',
  '40 Le Mat Jean-François - La kabbale Symbolisme et astrologie.pdf',
  'pdf',
  'application/pdf',
  0.95,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '40 Le Mat Jean François   La kabbale Symbolisme et astrologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\40 Le Mat Jean-François - La kabbale Symbolisme et astrologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\41 Lobsang Rampa_-_Les_Cles_du_Nirvana.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\41 Lobsang Rampa_-_Les_Cles_du_Nirvana.pdf',
  '41 Lobsang Rampa_-_Les_Cles_du_Nirvana.pdf',
  'pdf',
  'application/pdf',
  1.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '41 Lobsang Rampa   Les Cles du Nirvana',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\41 Lobsang Rampa_-_Les_Cles_du_Nirvana.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\42 Paulo_Coelho_-_L_alchimiste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\42 Paulo_Coelho_-_L_alchimiste.pdf',
  '42 Paulo_Coelho_-_L_alchimiste.pdf',
  'pdf',
  'application/pdf',
  0.74,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '42 Paulo Coelho   L alchimiste',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\42 Paulo_Coelho_-_L_alchimiste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\5 Autres Dimensions-Brochure_-_Les_Sept_Archanges_Majeurs.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\5 Autres Dimensions-Brochure_-_Les_Sept_Archanges_Majeurs.pdf',
  '5 Autres Dimensions-Brochure_-_Les_Sept_Archanges_Majeurs.pdf',
  'pdf',
  'application/pdf',
  1.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '5 Autres Dimensions Brochure   Les Sept Archanges Majeurs',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\5 Autres Dimensions-Brochure_-_Les_Sept_Archanges_Majeurs.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\6 Benz Inelia - Ascension Spirituelle 101.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\6 Benz Inelia - Ascension Spirituelle 101.pdf',
  '6 Benz Inelia - Ascension Spirituelle 101.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '6 Benz Inelia   Ascension Spirituelle 101',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\6 Benz Inelia - Ascension Spirituelle 101.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\7 Chiron Yves - Padre Pio le stigmatisé.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\7 Chiron Yves - Padre Pio le stigmatisé.pdf',
  '7 Chiron Yves - Padre Pio le stigmatisé.pdf',
  'pdf',
  'application/pdf',
  1.81,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '7 Chiron Yves   Padre Pio le stigmatisé',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\7 Chiron Yves - Padre Pio le stigmatisé.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\8 Des clefs pour l’astrologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\8 Des clefs pour l’astrologie.pdf',
  '8 Des clefs pour l’astrologie.pdf',
  'pdf',
  'application/pdf',
  8.83,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '8 Des clefs pour l’astrologie',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\8 Des clefs pour l’astrologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\9 ere-du-verseau.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\BIBLIOTHEQUES\Omram Mikhael Aivhanov\9 ere-du-verseau.pdf',
  '9 ere-du-verseau.pdf',
  'pdf',
  'application/pdf',
  0.5,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov',
  '9 ere du verseau',
  'importe',
  'spiritualite-raw',
  'BIBLIOTHEQUES\Omram Mikhael Aivhanov\9 ere-du-verseau.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\Chorale Kabye.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\Chorale Kabye.mp3',
  'Chorale Kabye.mp3',
  'mp3',
  'audio/mpeg',
  406.66,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye',
  'Chorale Kabye',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\Chorale Kabye.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  7.29,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  4.26,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  5.22,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  1.5,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  2.01,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  2.7,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  1.23,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  1.82,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  1.84,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  1.37,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'mp3',
  'audio/mpeg',
  0.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   13. Track 13',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 13. Track 13.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'mp3',
  'audio/mpeg',
  2.58,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   14. Track 14',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 14. Track 14.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'mp3',
  'audio/mpeg',
  1.58,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   15. Track 15',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 15. Track 15.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16_2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16_2.mp3',
  'Unknown Artist - Unknown Album - 16. Track 16_2.mp3',
  'mp3',
  'audio/mpeg',
  4.05,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   16. Track 16 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16_2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'mp3',
  'audio/mpeg',
  4.05,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 1',
  'Unknown Artist   Unknown Album   16. Track 16',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 1\Unknown Artist - Unknown Album - 16. Track 16.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  4.87,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  4.6,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  1.09,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  1.12,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  2.28,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  4.03,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  2.77,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  3.6,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  6.98,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'mp3',
  'audio/mpeg',
  6.33,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   12. Track 12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 12. Track 12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'mp3',
  'audio/mpeg',
  4.46,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   13. Track 13',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 13. Track 13.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'mp3',
  'audio/mpeg',
  5.08,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   14. Track 14',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 14. Track 14.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'mp3',
  'audio/mpeg',
  3.19,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   15. Track 15',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 15. Track 15.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'mp3',
  'audio/mpeg',
  4.92,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 10',
  'Unknown Artist   Unknown Album   16. Track 16',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 10\Unknown Artist - Unknown Album - 16. Track 16.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  4.63,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  4.32,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  2.91,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  2.57,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  10.87,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  2.75,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  3.1,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  2.09,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  8.15,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  5.83,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  2.22,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 11',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 11\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  6.96,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  5.4,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  1.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  3.85,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  1.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  1.24,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  3.44,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  4.12,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  6.56,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  2.46,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'mp3',
  'audio/mpeg',
  5,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 12',
  'Unknown Artist   Unknown Album   12. Track 12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 12\Unknown Artist - Unknown Album - 12. Track 12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  12.57,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  2.87,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  2.77,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  3.37,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  3.23,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  1.75,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  4.47,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  4.02,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 13',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 13\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  5.27,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  1,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  2.32,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  7.65,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  1.68,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  7.03,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  6.42,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  3.18,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  2.57,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  2.21,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 14',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 14\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  9.85,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  3.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  3.09,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  2.03,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  2.79,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  3.85,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  4.86,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  2.55,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  5.54,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  1.74,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  4.73,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 15',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 15\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  4.22,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  5.81,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  5.72,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  4.86,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  4.62,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  5.03,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  3.31,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  4.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 16',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 16\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  5.78,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  1.19,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  6.14,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  4.13,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  5.09,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  6.6,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  6.29,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  4.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 17',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 17\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 01. Track 1.mp3',
  '1Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  7.13,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  '1Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 02. Track 2.mp3',
  '1Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  4.73,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  '1Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 03. Track 3.mp3',
  '1Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  7.78,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  '1Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 04. Track 4.mp3',
  '1Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  8.97,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  '1Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\1Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant01.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant01.mp3',
  'Cant01.mp3',
  'mp3',
  'audio/mpeg',
  5.31,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant01',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant01.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant02.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant02.mp3',
  'Cant02.mp3',
  'mp3',
  'audio/mpeg',
  4.25,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant02',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant02.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant03.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant03.mp3',
  'Cant03.mp3',
  'mp3',
  'audio/mpeg',
  8.06,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant03',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant03.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant04.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant04.mp3',
  'Cant04.mp3',
  'mp3',
  'audio/mpeg',
  6.95,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant04',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant04.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant05.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant05.mp3',
  'Cant05.mp3',
  'mp3',
  'audio/mpeg',
  9.78,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant05',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant05.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant06.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant06.mp3',
  'Cant06.mp3',
  'mp3',
  'audio/mpeg',
  7.65,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant06',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant06.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant07.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant07.mp3',
  'Cant07.mp3',
  'mp3',
  'audio/mpeg',
  9.77,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant07',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant07.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant08.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant08.mp3',
  'Cant08.mp3',
  'mp3',
  'audio/mpeg',
  6.79,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant08',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant08.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant09.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant09.mp3',
  'Cant09.mp3',
  'mp3',
  'audio/mpeg',
  6.69,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant09',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant09.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant10.mp3',
  'Cant10.mp3',
  'mp3',
  'audio/mpeg',
  13.13,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant11.mp3',
  'Cant11.mp3',
  'mp3',
  'audio/mpeg',
  10.05,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant12.mp3',
  'Cant12.mp3',
  'mp3',
  'audio/mpeg',
  5.37,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant13.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant13.mp3',
  'Cant13.mp3',
  'mp3',
  'audio/mpeg',
  8.05,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant13',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant13.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant14.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant14.mp3',
  'Cant14.mp3',
  'mp3',
  'audio/mpeg',
  18.49,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant14',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant14.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant15.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant15.mp3',
  'Cant15.mp3',
  'mp3',
  'audio/mpeg',
  8.06,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant15',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant15.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant16.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant16.mp3',
  'Cant16.mp3',
  'mp3',
  'audio/mpeg',
  7.87,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant16',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant16.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant17.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant17.mp3',
  'Cant17.mp3',
  'mp3',
  'audio/mpeg',
  9.51,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant17',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant17.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant18.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant18.mp3',
  'Cant18.mp3',
  'mp3',
  'audio/mpeg',
  8.06,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant18',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant18.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant19.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant19.mp3',
  'Cant19.mp3',
  'mp3',
  'audio/mpeg',
  13.26,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant19',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant19.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant20.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant20.mp3',
  'Cant20.mp3',
  'mp3',
  'audio/mpeg',
  9.93,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant20',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant20.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant21.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant21.mp3',
  'Cant21.mp3',
  'mp3',
  'audio/mpeg',
  15.95,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant21',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant21.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant22.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant22.mp3',
  'Cant22.mp3',
  'mp3',
  'audio/mpeg',
  5.53,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant22',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant22.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant23.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant23.mp3',
  'Cant23.mp3',
  'mp3',
  'audio/mpeg',
  13.56,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant23',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant23.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant24.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant24.mp3',
  'Cant24.mp3',
  'mp3',
  'audio/mpeg',
  28.94,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant24',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant24.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant25.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant25.mp3',
  'Cant25.mp3',
  'mp3',
  'audio/mpeg',
  5.83,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant25',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant25.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Cant26.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Cant26.mp3',
  'Cant26.mp3',
  'mp3',
  'audio/mpeg',
  5.26,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Cant26',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Cant26.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Malaki èsima nè mèzè Kipanlou.wma',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Malaki èsima nè mèzè Kipanlou.wma',
  'Malaki èsima nè mèzè Kipanlou.wma',
  'wma',
  'application/octet-stream',
  4.77,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Malaki èsima nè mèzè Kipanlou',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Malaki èsima nè mèzè Kipanlou.wma'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  4.34,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  5.25,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  2.17,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  3.59,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  1.32,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  3.46,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  6.29,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  4.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 18',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 18\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  1.58,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  2.42,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  2.88,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  1.71,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  0.62,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  1.36,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  5.97,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  0.81,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  4.08,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  1.43,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'mp3',
  'audio/mpeg',
  0.97,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   12. Track 12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 12. Track 12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'mp3',
  'audio/mpeg',
  0.3,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   13. Track 13',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 13. Track 13.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'mp3',
  'audio/mpeg',
  5.56,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 2',
  'Unknown Artist   Unknown Album   14. Track 14',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 2\Unknown Artist - Unknown Album - 14. Track 14.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  2.61,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  1.52,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  4.63,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  1.49,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  2.08,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  10.58,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  1.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  1.55,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  1.23,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  0.92,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'mp3',
  'audio/mpeg',
  3.25,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   12. Track 12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 12. Track 12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'Unknown Artist - Unknown Album - 13. Track 13.mp3',
  'mp3',
  'audio/mpeg',
  1.68,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   13. Track 13',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 13. Track 13.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'Unknown Artist - Unknown Album - 14. Track 14.mp3',
  'mp3',
  'audio/mpeg',
  1.4,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   14. Track 14',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 14. Track 14.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'Unknown Artist - Unknown Album - 15. Track 15.mp3',
  'mp3',
  'audio/mpeg',
  0.53,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   15. Track 15',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 15. Track 15.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'Unknown Artist - Unknown Album - 16. Track 16.mp3',
  'mp3',
  'audio/mpeg',
  0.56,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   16. Track 16',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 16. Track 16.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 17. Track 17.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 17. Track 17.mp3',
  'Unknown Artist - Unknown Album - 17. Track 17.mp3',
  'mp3',
  'audio/mpeg',
  1.73,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   17. Track 17',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 17. Track 17.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 18. Track 18.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 18. Track 18.mp3',
  'Unknown Artist - Unknown Album - 18. Track 18.mp3',
  'mp3',
  'audio/mpeg',
  2.14,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   18. Track 18',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 18. Track 18.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 19. Track 19.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 19. Track 19.mp3',
  'Unknown Artist - Unknown Album - 19. Track 19.mp3',
  'mp3',
  'audio/mpeg',
  4.79,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   19. Track 19',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 19. Track 19.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 20. Track 20.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 20. Track 20.mp3',
  'Unknown Artist - Unknown Album - 20. Track 20.mp3',
  'mp3',
  'audio/mpeg',
  0.7,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 3',
  'Unknown Artist   Unknown Album   20. Track 20',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 3\Unknown Artist - Unknown Album - 20. Track 20.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  1.72,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  7.01,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  3.38,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  6.51,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  2.41,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  5.25,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  4.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  6.33,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  2.86,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  4.92,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 4',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 4\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  3.75,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  3.67,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  1.35,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  2.92,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  3.94,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  4.36,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  3.3,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  4.46,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  5.49,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  3.39,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 5',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 5\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  7.53,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  2.22,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  2.34,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  2.87,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  2.38,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  3.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'Unknown Artist - Unknown Album - 12. Track 12.mp3',
  'mp3',
  'audio/mpeg',
  2.17,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 6',
  'Unknown Artist   Unknown Album   12. Track 12',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 6\Unknown Artist - Unknown Album - 12. Track 12.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  6.32,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  2.59,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  3.29,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  4.42,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  3.44,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  5.99,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  1.95,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  5.6,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  3.19,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  3.44,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 7',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 7\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  6.43,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  4.92,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  1.74,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  4.82,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  4.36,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  3.99,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  6.62,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 8',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 8\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'Unknown Artist - Unknown Album - 01. Track 1.mp3',
  'mp3',
  'audio/mpeg',
  4.99,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   01. Track 1',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 01. Track 1.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'Unknown Artist - Unknown Album - 02. Track 2.mp3',
  'mp3',
  'audio/mpeg',
  3.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   02. Track 2',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 02. Track 2.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'Unknown Artist - Unknown Album - 03. Track 3.mp3',
  'mp3',
  'audio/mpeg',
  2.18,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   03. Track 3',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 03. Track 3.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'Unknown Artist - Unknown Album - 04. Track 4.mp3',
  'mp3',
  'audio/mpeg',
  1.89,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   04. Track 4',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 04. Track 4.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'Unknown Artist - Unknown Album - 05. Track 5.mp3',
  'mp3',
  'audio/mpeg',
  3.71,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   05. Track 5',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 05. Track 5.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'Unknown Artist - Unknown Album - 06. Track 6.mp3',
  'mp3',
  'audio/mpeg',
  5.13,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   06. Track 6',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 06. Track 6.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'Unknown Artist - Unknown Album - 07. Track 7.mp3',
  'mp3',
  'audio/mpeg',
  1.2,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   07. Track 7',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 07. Track 7.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'Unknown Artist - Unknown Album - 08. Track 8.mp3',
  'mp3',
  'audio/mpeg',
  5.42,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   08. Track 8',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 08. Track 8.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'Unknown Artist - Unknown Album - 09. Track 9.mp3',
  'mp3',
  'audio/mpeg',
  7.73,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   09. Track 9',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 09. Track 9.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'Unknown Artist - Unknown Album - 10. Track 10.mp3',
  'mp3',
  'audio/mpeg',
  2.79,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   10. Track 10',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 10. Track 10.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'Unknown Artist - Unknown Album - 11. Track 11.mp3',
  'mp3',
  'audio/mpeg',
  6.37,
  (select id from piliers where code='AMEN'),
  'Chorale Kabye',
  'Chorale Kabye\vol 9',
  'Unknown Artist   Unknown Album   11. Track 11',
  'importe',
  'spiritualite-raw',
  'Chorale Kabye\vol 9\Unknown Artist - Unknown Album - 11. Track 11.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\12-Principles_Brian-Dalmaso-1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\12-Principles_Brian-Dalmaso-1.pdf',
  '12-Principles_Brian-Dalmaso-1.pdf',
  'pdf',
  'application/pdf',
  2.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  '12 Principles Brian Dalmaso 1',
  'importe',
  'spiritualite-raw',
  'COACHING\12-Principles_Brian-Dalmaso-1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Born Rich Workbook.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Born Rich Workbook.pdf',
  'Born Rich Workbook.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Born Rich Workbook',
  'importe',
  'spiritualite-raw',
  'COACHING\Born Rich Workbook.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Greatest_Money_Making_Secret_In_History-Joe_Vitale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Greatest_Money_Making_Secret_In_History-Joe_Vitale.pdf',
  'Greatest_Money_Making_Secret_In_History-Joe_Vitale.pdf',
  'pdf',
  'application/pdf',
  0.45,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Greatest Money Making Secret In History Joe Vitale',
  'importe',
  'spiritualite-raw',
  'COACHING\Greatest_Money_Making_Secret_In_History-Joe_Vitale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Money Magnet.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Money Magnet.pdf',
  'Money Magnet.pdf',
  'pdf',
  'application/pdf',
  0.94,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Money Magnet',
  'importe',
  'spiritualite-raw',
  'COACHING\Money Magnet.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Paradigms-April-2016.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Paradigms-April-2016.pdf',
  'Paradigms-April-2016.pdf',
  'pdf',
  'application/pdf',
  0.34,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Paradigms April 2016',
  'importe',
  'spiritualite-raw',
  'COACHING\Paradigms-April-2016.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Refléchissez et devenez Riche_Napoléon Hill.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Refléchissez et devenez Riche_Napoléon Hill.pdf',
  'Refléchissez et devenez Riche_Napoléon Hill.pdf',
  'pdf',
  'application/pdf',
  0.98,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Refléchissez et devenez Riche Napoléon Hill',
  'importe',
  'spiritualite-raw',
  'COACHING\Refléchissez et devenez Riche_Napoléon Hill.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\The Success Puzzle Workbook.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\The Success Puzzle Workbook.pdf',
  'The Success Puzzle Workbook.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'The Success Puzzle Workbook',
  'importe',
  'spiritualite-raw',
  'COACHING\The Success Puzzle Workbook.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\The-Secret-Press-Kit-Dec13.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\The-Secret-Press-Kit-Dec13.pdf',
  'The-Secret-Press-Kit-Dec13.pdf',
  'pdf',
  'application/pdf',
  1.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'The Secret Press Kit Dec13',
  'importe',
  'spiritualite-raw',
  'COACHING\The-Secret-Press-Kit-Dec13.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\TIR_BrochureCurrent.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\TIR_BrochureCurrent.pdf',
  'TIR_BrochureCurrent.pdf',
  'pdf',
  'application/pdf',
  1.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'TIR BrochureCurrent',
  'importe',
  'spiritualite-raw',
  'COACHING\TIR_BrochureCurrent.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\You were born rich_Bob Proctor.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\You were born rich_Bob Proctor.pdf',
  'You were born rich_Bob Proctor.pdf',
  'pdf',
  'application/pdf',
  2.88,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'You were born rich Bob Proctor',
  'importe',
  'spiritualite-raw',
  'COACHING\You were born rich_Bob Proctor.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'COACHING\Your Mission In Commission Workbook.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\COACHING\Your Mission In Commission Workbook.pdf',
  'Your Mission In Commission Workbook.pdf',
  'pdf',
  'application/pdf',
  0.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'COACHING',
  'Your Mission In Commission Workbook',
  'importe',
  'spiritualite-raw',
  'COACHING\Your Mission In Commission Workbook.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_a_anselin_ibis du savoir.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_a_anselin_ibis du savoir.pdf',
  'ankh_1_a_anselin_ibis du savoir.pdf',
  'pdf',
  'application/pdf',
  3.11,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 a anselin ibis du savoir',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_a_anselin_ibis du savoir.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_am_lam_etude egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_am_lam_etude egypte ancienne.pdf',
  'ankh_1_am_lam_etude egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  2.2,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 am lam etude egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_am_lam_etude egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_b_sall_des influences ethiopiennes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_b_sall_des influences ethiopiennes.pdf',
  'ankh_1_b_sall_des influences ethiopiennes.pdf',
  'pdf',
  'application/pdf',
  3.33,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 b sall des influences ethiopiennes',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_b_sall_des influences ethiopiennes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_cm_diop_hieroglyphes et informatique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_cm_diop_hieroglyphes et informatique.pdf',
  'ankh_1_cm_diop_hieroglyphes et informatique.pdf',
  'pdf',
  'application/pdf',
  5.94,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 cm diop hieroglyphes et informatique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_cm_diop_hieroglyphes et informatique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_jp_mbelek_interaction entre photons et gravitons.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_jp_mbelek_interaction entre photons et gravitons.pdf',
  'ankh_1_jp_mbelek_interaction entre photons et gravitons.pdf',
  'pdf',
  'application/pdf',
  1.69,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 jp mbelek interaction entre photons et gravitons',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_jp_mbelek_interaction entre photons et gravitons.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_1_t_obenga_le chamito semitique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_1_t_obenga_le chamito semitique.pdf',
  'ankh_1_t_obenga_le chamito semitique.pdf',
  'pdf',
  'application/pdf',
  0.9,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 1 t obenga le chamito semitique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_1_t_obenga_le chamito semitique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11 _les 10 ans de ANKH acquis recents de la recherche.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11 _les 10 ans de ANKH acquis recents de la recherche.pdf',
  'ankh_10_11 _les 10 ans de ANKH acquis recents de la recherche.pdf',
  'pdf',
  'application/pdf',
  21.95,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11  les 10 ans de ANKH acquis recents de la recherche',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11 _les 10 ans de ANKH acquis recents de la recherche.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_a_m_lam moise essai etymologique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_a_m_lam moise essai etymologique.pdf',
  'ankh_10_11_a_m_lam moise essai etymologique.pdf',
  'pdf',
  'application/pdf',
  7.59,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 a m lam moise essai etymologique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_a_m_lam moise essai etymologique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_b_sall les assises d elephantine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_b_sall les assises d elephantine.pdf',
  'ankh_10_11_b_sall les assises d elephantine.pdf',
  'pdf',
  'application/pdf',
  5.49,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 b sall les assises d elephantine',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_b_sall les assises d elephantine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_g_ngom des biliteres et des triliteres en ecriture hieroglyphique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_g_ngom des biliteres et des triliteres en ecriture hieroglyphique.pdf',
  'ankh_10_11_g_ngom des biliteres et des triliteres en ecriture hieroglyphique.pdf',
  'pdf',
  'application/pdf',
  9.61,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 g ngom des biliteres et des triliteres en ecriture hieroglyphique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_g_ngom des biliteres et des triliteres en ecriture hieroglyphique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_j_m_bonnet_bidaud l observation de l etoile sirius par les dogons.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_j_m_bonnet_bidaud l observation de l etoile sirius par les dogons.pdf',
  'ankh_10_11_j_m_bonnet_bidaud l observation de l etoile sirius par les dogons.pdf',
  'pdf',
  'application/pdf',
  11.58,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 j m bonnet bidaud l observation de l etoile sirius par les dogons',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_j_m_bonnet_bidaud l observation de l etoile sirius par les dogons.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_m_beatty expanding  the meaning of the word sst3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_m_beatty expanding  the meaning of the word sst3.pdf',
  'ankh_10_11_m_beatty expanding  the meaning of the word sst3.pdf',
  'pdf',
  'application/pdf',
  4.84,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 m beatty expanding  the meaning of the word sst3',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_m_beatty expanding  the meaning of the word sst3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_m_lachiez_rey big bang vrais et faux problemes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_m_lachiez_rey big bang vrais et faux problemes.pdf',
  'ankh_10_11_m_lachiez_rey big bang vrais et faux problemes.pdf',
  'pdf',
  'application/pdf',
  5.84,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 m lachiez rey big bang vrais et faux problemes',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_m_lachiez_rey big bang vrais et faux problemes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_t_d_allen problems in egyptology - ancient egyptian kingship.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_t_d_allen problems in egyptology - ancient egyptian kingship.pdf',
  'ankh_10_11_t_d_allen problems in egyptology - ancient egyptian kingship.pdf',
  'pdf',
  'application/pdf',
  8.15,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 t d allen problems in egyptology   ancient egyptian kingship',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_t_d_allen problems in egyptology - ancient egyptian kingship.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_10_11_t_obenga egyptien ancien une langue negro africaine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_10_11_t_obenga egyptien ancien une langue negro africaine.pdf',
  'ankh_10_11_t_obenga egyptien ancien une langue negro africaine.pdf',
  'pdf',
  'application/pdf',
  7.45,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 10 11 t obenga egyptien ancien une langue negro africaine',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_10_11_t_obenga egyptien ancien une langue negro africaine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_am_lam l origine des peuls.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_am_lam l origine des peuls.pdf',
  'ankh_12_13_am_lam l origine des peuls.pdf',
  'pdf',
  'application/pdf',
  12.51,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 am lam l origine des peuls',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_am_lam l origine des peuls.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_b_b_diop eclairage etymologie du terme gorille.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_b_b_diop eclairage etymologie du terme gorille.pdf',
  'ankh_12_13_b_b_diop eclairage etymologie du terme gorille.pdf',
  'pdf',
  'application/pdf',
  5.81,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 b b diop eclairage etymologie du terme gorille',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_b_b_diop eclairage etymologie du terme gorille.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_b_sall des grands lacs au fayoum l odyssee des pecheurs.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_b_sall des grands lacs au fayoum l odyssee des pecheurs.pdf',
  'ankh_12_13_b_sall des grands lacs au fayoum l odyssee des pecheurs.pdf',
  'pdf',
  'application/pdf',
  7.55,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 b sall des grands lacs au fayoum l odyssee des pecheurs',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_b_sall des grands lacs au fayoum l odyssee des pecheurs.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_j_p_mbelek le dechiffrement de l os d ishango.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_j_p_mbelek le dechiffrement de l os d ishango.pdf',
  'ankh_12_13_j_p_mbelek le dechiffrement de l os d ishango.pdf',
  'pdf',
  'application/pdf',
  10.14,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 j p mbelek le dechiffrement de l os d ishango',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_j_p_mbelek le dechiffrement de l os d ishango.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_m_beatty instructions of ptahhotep a grammatical and cultural analysis.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_m_beatty instructions of ptahhotep a grammatical and cultural analysis.pdf',
  'ankh_12_13_m_beatty instructions of ptahhotep a grammatical and cultural analysis.pdf',
  'pdf',
  'application/pdf',
  13.61,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 m beatty instructions of ptahhotep a grammatical and cultural analysis',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_m_beatty instructions of ptahhotep a grammatical and cultural analysis.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_t_obenga comparaisons morphologiques entre l egyptien ancien et le dagara.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_t_obenga comparaisons morphologiques entre l egyptien ancien et le dagara.pdf',
  'ankh_12_13_t_obenga comparaisons morphologiques entre l egyptien ancien et le dagara.pdf',
  'pdf',
  'application/pdf',
  10.47,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 t obenga comparaisons morphologiques entre l egyptien ancien et le dagara',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_t_obenga comparaisons morphologiques entre l egyptien ancien et le dagara.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_12_13_y_somet la pensee morale egyptienne au 3e millenaire avant jc.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_12_13_y_somet la pensee morale egyptienne au 3e millenaire avant jc.pdf',
  'ankh_12_13_y_somet la pensee morale egyptienne au 3e millenaire avant jc.pdf',
  'pdf',
  'application/pdf',
  8.62,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 12 13 y somet la pensee morale egyptienne au 3e millenaire avant jc',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_12_13_y_somet la pensee morale egyptienne au 3e millenaire avant jc.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_am_lam_egypte_ancienne_afrique_noire_nouveaux_faits.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_am_lam_egypte_ancienne_afrique_noire_nouveaux_faits.pdf',
  'ankh_14_15_am_lam_egypte_ancienne_afrique_noire_nouveaux_faits.pdf',
  'pdf',
  'application/pdf',
  0.36,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 am lam egypte ancienne afrique noire nouveaux faits',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_am_lam_egypte_ancienne_afrique_noire_nouveaux_faits.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_b_diop_buuba_les migrations sereer.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_b_diop_buuba_les migrations sereer.pdf',
  'ankh_14_15_b_diop_buuba_les migrations sereer.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 b diop buuba les migrations sereer',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_b_diop_buuba_les migrations sereer.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_b_sall_egypte_etait-elle_un_don_du_nil_.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_b_sall_egypte_etait-elle_un_don_du_nil_.pdf',
  'ankh_14_15_b_sall_egypte_etait-elle_un_don_du_nil_.pdf',
  'pdf',
  'application/pdf',
  0.3,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 b sall egypte etait elle un don du nil ',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_b_sall_egypte_etait-elle_un_don_du_nil_.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_m_beatty_martin delany and egyptology.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_m_beatty_martin delany and egyptology.pdf',
  'ankh_14_15_m_beatty_martin delany and egyptology.pdf',
  'pdf',
  'application/pdf',
  1.44,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 m beatty martin delany and egyptology',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_m_beatty_martin delany and egyptology.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_mn_sarr_cours d eau croyances en egypte.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_mn_sarr_cours d eau croyances en egypte.pdf',
  'ankh_14_15_mn_sarr_cours d eau croyances en egypte.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 mn sarr cours d eau croyances en egypte',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_mn_sarr_cours d eau croyances en egypte.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_14_15_n_manlius_millenaires grands mammiferes en egypte.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_14_15_n_manlius_millenaires grands mammiferes en egypte.pdf',
  'ankh_14_15_n_manlius_millenaires grands mammiferes en egypte.pdf',
  'pdf',
  'application/pdf',
  0.33,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 14 15 n manlius millenaires grands mammiferes en egypte',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_14_15_n_manlius_millenaires grands mammiferes en egypte.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_am_lam_polygamie en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_am_lam_polygamie en egypte ancienne.pdf',
  'ankh_16_am_lam_polygamie en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  0.52,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 am lam polygamie en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_am_lam_polygamie en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_jp_fougain_arthmetique en afrique noire pharaonique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_jp_fougain_arthmetique en afrique noire pharaonique.pdf',
  'ankh_16_jp_fougain_arthmetique en afrique noire pharaonique.pdf',
  'pdf',
  'application/pdf',
  0.76,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 jp fougain arthmetique en afrique noire pharaonique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_jp_fougain_arthmetique en afrique noire pharaonique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_t_obenga peigne et cheveu en egyptien ancien.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_t_obenga peigne et cheveu en egyptien ancien.pdf',
  'ankh_16_t_obenga peigne et cheveu en egyptien ancien.pdf',
  'pdf',
  'application/pdf',
  3.27,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 t obenga peigne et cheveu en egyptien ancien',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_t_obenga peigne et cheveu en egyptien ancien.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_t_obenga_ancient egyptian and modern yoruba.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_t_obenga_ancient egyptian and modern yoruba.pdf',
  'ankh_16_t_obenga_ancient egyptian and modern yoruba.pdf',
  'pdf',
  'application/pdf',
  0.45,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 t obenga ancient egyptian and modern yoruba',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_t_obenga_ancient egyptian and modern yoruba.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_y_somet le scribe en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_y_somet le scribe en egypte ancienne.pdf',
  'ankh_16_y_somet le scribe en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 y somet le scribe en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_y_somet le scribe en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_16_y_somet_anthony william amo.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_16_y_somet_anthony william amo.pdf',
  'ankh_16_y_somet_anthony william amo.pdf',
  'pdf',
  'application/pdf',
  0.92,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 16 y somet anthony william amo',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_16_y_somet_anthony william amo.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_am_lam_culture materielle en egyptologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_am_lam_culture materielle en egyptologie.pdf',
  'ankh_17_am_lam_culture materielle en egyptologie.pdf',
  'pdf',
  'application/pdf',
  0.36,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 am lam culture materielle en egyptologie',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_am_lam_culture materielle en egyptologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_b_sall_terres ouest vallee du nil.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_b_sall_terres ouest vallee du nil.pdf',
  'ankh_17_b_sall_terres ouest vallee du nil.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 b sall terres ouest vallee du nil',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_b_sall_terres ouest vallee du nil.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_h_altenmuller_peau_panthere en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_h_altenmuller_peau_panthere en egypte ancienne.pdf',
  'ankh_17_h_altenmuller_peau_panthere en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  1.09,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 h altenmuller peau panthere en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_h_altenmuller_peau_panthere en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_t_obenga_antenor_firmin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_t_obenga_antenor_firmin.pdf',
  'ankh_17_t_obenga_antenor_firmin.pdf',
  'pdf',
  'application/pdf',
  0.75,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 t obenga antenor firmin',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_t_obenga_antenor_firmin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_t_obenga_isis et son odyssee en europe.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_t_obenga_isis et son odyssee en europe.pdf',
  'ankh_17_t_obenga_isis et son odyssee en europe.pdf',
  'pdf',
  'application/pdf',
  5.02,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 t obenga isis et son odyssee en europe',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_t_obenga_isis et son odyssee en europe.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_17_y_somet_identification_d un hieroglyphe.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_17_y_somet_identification_d un hieroglyphe.pdf',
  'ankh_17_y_somet_identification_d un hieroglyphe.pdf',
  'pdf',
  'application/pdf',
  1.07,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 17 y somet identification d un hieroglyphe',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_17_y_somet_identification_d un hieroglyphe.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_a_sylla_isis clytemnestre agrippine et le droit de la mere.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_a_sylla_isis clytemnestre agrippine et le droit de la mere.pdf',
  'ankh_18_19_20_a_sylla_isis clytemnestre agrippine et le droit de la mere.pdf',
  'pdf',
  'application/pdf',
  0.9,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 a sylla isis clytemnestre agrippine et le droit de la mere',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_a_sylla_isis clytemnestre agrippine et le droit de la mere.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_am_lam_le sens de t3tnn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_am_lam_le sens de t3tnn.pdf',
  'ankh_18_19_20_am_lam_le sens de t3tnn.pdf',
  'pdf',
  'application/pdf',
  1.03,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 am lam le sens de t3tnn',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_am_lam_le sens de t3tnn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_b_sall_aux sources de l egypte primitive.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_b_sall_aux sources de l egypte primitive.pdf',
  'ankh_18_19_20_b_sall_aux sources de l egypte primitive.pdf',
  'pdf',
  'application/pdf',
  1.11,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 b sall aux sources de l egypte primitive',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_b_sall_aux sources de l egypte primitive.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_cm_diop_recherche scientifique africaine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_cm_diop_recherche scientifique africaine.pdf',
  'ankh_18_19_20_cm_diop_recherche scientifique africaine.pdf',
  'pdf',
  'application/pdf',
  3.57,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 cm diop recherche scientifique africaine',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_cm_diop_recherche scientifique africaine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_g_ngom_le nom en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_g_ngom_le nom en egypte ancienne.pdf',
  'ankh_18_19_20_g_ngom_le nom en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  1.44,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 g ngom le nom en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_g_ngom_le nom en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_l_simpore_les ruines de loropeni.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_l_simpore_les ruines de loropeni.pdf',
  'ankh_18_19_20_l_simpore_les ruines de loropeni.pdf',
  'pdf',
  'application/pdf',
  7.55,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 l simpore les ruines de loropeni',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_l_simpore_les ruines de loropeni.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_t_obenga_le maitre des animaux.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_t_obenga_le maitre des animaux.pdf',
  'ankh_18_19_20_t_obenga_le maitre des animaux.pdf',
  'pdf',
  'application/pdf',
  11.08,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 t obenga le maitre des animaux',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_t_obenga_le maitre des animaux.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_t_obenga_leo frobenius et l''afrique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_t_obenga_leo frobenius et l''afrique.pdf',
  'ankh_18_19_20_t_obenga_leo frobenius et l''afrique.pdf',
  'pdf',
  'application/pdf',
  0.31,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 t obenga leo frobenius et l''afrique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_t_obenga_leo frobenius et l''afrique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_y_somet_l egypte ancienne dans le cinema.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_y_somet_l egypte ancienne dans le cinema.pdf',
  'ankh_18_19_20_y_somet_l egypte ancienne dans le cinema.pdf',
  'pdf',
  'application/pdf',
  3.7,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 y somet l egypte ancienne dans le cinema',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_y_somet_l egypte ancienne dans le cinema.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_18_19_20_y_somet_reflexions sur le message des meules.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_18_19_20_y_somet_reflexions sur le message des meules.pdf',
  'ankh_18_19_20_y_somet_reflexions sur le message des meules.pdf',
  'pdf',
  'application/pdf',
  2.82,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 18 19 20 y somet reflexions sur le message des meules',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_18_19_20_y_somet_reflexions sur le message des meules.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_am_lam_mr un outil agricole.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_am_lam_mr un outil agricole.pdf',
  'ankh_2_am_lam_mr un outil agricole.pdf',
  'pdf',
  'application/pdf',
  6.35,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 am lam mr un outil agricole',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_am_lam_mr un outil agricole.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_ca_diop_le walaf et egyptien pharaonique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_ca_diop_le walaf et egyptien pharaonique.pdf',
  'ankh_2_ca_diop_le walaf et egyptien pharaonique.pdf',
  'pdf',
  'application/pdf',
  2.18,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 ca diop le walaf et egyptien pharaonique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_ca_diop_le walaf et egyptien pharaonique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_g_ngom_parente egyptien duala.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_g_ngom_parente egyptien duala.pdf',
  'ankh_2_g_ngom_parente egyptien duala.pdf',
  'pdf',
  'application/pdf',
  4.56,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 g ngom parente egyptien duala',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_g_ngom_parente egyptien duala.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_jp_mbelek_deduction de la relation de tully-fischer et parametre de hubble.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_jp_mbelek_deduction de la relation de tully-fischer et parametre de hubble.pdf',
  'ankh_2_jp_mbelek_deduction de la relation de tully-fischer et parametre de hubble.pdf',
  'pdf',
  'application/pdf',
  4.5,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 jp mbelek deduction de la relation de tully fischer et parametre de hubble',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_jp_mbelek_deduction de la relation de tully-fischer et parametre de hubble.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_lm_diop_maes_evolution population afrique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_lm_diop_maes_evolution population afrique.pdf',
  'ankh_2_lm_diop_maes_evolution population afrique.pdf',
  'pdf',
  'application/pdf',
  11.22,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 lm diop maes evolution population afrique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_lm_diop_maes_evolution population afrique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_2_t_obenga_aristote et egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_2_t_obenga_aristote et egypte ancienne.pdf',
  'ankh_2_t_obenga_aristote et egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  7.01,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 2 t obenga aristote et egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_2_t_obenga_aristote et egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_3_am_lam_sceptres egypte ancienne et afrique noire.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_3_am_lam_sceptres egypte ancienne et afrique noire.pdf',
  'ankh_3_am_lam_sceptres egypte ancienne et afrique noire.pdf',
  'pdf',
  'application/pdf',
  14.19,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 3 am lam sceptres egypte ancienne et afrique noire',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_3_am_lam_sceptres egypte ancienne et afrique noire.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_3_b_sall_avenement des candaces.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_3_b_sall_avenement des candaces.pdf',
  'ankh_3_b_sall_avenement des candaces.pdf',
  'pdf',
  'application/pdf',
  10.02,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 3 b sall avenement des candaces',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_3_b_sall_avenement des candaces.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_3_compte_rendu_les 20 ans du colloque du caire.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_3_compte_rendu_les 20 ans du colloque du caire.pdf',
  'ankh_3_compte_rendu_les 20 ans du colloque du caire.pdf',
  'pdf',
  'application/pdf',
  10.63,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 3 compte rendu les 20 ans du colloque du caire',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_3_compte_rendu_les 20 ans du colloque du caire.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_3_g_brauer_origine africaine homme moderne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_3_g_brauer_origine africaine homme moderne.pdf',
  'ankh_3_g_brauer_origine africaine homme moderne.pdf',
  'pdf',
  'application/pdf',
  11.4,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 3 g brauer origine africaine homme moderne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_3_g_brauer_origine africaine homme moderne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_3_t_obenga_stele iritisen.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_3_t_obenga_stele iritisen.pdf',
  'ankh_3_t_obenga_stele iritisen.pdf',
  'pdf',
  'application/pdf',
  7.79,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 3 t obenga stele iritisen',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_3_t_obenga_stele iritisen.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_am_lam_coiffures egypte ancienne afrique noire.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_am_lam_coiffures egypte ancienne afrique noire.pdf',
  'ankh_4_5_am_lam_coiffures egypte ancienne afrique noire.pdf',
  'pdf',
  'application/pdf',
  9.14,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 am lam coiffures egypte ancienne afrique noire',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_am_lam_coiffures egypte ancienne afrique noire.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_b_sall_herkouf et pays de yam.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_b_sall_herkouf et pays de yam.pdf',
  'ankh_4_5_b_sall_herkouf et pays de yam.pdf',
  'pdf',
  'application/pdf',
  4.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 b sall herkouf et pays de yam',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_b_sall_herkouf et pays de yam.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_c_a_diop_methodologie etude migrations.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_c_a_diop_methodologie etude migrations.pdf',
  'ankh_4_5_c_a_diop_methodologie etude migrations.pdf',
  'pdf',
  'application/pdf',
  4.79,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 c a diop methodologie etude migrations',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_c_a_diop_methodologie etude migrations.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_f_wendorf_natba playa during the early and middle holocene.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_f_wendorf_natba playa during the early and middle holocene.pdf',
  'ankh_4_5_f_wendorf_natba playa during the early and middle holocene.pdf',
  'pdf',
  'application/pdf',
  17.23,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 f wendorf natba playa during the early and middle holocene',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_f_wendorf_natba playa during the early and middle holocene.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_g_ngom_egypte ancienne afrique noire pensees et legendes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_g_ngom_egypte ancienne afrique noire pensees et legendes.pdf',
  'ankh_4_5_g_ngom_egypte ancienne afrique noire pensees et legendes.pdf',
  'pdf',
  'application/pdf',
  9.54,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 g ngom egypte ancienne afrique noire pensees et legendes',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_g_ngom_egypte ancienne afrique noire pensees et legendes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_h_altenmuller_der grabherr des alten reiches als hurus.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_h_altenmuller_der grabherr des alten reiches als hurus.pdf',
  'ankh_4_5_h_altenmuller_der grabherr des alten reiches als hurus.pdf',
  'pdf',
  'application/pdf',
  6.13,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 h altenmuller der grabherr des alten reiches als hurus',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_h_altenmuller_der grabherr des alten reiches als hurus.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_h_altenmuller_le maitre des tombeaux en tant qu horus.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_h_altenmuller_le maitre des tombeaux en tant qu horus.pdf',
  'ankh_4_5_h_altenmuller_le maitre des tombeaux en tant qu horus.pdf',
  'pdf',
  'application/pdf',
  2.85,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 h altenmuller le maitre des tombeaux en tant qu horus',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_h_altenmuller_le maitre des tombeaux en tant qu horus.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_kp_adjamagbo_sur mesure cercle et sphere en egypte ancienne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_kp_adjamagbo_sur mesure cercle et sphere en egypte ancienne.pdf',
  'ankh_4_5_kp_adjamagbo_sur mesure cercle et sphere en egypte ancienne.pdf',
  'pdf',
  'application/pdf',
  7.32,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 kp adjamagbo sur mesure cercle et sphere en egypte ancienne',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_kp_adjamagbo_sur mesure cercle et sphere en egypte ancienne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_lm_diop_maes_question age du fer en afrique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_lm_diop_maes_question age du fer en afrique.pdf',
  'ankh_4_5_lm_diop_maes_question age du fer en afrique.pdf',
  'pdf',
  'application/pdf',
  5.75,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 lm diop maes question age du fer en afrique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_lm_diop_maes_question age du fer en afrique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_m_beatty_celestial sphere in ancient egypt.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_m_beatty_celestial sphere in ancient egypt.pdf',
  'ankh_4_5_m_beatty_celestial sphere in ancient egypt.pdf',
  'pdf',
  'application/pdf',
  4.95,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 m beatty celestial sphere in ancient egypt',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_m_beatty_celestial sphere in ancient egypt.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_4_5_t_obenga_la parente egyptienne - considerations sociologiques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_4_5_t_obenga_la parente egyptienne - considerations sociologiques.pdf',
  'ankh_4_5_t_obenga_la parente egyptienne - considerations sociologiques.pdf',
  'pdf',
  'application/pdf',
  39.01,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 4 5 t obenga la parente egyptienne   considerations sociologiques',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_4_5_t_obenga_la parente egyptienne - considerations sociologiques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_am_lam_egypte ancienne et afrique noire autour de l eau.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_am_lam_egypte ancienne et afrique noire autour de l eau.pdf',
  'ankh_6_7_am_lam_egypte ancienne et afrique noire autour de l eau.pdf',
  'pdf',
  'application/pdf',
  3.57,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 am lam egypte ancienne et afrique noire autour de l eau',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_am_lam_egypte ancienne et afrique noire autour de l eau.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_b_sall_hommes et cultures du sahara ancien.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_b_sall_hommes et cultures du sahara ancien.pdf',
  'ankh_6_7_b_sall_hommes et cultures du sahara ancien.pdf',
  'pdf',
  'application/pdf',
  7.14,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 b sall hommes et cultures du sahara ancien',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_b_sall_hommes et cultures du sahara ancien.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_b_williams_historical essence of ancient nubia.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_b_williams_historical essence of ancient nubia.pdf',
  'ankh_6_7_b_williams_historical essence of ancient nubia.pdf',
  'pdf',
  'application/pdf',
  4.56,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 b williams historical essence of ancient nubia',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_b_williams_historical essence of ancient nubia.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_ca_diop_apport afrique aux sciences exactes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_ca_diop_apport afrique aux sciences exactes.pdf',
  'ankh_6_7_ca_diop_apport afrique aux sciences exactes.pdf',
  'pdf',
  'application/pdf',
  10.36,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 ca diop apport afrique aux sciences exactes',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_ca_diop_apport afrique aux sciences exactes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_g_ngom_egytien ancien phonetique historique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_g_ngom_egytien ancien phonetique historique.pdf',
  'ankh_6_7_g_ngom_egytien ancien phonetique historique.pdf',
  'pdf',
  'application/pdf',
  2.86,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 g ngom egytien ancien phonetique historique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_g_ngom_egytien ancien phonetique historique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_m_beatty_on the source of  moon light.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_m_beatty_on the source of  moon light.pdf',
  'ankh_6_7_m_beatty_on the source of  moon light.pdf',
  'pdf',
  'application/pdf',
  2.61,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 m beatty on the source of  moon light',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_m_beatty_on the source of  moon light.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_6_7_t_obenga_anthropologie pharaonique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_6_7_t_obenga_anthropologie pharaonique.pdf',
  'ankh_6_7_t_obenga_anthropologie pharaonique.pdf',
  'pdf',
  'application/pdf',
  28.84,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 6 7 t obenga anthropologie pharaonique',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_6_7_t_obenga_anthropologie pharaonique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_am_lam_toute histoire ahmes nefertari.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_am_lam_toute histoire ahmes nefertari.pdf',
  'ankh_8_9_am_lam_toute histoire ahmes nefertari.pdf',
  'pdf',
  'application/pdf',
  5.38,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 am lam toute histoire ahmes nefertari',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_am_lam_toute histoire ahmes nefertari.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_b_sall_image memphite des nubio-soudanais.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_b_sall_image memphite des nubio-soudanais.pdf',
  'ankh_8_9_b_sall_image memphite des nubio-soudanais.pdf',
  'pdf',
  'application/pdf',
  3.78,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 b sall image memphite des nubio soudanais',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_b_sall_image memphite des nubio-soudanais.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_h_bocoum_reduction et traitement du fer.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_h_bocoum_reduction et traitement du fer.pdf',
  'ankh_8_9_h_bocoum_reduction et traitement du fer.pdf',
  'pdf',
  'application/pdf',
  5.59,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 h bocoum reduction et traitement du fer',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_h_bocoum_reduction et traitement du fer.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_lm_diop_maes_apport des datations a la connaissance.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_lm_diop_maes_apport des datations a la connaissance.pdf',
  'ankh_8_9_lm_diop_maes_apport des datations a la connaissance.pdf',
  'pdf',
  'application/pdf',
  10.17,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 lm diop maes apport des datations a la connaissance',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_lm_diop_maes_apport des datations a la connaissance.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_m_beatty_recent finds in predynastic.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_m_beatty_recent finds in predynastic.pdf',
  'ankh_8_9_m_beatty_recent finds in predynastic.pdf',
  'pdf',
  'application/pdf',
  0.91,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 m beatty recent finds in predynastic',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_m_beatty_recent finds in predynastic.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_m_beatty_title master of secrets.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_m_beatty_title master of secrets.pdf',
  'ankh_8_9_m_beatty_title master of secrets.pdf',
  'pdf',
  'application/pdf',
  2.21,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 m beatty title master of secrets',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_m_beatty_title master of secrets.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_mn_sarr_representation du deuil.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_mn_sarr_representation du deuil.pdf',
  'ankh_8_9_mn_sarr_representation du deuil.pdf',
  'pdf',
  'application/pdf',
  3.23,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 mn sarr representation du deuil',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_mn_sarr_representation du deuil.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\ankh_8_9_t_obenga_calcul du volume pyramide.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\ankh_8_9_t_obenga_calcul du volume pyramide.pdf',
  'ankh_8_9_t_obenga_calcul du volume pyramide.pdf',
  'pdf',
  'application/pdf',
  3.93,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'ankh 8 9 t obenga calcul du volume pyramide',
  'importe',
  'spiritualite-raw',
  'Egyptologie\ankh_8_9_t_obenga_calcul du volume pyramide.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Cheikh Anta Diop_Egypte et identité africaine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Cheikh Anta Diop_Egypte et identité africaine.pdf',
  'Cheikh Anta Diop_Egypte et identité africaine.pdf',
  'pdf',
  'application/pdf',
  0.46,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Cheikh Anta Diop Egypte et identité africaine',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Cheikh Anta Diop_Egypte et identité africaine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\compte rendu colloque du Caire de 1974_Peuplement de l''égypte ancienne_Tcheik Anta DIop.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\compte rendu colloque du Caire de 1974_Peuplement de l''égypte ancienne_Tcheik Anta DIop.pdf',
  'compte rendu colloque du Caire de 1974_Peuplement de l''égypte ancienne_Tcheik Anta DIop.pdf',
  'pdf',
  'application/pdf',
  10.63,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'compte rendu colloque du Caire de 1974 Peuplement de l''égypte ancienne Tcheik Anta DIop',
  'importe',
  'spiritualite-raw',
  'Egyptologie\compte rendu colloque du Caire de 1974_Peuplement de l''égypte ancienne_Tcheik Anta DIop.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Conbat anbigu et cheikh Anta Diop.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Conbat anbigu et cheikh Anta Diop.pdf',
  'Conbat anbigu et cheikh Anta Diop.pdf',
  'pdf',
  'application/pdf',
  1.47,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Conbat anbigu et cheikh Anta Diop',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Conbat anbigu et cheikh Anta Diop.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\DictionaryOfMiddleEgyptian.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\DictionaryOfMiddleEgyptian.pdf',
  'DictionaryOfMiddleEgyptian.pdf',
  'pdf',
  'application/pdf',
  18.35,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'DictionaryOfMiddleEgyptian',
  'importe',
  'spiritualite-raw',
  'Egyptologie\DictionaryOfMiddleEgyptian.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\DICTIONNAIRE HIEROGLYPHES.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\DICTIONNAIRE HIEROGLYPHES.pdf',
  'DICTIONNAIRE HIEROGLYPHES.pdf',
  'pdf',
  'application/pdf',
  17.77,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'DICTIONNAIRE HIEROGLYPHES',
  'importe',
  'spiritualite-raw',
  'Egyptologie\DICTIONNAIRE HIEROGLYPHES.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Easy Lessons in Egyptian Hieroglyphics.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Easy Lessons in Egyptian Hieroglyphics.pdf',
  'Easy Lessons in Egyptian Hieroglyphics.pdf',
  'pdf',
  'application/pdf',
  5.52,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Easy Lessons in Egyptian Hieroglyphics',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Easy Lessons in Egyptian Hieroglyphics.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\egyptiangrammarw00ermauoft.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\egyptiangrammarw00ermauoft.pdf',
  'egyptiangrammarw00ermauoft.pdf',
  'pdf',
  'application/pdf',
  8.69,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'egyptiangrammarw00ermauoft',
  'importe',
  'spiritualite-raw',
  'Egyptologie\egyptiangrammarw00ermauoft.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\egyptianreadingb00budguoft.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\egyptianreadingb00budguoft.pdf',
  'egyptianreadingb00budguoft.pdf',
  'pdf',
  'application/pdf',
  29.11,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'egyptianreadingb00budguoft',
  'importe',
  'spiritualite-raw',
  'Egyptologie\egyptianreadingb00budguoft.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\final_THESE_TATA.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\final_THESE_TATA.pdf',
  'final_THESE_TATA.pdf',
  'pdf',
  'application/pdf',
  6.62,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'final THESE TATA',
  'importe',
  'spiritualite-raw',
  'Egyptologie\final_THESE_TATA.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\First Steps in Egyptian Hieroglyphics.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\First Steps in Egyptian Hieroglyphics.pdf',
  'First Steps in Egyptian Hieroglyphics.pdf',
  'pdf',
  'application/pdf',
  45.29,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'First Steps in Egyptian Hieroglyphics',
  'importe',
  'spiritualite-raw',
  'Egyptologie\First Steps in Egyptian Hieroglyphics.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\GUGLIELMI_2010_L''Égyptien_Hiéroglyphique_OCR.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\GUGLIELMI_2010_L''Égyptien_Hiéroglyphique_OCR.pdf',
  'GUGLIELMI_2010_L''Égyptien_Hiéroglyphique_OCR.pdf',
  'pdf',
  'application/pdf',
  30.77,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'GUGLIELMI 2010 L''Égyptien Hiéroglyphique OCR',
  'importe',
  'spiritualite-raw',
  'Egyptologie\GUGLIELMI_2010_L''Égyptien_Hiéroglyphique_OCR.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\introductionl00maspuoft.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\introductionl00maspuoft.pdf',
  'introductionl00maspuoft.pdf',
  'pdf',
  'application/pdf',
  10.55,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'introductionl00maspuoft',
  'importe',
  'spiritualite-raw',
  'Egyptologie\introductionl00maspuoft.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\introductionlt00sott.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\introductionlt00sott.pdf',
  'introductionlt00sott.pdf',
  'pdf',
  'application/pdf',
  10.21,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'introductionlt00sott',
  'importe',
  'spiritualite-raw',
  'Egyptologie\introductionlt00sott.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\langue_egyptienne_pharaonique_signes_hieroglyphiques.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\langue_egyptienne_pharaonique_signes_hieroglyphiques.pdf',
  'langue_egyptienne_pharaonique_signes_hieroglyphiques.pdf',
  'pdf',
  'application/pdf',
  1.36,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'langue egyptienne pharaonique signes hieroglyphiques',
  'importe',
  'spiritualite-raw',
  'Egyptologie\langue_egyptienne_pharaonique_signes_hieroglyphiques.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Langues-Lancon.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Langues-Lancon.pdf',
  'Langues-Lancon.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Langues Lancon',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Langues-Lancon.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\LES_XV_TABLETTES_DE_THOTH_T_A_B_L_E_I.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\LES_XV_TABLETTES_DE_THOTH_T_A_B_L_E_I.pdf',
  'LES_XV_TABLETTES_DE_THOTH_T_A_B_L_E_I.pdf',
  'pdf',
  'application/pdf',
  0.29,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'LES XV TABLETTES DE THOTH T A B L E I',
  'importe',
  'spiritualite-raw',
  'Egyptologie\LES_XV_TABLETTES_DE_THOTH_T_A_B_L_E_I.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\lescontespopulai00masp.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\lescontespopulai00masp.pdf',
  'lescontespopulai00masp.pdf',
  'pdf',
  'application/pdf',
  16.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'lescontespopulai00masp',
  'importe',
  'spiritualite-raw',
  'Egyptologie\lescontespopulai00masp.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\papyrusofanirepr01budg.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\papyrusofanirepr01budg.pdf',
  'papyrusofanirepr01budg.pdf',
  'pdf',
  'application/pdf',
  27.3,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'papyrusofanirepr01budg',
  'importe',
  'spiritualite-raw',
  'Egyptologie\papyrusofanirepr01budg.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\shortegyptiangra00roed.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\shortegyptiangra00roed.pdf',
  'shortegyptiangra00roed.pdf',
  'pdf',
  'application/pdf',
  8.49,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'shortegyptiangra00roed',
  'importe',
  'spiritualite-raw',
  'Egyptologie\shortegyptiangra00roed.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\TousVosLivres - Dictionnaire Hieroglyphes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\TousVosLivres - Dictionnaire Hieroglyphes.pdf',
  'TousVosLivres - Dictionnaire Hieroglyphes.pdf',
  'pdf',
  'application/pdf',
  2.56,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'TousVosLivres   Dictionnaire Hieroglyphes',
  'importe',
  'spiritualite-raw',
  'Egyptologie\TousVosLivres - Dictionnaire Hieroglyphes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Traité d''Isis et d''Osiris de Plutarque.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Traité d''Isis et d''Osiris de Plutarque.pdf',
  'Traité d''Isis et d''Osiris de Plutarque.pdf',
  'pdf',
  'application/pdf',
  10.07,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Traité d''Isis et d''Osiris de Plutarque',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Traité d''Isis et d''Osiris de Plutarque.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\tutankhamenameni00budguoft.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\tutankhamenameni00budguoft.pdf',
  'tutankhamenameni00budguoft.pdf',
  'pdf',
  'application/pdf',
  8.2,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'tutankhamenameni00budguoft',
  'importe',
  'spiritualite-raw',
  'Egyptologie\tutankhamenameni00budguoft.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie\Vocabulary to the tebhan recension.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Egyptologie\Vocabulary to the tebhan recension.pdf',
  'Vocabulary to the tebhan recension.pdf',
  'pdf',
  'application/pdf',
  36.77,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie',
  'Vocabulary to the tebhan recension',
  'importe',
  'spiritualite-raw',
  'Egyptologie\Vocabulary to the tebhan recension.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-1.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-1.pdf',
  'pdf',
  'application/pdf',
  20.88,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 1',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-2.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-2.pdf',
  'pdf',
  'application/pdf',
  23.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 2',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-3.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-3.pdf',
  'pdf',
  'application/pdf',
  8.91,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 3',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-4.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-4.pdf',
  'pdf',
  'application/pdf',
  12.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 4',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-5.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-5.pdf',
  'pdf',
  'application/pdf',
  20.79,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 5',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-6.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-6.pdf',
  'pdf',
  'application/pdf',
  14.67,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 6',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-7.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-7.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-7.pdf',
  'pdf',
  'application/pdf',
  11.93,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 7',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-7.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-8.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-8.pdf',
  'Histoire_Generale_de_l_Afrique_TOME-8.pdf',
  'pdf',
  'application/pdf',
  16.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO',
  'Histoire Generale de l Afrique TOME 8',
  'importe',
  'spiritualite-raw',
  'HISTOIRE GENERALE DE L''AFRIQUE UNESCO\Histoire_Generale_de_l_Afrique_TOME-8.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\ARTE Les trésors perdus de Salomon !.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\ARTE Les trésors perdus de Salomon !.wmv',
  'ARTE Les trésors perdus de Salomon !.wmv',
  'wmv',
  'video/x-ms-wmv',
  108.83,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'ARTE Les trésors perdus de Salomon !',
  'importe',
  'spiritualite-raw',
  'kabbale\ARTE Les trésors perdus de Salomon !.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Cosmogonie selon la Kabbale - Univers et Mystères.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Cosmogonie selon la Kabbale - Univers et Mystères.wmv',
  'Cosmogonie selon la Kabbale - Univers et Mystères.wmv',
  'wmv',
  'video/x-ms-wmv',
  145.53,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Cosmogonie selon la Kabbale   Univers et Mystères',
  'importe',
  'spiritualite-raw',
  'kabbale\Cosmogonie selon la Kabbale - Univers et Mystères.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Introduction au Zohar  Le fond de la cabale par Charles Mopsik.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Introduction au Zohar  Le fond de la cabale par Charles Mopsik.wmv',
  'Introduction au Zohar  Le fond de la cabale par Charles Mopsik.wmv',
  'wmv',
  'video/x-ms-wmv',
  268.58,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Introduction au Zohar  Le fond de la cabale par Charles Mopsik',
  'importe',
  'spiritualite-raw',
  'kabbale\Introduction au Zohar  Le fond de la cabale par Charles Mopsik.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Le Temple de Salomon La mystérieuse Tablette du Roi Joas.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Le Temple de Salomon La mystérieuse Tablette du Roi Joas.wmv',
  'Le Temple de Salomon La mystérieuse Tablette du Roi Joas.wmv',
  'wmv',
  'video/x-ms-wmv',
  442.52,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Le Temple de Salomon La mystérieuse Tablette du Roi Joas',
  'importe',
  'spiritualite-raw',
  'kabbale\Le Temple de Salomon La mystérieuse Tablette du Roi Joas.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\LHistoire de la cabale.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\LHistoire de la cabale.wmv',
  'LHistoire de la cabale.wmv',
  'wmv',
  'video/x-ms-wmv',
  351.35,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'LHistoire de la cabale',
  'importe',
  'spiritualite-raw',
  'kabbale\LHistoire de la cabale.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Méditation LArbre de Vie du Monde.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Méditation LArbre de Vie du Monde.wmv',
  'Méditation LArbre de Vie du Monde.wmv',
  'wmv',
  'video/x-ms-wmv',
  262.13,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Méditation LArbre de Vie du Monde',
  'importe',
  'spiritualite-raw',
  'kabbale\Méditation LArbre de Vie du Monde.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Nicolas Flamel alchimie magie divine et rêves dOr - Documentaire.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Nicolas Flamel alchimie magie divine et rêves dOr - Documentaire.wmv',
  'Nicolas Flamel alchimie magie divine et rêves dOr - Documentaire.wmv',
  'wmv',
  'video/x-ms-wmv',
  246.59,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Nicolas Flamel alchimie magie divine et rêves dOr   Documentaire',
  'importe',
  'spiritualite-raw',
  'kabbale\Nicolas Flamel alchimie magie divine et rêves dOr - Documentaire.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'kabbale\Patrick Burensteinas - Les Eléments - 12 - 012010.wmv',
  'D:\CLONE_SPIRITUALITE_20260922\kabbale\Patrick Burensteinas - Les Eléments - 12 - 012010.wmv',
  'Patrick Burensteinas - Les Eléments - 12 - 012010.wmv',
  'wmv',
  'video/x-ms-wmv',
  102.41,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'kabbale',
  'Patrick Burensteinas   Les Eléments   12   012010',
  'importe',
  'spiritualite-raw',
  'kabbale\Patrick Burensteinas - Les Eléments - 12 - 012010.wmv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\[Nephilim]Les_Sciences_Occultes_-_La_Magie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\[Nephilim]Les_Sciences_Occultes_-_La_Magie.pdf',
  '[Nephilim]Les_Sciences_Occultes_-_La_Magie.pdf',
  'pdf',
  'application/pdf',
  53.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '[Nephilim]Les Sciences Occultes   La Magie',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\[Nephilim]Les_Sciences_Occultes_-_La_Magie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\1951-cours-zodiacal.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\1951-cours-zodiacal.pdf',
  '1951-cours-zodiacal.pdf',
  'pdf',
  'application/pdf',
  0.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '1951 cours zodiacal',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\1951-cours-zodiacal.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\2017_6_osiris_dossier_de_presse.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\2017_6_osiris_dossier_de_presse.pdf',
  '2017_6_osiris_dossier_de_presse.pdf',
  'pdf',
  'application/pdf',
  0.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '2017 6 osiris dossier de presse',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\2017_6_osiris_dossier_de_presse.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\20220311_guide_controle_interne.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\20220311_guide_controle_interne.pdf',
  '20220311_guide_controle_interne.pdf',
  'pdf',
  'application/pdf',
  0.86,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '20220311 guide controle interne',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\20220311_guide_controle_interne.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\30 premiers litanies.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\30 premiers litanies.pdf',
  '30 premiers litanies.pdf',
  'pdf',
  'application/pdf',
  24.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '30 premiers litanies',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\30 premiers litanies.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\51242862.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\51242862.pdf',
  '51242862.pdf',
  'pdf',
  'application/pdf',
  18.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '51242862',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\51242862.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\67765-le-dragon-rouge-editions-et-reception-d-un-grimoire-a-l-epoque-contemporaine.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\67765-le-dragon-rouge-editions-et-reception-d-un-grimoire-a-l-epoque-contemporaine.pdf',
  '67765-le-dragon-rouge-editions-et-reception-d-un-grimoire-a-l-epoque-contemporaine.pdf',
  'pdf',
  'application/pdf',
  3.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '67765 le dragon rouge editions et reception d un grimoire a l epoque contemporaine',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\67765-le-dragon-rouge-editions-et-reception-d-un-grimoire-a-l-epoque-contemporaine.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\79_yi-jing-le-livre-des-transformations.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\79_yi-jing-le-livre-des-transformations.pdf',
  '79_yi-jing-le-livre-des-transformations.pdf',
  'pdf',
  'application/pdf',
  3.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '79 yi jing le livre des transformations',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\79_yi-jing-le-livre-des-transformations.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\7rgW5wzNZ2M-PKqK3cjSjDIiSxA.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\7rgW5wzNZ2M-PKqK3cjSjDIiSxA.pdf',
  '7rgW5wzNZ2M-PKqK3cjSjDIiSxA.pdf',
  'pdf',
  'application/pdf',
  2.32,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '7rgW5wzNZ2M PKqK3cjSjDIiSxA',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\7rgW5wzNZ2M-PKqK3cjSjDIiSxA.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\81_bardo-tho-dol-le-livre-des-morts-tibetain.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\81_bardo-tho-dol-le-livre-des-morts-tibetain.pdf',
  '81_bardo-tho-dol-le-livre-des-morts-tibetain.pdf',
  'pdf',
  'application/pdf',
  1.77,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '81 bardo tho dol le livre des morts tibetain',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\81_bardo-tho-dol-le-livre-des-morts-tibetain.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\83_dhammapada-paroles-du-bouddha.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\83_dhammapada-paroles-du-bouddha.pdf',
  '83_dhammapada-paroles-du-bouddha.pdf',
  'pdf',
  'application/pdf',
  0.32,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '83 dhammapada paroles du bouddha',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\83_dhammapada-paroles-du-bouddha.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\86_popol-vuh-francais.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\86_popol-vuh-francais.pdf',
  '86_popol-vuh-francais.pdf',
  'pdf',
  'application/pdf',
  6.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '86 popol vuh francais',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\86_popol-vuh-francais.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\87_tao-te-ching-francais.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\87_tao-te-ching-francais.pdf',
  '87_tao-te-ching-francais.pdf',
  'pdf',
  'application/pdf',
  0.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '87 tao te ching francais',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\87_tao-te-ching-francais.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\88_le-livre-des-morts-des-anciens-e-gyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\88_le-livre-des-morts-des-anciens-e-gyptiens.pdf',
  '88_le-livre-des-morts-des-anciens-e-gyptiens.pdf',
  'pdf',
  'application/pdf',
  4.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  '88 le livre des morts des anciens e gyptiens',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\88_le-livre-des-morts-des-anciens-e-gyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Ange LELAHEL.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Ange LELAHEL.docx',
  'Ange LELAHEL.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Ange LELAHEL',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Ange LELAHEL.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\BARDO THODOL.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\BARDO THODOL.pdf',
  'BARDO THODOL.pdf',
  'pdf',
  'application/pdf',
  21.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'BARDO THODOL',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\BARDO THODOL.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Cahier de l''Adepte.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Cahier de l''Adepte.pdf',
  'Cahier de l''Adepte.pdf',
  'pdf',
  'application/pdf',
  0.85,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Cahier de l''Adepte',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Cahier de l''Adepte.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\cp_osiris_total.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\cp_osiris_total.pdf',
  'cp_osiris_total.pdf',
  'pdf',
  'application/pdf',
  5.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'cp osiris total',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\cp_osiris_total.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Décagone.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Décagone.docx',
  'Décagone.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  2.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Décagone',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Décagone.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Dogme et rituel de la Haute Magie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Dogme et rituel de la Haute Magie.pdf',
  'Dogme et rituel de la Haute Magie.pdf',
  'pdf',
  'application/pdf',
  21.76,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Dogme et rituel de la Haute Magie',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Dogme et rituel de la Haute Magie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Enseignements Kabbalistiques GD.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Enseignements Kabbalistiques GD.pdf',
  'Enseignements Kabbalistiques GD.pdf',
  'pdf',
  'application/pdf',
  19.73,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Enseignements Kabbalistiques GD',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Enseignements Kabbalistiques GD.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\grand-euchologe-francais_9100283.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\grand-euchologe-francais_9100283.pdf',
  'grand-euchologe-francais_9100283.pdf',
  'pdf',
  'application/pdf',
  2.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'grand euchologe francais 9100283',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\grand-euchologe-francais_9100283.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Hommes en larmes-egypte.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Hommes en larmes-egypte.pdf',
  'Hommes en larmes-egypte.pdf',
  'pdf',
  'application/pdf',
  12.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Hommes en larmes egypte',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Hommes en larmes-egypte.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Initiation aux secrets de la Magie Israel Regardie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Initiation aux secrets de la Magie Israel Regardie.pdf',
  'Initiation aux secrets de la Magie Israel Regardie.pdf',
  'pdf',
  'application/pdf',
  0.79,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Initiation aux secrets de la Magie Israel Regardie',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Initiation aux secrets de la Magie Israel Regardie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Jamblique mystères égyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Jamblique mystères égyptiens.pdf',
  'Jamblique mystères égyptiens.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Jamblique mystères égyptiens',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Jamblique mystères égyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Kabbale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Kabbale.pdf',
  'Kabbale.pdf',
  'pdf',
  'application/pdf',
  1.8,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Livres sacrés',
  'Kabbale',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Kabbale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\L-Initiation-Traditionnelle-2014-numero-4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\L-Initiation-Traditionnelle-2014-numero-4.pdf',
  'L-Initiation-Traditionnelle-2014-numero-4.pdf',
  'pdf',
  'application/pdf',
  1.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'L Initiation Traditionnelle 2014 numero 4',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\L-Initiation-Traditionnelle-2014-numero-4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\L''alphabet Hébraique.docx',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\L''alphabet Hébraique.docx',
  'L''alphabet Hébraique.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.82,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'L''alphabet Hébraique',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\L''alphabet Hébraique.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\La Kabbale Pratique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\La Kabbale Pratique.pdf',
  'La Kabbale Pratique.pdf',
  'pdf',
  'application/pdf',
  30.65,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Livres sacrés',
  'La Kabbale Pratique',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\La Kabbale Pratique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Le Kybalion.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Le Kybalion.pdf',
  'Le Kybalion.pdf',
  'pdf',
  'application/pdf',
  96.2,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Le Kybalion',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Le Kybalion.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Les_mystères_de_l''Égypte_dévoilés_[...]Audouard_Olympe_bpt6k104127x (1).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Les_mystères_de_l''Égypte_dévoilés_[...]Audouard_Olympe_bpt6k104127x (1).pdf',
  'Les_mystères_de_l''Égypte_dévoilés_[...]Audouard_Olympe_bpt6k104127x (1).pdf',
  'pdf',
  'application/pdf',
  14.98,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Les mystères de l''Égypte dévoilés [...]Audouard Olympe bpt6k104127x (1)',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Les_mystères_de_l''Égypte_dévoilés_[...]Audouard_Olympe_bpt6k104127x (1).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\los-magos-de-la-golden-dawn_compress (1).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\los-magos-de-la-golden-dawn_compress (1).pdf',
  'los-magos-de-la-golden-dawn_compress (1).pdf',
  'pdf',
  'application/pdf',
  1.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'los magos de la golden dawn compress (1)',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\los-magos-de-la-golden-dawn_compress (1).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Maat Assmann.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Maat Assmann.pdf',
  'Maat Assmann.pdf',
  'pdf',
  'application/pdf',
  0.28,
  (select id from piliers where code='MAAT'),
  'Verite',
  'Livres sacrés',
  'Maat Assmann',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Maat Assmann.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Mystère de la vie et de la mort.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Mystère de la vie et de la mort.pdf',
  'Mystère de la vie et de la mort.pdf',
  'pdf',
  'application/pdf',
  7.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Mystère de la vie et de la mort',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Mystère de la vie et de la mort.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Mystères egyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Mystères egyptiens.pdf',
  'Mystères egyptiens.pdf',
  'pdf',
  'application/pdf',
  8.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Mystères egyptiens',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Mystères egyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Notion d''éternité.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Notion d''éternité.pdf',
  'Notion d''éternité.pdf',
  'pdf',
  'application/pdf',
  5.82,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Notion d''éternité',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Notion d''éternité.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf',
  'pdf',
  'application/pdf',
  56.67,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'pdfcoffee.com les rituels magiques de l ordre hermetique de la golden dawn pdf free',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\pdfcoffee.com_les-rituels-magiques-de-l-ordre-hermetique-de-la-golden-dawn-pdf-free.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Pratique_magie_sacree_au_quotidien_A_Moryason.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Pratique_magie_sacree_au_quotidien_A_Moryason.pdf',
  'Pratique_magie_sacree_au_quotidien_A_Moryason.pdf',
  'pdf',
  'application/pdf',
  4.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Pratique magie sacree au quotidien A Moryason',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Pratique_magie_sacree_au_quotidien_A_Moryason.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Regardie - The Complete Golden Dawn.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Regardie - The Complete Golden Dawn.pdf',
  'Regardie - The Complete Golden Dawn.pdf',
  'pdf',
  'application/pdf',
  33.25,
  (select id from piliers where code='AETHER'),
  'Golden Dawn',
  'Livres sacrés',
  'Regardie   The Complete Golden Dawn',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Regardie - The Complete Golden Dawn.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Roulin_1996_Le_Livre_de_la_Nuit_I.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Roulin_1996_Le_Livre_de_la_Nuit_I.pdf',
  'Roulin_1996_Le_Livre_de_la_Nuit_I.pdf',
  'pdf',
  'application/pdf',
  33.93,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Roulin 1996 Le Livre de la Nuit I',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Roulin_1996_Le_Livre_de_la_Nuit_I.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\SCDMED_T_2001_HENNEQUIN_PASCAL.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\SCDMED_T_2001_HENNEQUIN_PASCAL.pdf',
  'SCDMED_T_2001_HENNEQUIN_PASCAL.pdf',
  'pdf',
  'application/pdf',
  10.86,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'SCDMED T 2001 HENNEQUIN PASCAL',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\SCDMED_T_2001_HENNEQUIN_PASCAL.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\SEPHER HA ZOHAR.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\SEPHER HA ZOHAR.pdf',
  'SEPHER HA ZOHAR.pdf',
  'pdf',
  'application/pdf',
  17.87,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'SEPHER HA ZOHAR',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\SEPHER HA ZOHAR.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Steiner Rudolf - Mythes et mystères égyptiens.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Steiner Rudolf - Mythes et mystères égyptiens.pdf',
  'Steiner Rudolf - Mythes et mystères égyptiens.pdf',
  'pdf',
  'application/pdf',
  7.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Steiner Rudolf   Mythes et mystères égyptiens',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Steiner Rudolf - Mythes et mystères égyptiens.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Synthèse-de-la-Grande-Invocation.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Synthèse-de-la-Grande-Invocation.pdf',
  'Synthèse-de-la-Grande-Invocation.pdf',
  'pdf',
  'application/pdf',
  1.48,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Synthèse de la Grande Invocation',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Synthèse-de-la-Grande-Invocation.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Traité élémentaire de magie pratique.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Traité élémentaire de magie pratique.pdf',
  'Traité élémentaire de magie pratique.pdf',
  'pdf',
  'application/pdf',
  19.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Traité élémentaire de magie pratique',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Traité élémentaire de magie pratique.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Livres sacrés\Zohar en EN.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\Livres sacrés\Zohar en EN.pdf',
  'Zohar en EN.pdf',
  'pdf',
  'application/pdf',
  2.87,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'Livres sacrés',
  'Zohar en EN',
  'importe',
  'spiritualite-raw',
  'Livres sacrés\Zohar en EN.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Arbre kabbalistique de la vie.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Arbre kabbalistique de la vie.doc',
  'Arbre kabbalistique de la vie.doc',
  'doc',
  'application/msword',
  0.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Arbre kabbalistique de la vie',
  'importe',
  'spiritualite-raw',
  'ONTO\Arbre kabbalistique de la vie.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\cadeau citation.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\cadeau citation.pdf',
  'cadeau citation.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'cadeau citation',
  'importe',
  'spiritualite-raw',
  'ONTO\cadeau citation.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Dossier Parapsychologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Dossier Parapsychologie.pdf',
  'Dossier Parapsychologie.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Dossier Parapsychologie',
  'importe',
  'spiritualite-raw',
  'ONTO\Dossier Parapsychologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\illuminatis.DAT',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\illuminatis.DAT',
  'illuminatis.DAT',
  'dat',
  'application/octet-stream',
  602.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'illuminatis',
  'importe',
  'spiritualite-raw',
  'ONTO\illuminatis.DAT'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\La Fraternité Blanche Universelle.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\La Fraternité Blanche Universelle.doc',
  'La Fraternité Blanche Universelle.doc',
  'doc',
  'application/msword',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'La Fraternité Blanche Universelle',
  'importe',
  'spiritualite-raw',
  'ONTO\La Fraternité Blanche Universelle.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\maât.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\maât.pdf',
  'maât.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'maât',
  'importe',
  'spiritualite-raw',
  'ONTO\maât.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Nombres; symbilisme et propriétés.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Nombres; symbilisme et propriétés.doc',
  'Nombres; symbilisme et propriétés.doc',
  'doc',
  'application/msword',
  1.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Nombres; symbilisme et propriétés',
  'importe',
  'spiritualite-raw',
  'ONTO\Nombres; symbilisme et propriétés.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Omraam.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Omraam.doc',
  'Omraam.doc',
  'doc',
  'application/msword',
  0.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Omraam',
  'importe',
  'spiritualite-raw',
  'ONTO\Omraam.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\On A Pas Marché Sur la Lune.avi',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\On A Pas Marché Sur la Lune.avi',
  'On A Pas Marché Sur la Lune.avi',
  'avi',
  'application/octet-stream',
  392.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'On A Pas Marché Sur la Lune',
  'importe',
  'spiritualite-raw',
  'ONTO\On A Pas Marché Sur la Lune.avi'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\PDF-egypte-ancienne-et-ses-dieux-dictionnaire-de-corteggiani.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\PDF-egypte-ancienne-et-ses-dieux-dictionnaire-de-corteggiani.pdf',
  'PDF-egypte-ancienne-et-ses-dieux-dictionnaire-de-corteggiani.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'PDF egypte ancienne et ses dieux dictionnaire de corteggiani',
  'importe',
  'spiritualite-raw',
  'ONTO\PDF-egypte-ancienne-et-ses-dieux-dictionnaire-de-corteggiani.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Plan maison 3_4 lot.xlsx',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Plan maison 3_4 lot.xlsx',
  'Plan maison 3_4 lot.xlsx',
  'xlsx',
  'application/octet-stream',
  0.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Plan maison 3 4 lot',
  'importe',
  'spiritualite-raw',
  'ONTO\Plan maison 3_4 lot.xlsx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Tarot, signification 0-22.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Tarot, signification 0-22.doc',
  'Tarot, signification 0-22.doc',
  'doc',
  'application/msword',
  0.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Tarot, signification 0 22',
  'importe',
  'spiritualite-raw',
  'ONTO\Tarot, signification 0-22.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Temple Egyptien.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Temple Egyptien.pdf',
  'Temple Egyptien.pdf',
  'pdf',
  'application/pdf',
  0.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'Temple Egyptien',
  'importe',
  'spiritualite-raw',
  'ONTO\Temple Egyptien.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\yoga1.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\yoga1.doc',
  'yoga1.doc',
  'doc',
  'application/msword',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'yoga1',
  'importe',
  'spiritualite-raw',
  'ONTO\yoga1.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\yoga1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\yoga1.pdf',
  'yoga1.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO',
  'yoga1',
  'importe',
  'spiritualite-raw',
  'ONTO\yoga1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\1 Ardents Feu.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\1 Ardents Feu.pdf',
  '1 Ardents Feu.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  '1 Ardents Feu',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\1 Ardents Feu.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\1er_atrium.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\1er_atrium.pdf',
  '1er_atrium.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  '1er atrium',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\1er_atrium.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\2 Authentiques Eau.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\2 Authentiques Eau.pdf',
  '2 Authentiques Eau.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  '2 Authentiques Eau',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\2 Authentiques Eau.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\3 Réalistes.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\3 Réalistes.pdf',
  '3 Réalistes.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  '3 Réalistes',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\3 Réalistes.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\4 Utopistes Air.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\4 Utopistes Air.pdf',
  '4 Utopistes Air.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  '4 Utopistes Air',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\4 Utopistes Air.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c01_com1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c01_com1.pdf',
  'c01_com1.pdf',
  'pdf',
  'application/pdf',
  0.6,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c01 com1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c01_com1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c01_com2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c01_com2.pdf',
  'c01_com2.pdf',
  'pdf',
  'application/pdf',
  0.29,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c01 com2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c01_com2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c01_com3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c01_com3.pdf',
  'c01_com3.pdf',
  'pdf',
  'application/pdf',
  0.31,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c01 com3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c01_com3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02 com10.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02 com10.pdf',
  'c02 com10.pdf',
  'pdf',
  'application/pdf',
  0.5,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com10',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02 com10.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com1.pdf',
  'c02_com1.pdf',
  'pdf',
  'application/pdf',
  0.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com2.pdf',
  'c02_com2.pdf',
  'pdf',
  'application/pdf',
  0.53,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com3.pdf',
  'c02_com3.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com4.pdf',
  'c02_com4.pdf',
  'pdf',
  'application/pdf',
  0.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com4',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com5.pdf',
  'c02_com5.pdf',
  'pdf',
  'application/pdf',
  0.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com5',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com6.pdf',
  'c02_com6.pdf',
  'pdf',
  'application/pdf',
  0.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com6',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com7.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com7.pdf',
  'c02_com7.pdf',
  'pdf',
  'application/pdf',
  1.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com7',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com7.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c02_com8.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c02_com8.pdf',
  'c02_com8.pdf',
  'pdf',
  'application/pdf',
  0.55,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c02 com8',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c02_com8.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com1.pdf',
  'c03 com1.pdf',
  'pdf',
  'application/pdf',
  0.66,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com10.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com10.pdf',
  'c03 com10.pdf',
  'pdf',
  'application/pdf',
  0.77,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com10',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com10.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com11.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com11.pdf',
  'c03 com11.pdf',
  'pdf',
  'application/pdf',
  0.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com11',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com11.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy - Copy.pdf',
  'c03 com2 - Copy - Copy - Copy - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy   Copy   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy.pdf',
  'c03 com2 - Copy - Copy - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy.pdf',
  'c03 com2 - Copy - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy - Copy.pdf',
  'c03 com2 - Copy - Copy (2) - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy (2)   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy.pdf',
  'c03 com2 - Copy - Copy (2) - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy (2)   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2) - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2).pdf',
  'c03 com2 - Copy - Copy (2).pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy (2)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (3).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy (3).pdf',
  'c03 com2 - Copy - Copy (3).pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy (3)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy (3).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy - Copy.pdf',
  'c03 com2 - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy (2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy (2).pdf',
  'c03 com2 - Copy (2).pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy (2)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy (2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2 - Copy.pdf',
  'c03 com2 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com2.pdf',
  'c03 com2.pdf',
  'pdf',
  'application/pdf',
  0.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com3 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com3 - Copy.pdf',
  'c03 com3 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com3   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com3 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com3.pdf',
  'c03 com3.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com4 - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com4 - Copy - Copy.pdf',
  'c03 com4 - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com4   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com4 - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com4 - Copy (2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com4 - Copy (2).pdf',
  'c03 com4 - Copy (2).pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com4   Copy (2)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com4 - Copy (2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com4 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com4 - Copy.pdf',
  'c03 com4 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com4   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com4 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03 com4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03 com4.pdf',
  'c03 com4.pdf',
  'pdf',
  'application/pdf',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com4',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03 com4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com5 - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com5 - Copy - Copy.pdf',
  'c03_com5 - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com5   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com5 - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com5 - Copy (2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com5 - Copy (2).pdf',
  'c03_com5 - Copy (2).pdf',
  'pdf',
  'application/pdf',
  0.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com5   Copy (2)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com5 - Copy (2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com5 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com5 - Copy.pdf',
  'c03_com5 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com5   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com5 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com5.pdf',
  'c03_com5.pdf',
  'pdf',
  'application/pdf',
  0.59,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com5',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com6.pdf',
  'c03_com6.pdf',
  'pdf',
  'application/pdf',
  0.63,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com6',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com7 - Copy - Copy - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com7 - Copy - Copy - Copy.pdf',
  'c03_com7 - Copy - Copy - Copy.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com7   Copy   Copy   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com7 - Copy - Copy - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com7 - Copy (2).pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com7 - Copy (2).pdf',
  'c03_com7 - Copy (2).pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com7   Copy (2)',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com7 - Copy (2).pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com7 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com7 - Copy.pdf',
  'c03_com7 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com7   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com7 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03_com7.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03_com7.pdf',
  'c03_com7.pdf',
  'pdf',
  'application/pdf',
  0.41,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com7',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03_com7.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03-com8 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03-com8 - Copy.pdf',
  'c03-com8 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com8   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03-com8 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03-com8.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03-com8.pdf',
  'c03-com8.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com8',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03-com8.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03-com9 - Copy.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03-com9 - Copy.pdf',
  'c03-com9 - Copy.pdf',
  'pdf',
  'application/pdf',
  0.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com9   Copy',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03-com9 - Copy.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c03-com9.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c03-com9.pdf',
  'c03-com9.pdf',
  'pdf',
  'application/pdf',
  0.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c03 com9',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c03-com9.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c04_com1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c04_com1.pdf',
  'c04_com1.pdf',
  'pdf',
  'application/pdf',
  0.72,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c04 com1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c04_com1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c04_com2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c04_com2.pdf',
  'c04_com2.pdf',
  'pdf',
  'application/pdf',
  1.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c04 com2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c04_com2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c04_com3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c04_com3.pdf',
  'c04_com3.pdf',
  'pdf',
  'application/pdf',
  1.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c04 com3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c04_com3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c04_com4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c04_com4.pdf',
  'c04_com4.pdf',
  'pdf',
  'application/pdf',
  2.27,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c04 com4',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c04_com4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\c04_com5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\c04_com5.pdf',
  'c04_com5.pdf',
  'pdf',
  'application/pdf',
  1.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'c04 com5',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\c04_com5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\ca1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\ca1.pdf',
  'ca1.pdf',
  'pdf',
  'application/pdf',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'ca1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\ca1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\ca2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\ca2.pdf',
  'ca2.pdf',
  'pdf',
  'application/pdf',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'ca2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\ca2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\ca3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\ca3.pdf',
  'ca3.pdf',
  'pdf',
  'application/pdf',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'ca3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\ca3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\ca4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\ca4.pdf',
  'ca4.pdf',
  'pdf',
  'application/pdf',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'ca4',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\ca4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Charte de bonnes relations humaines au travail.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Charte de bonnes relations humaines au travail.pdf',
  'Charte de bonnes relations humaines au travail.pdf',
  'pdf',
  'application/pdf',
  0.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Charte de bonnes relations humaines au travail',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Charte de bonnes relations humaines au travail.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\couverture.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\couverture.pdf',
  'couverture.pdf',
  'pdf',
  'application/pdf',
  0.32,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'couverture',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\couverture.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\EXPERIENCE 1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\EXPERIENCE 1.pdf',
  'EXPERIENCE 1.pdf',
  'pdf',
  'application/pdf',
  0.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'EXPERIENCE 1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\EXPERIENCE 1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\funebre.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\funebre.pdf',
  'funebre.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'funebre',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\funebre.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\initia_la loge.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\initia_la loge.pdf',
  'initia_la loge.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'initia la loge',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\initia_la loge.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Ins.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Ins.pdf',
  'Ins.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Ins',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Ins.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Plan.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Plan.pdf',
  'Plan.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Plan',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Plan.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\prin.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\prin.pdf',
  'prin.pdf',
  'pdf',
  'application/pdf',
  0.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'prin',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\prin.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet1.pdf',
  'Reflet1.pdf',
  'pdf',
  'application/pdf',
  0.65,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet1',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet10.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet10.pdf',
  'Reflet10.pdf',
  'pdf',
  'application/pdf',
  1.05,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet10',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet10.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet2.pdf',
  'Reflet2.pdf',
  'pdf',
  'application/pdf',
  0.68,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet2',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet3.pdf',
  'Reflet3.pdf',
  'pdf',
  'application/pdf',
  0.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet3',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet4.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet4.pdf',
  'Reflet4.pdf',
  'pdf',
  'application/pdf',
  0.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet4',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet4.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet5.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet5.pdf',
  'Reflet5.pdf',
  'pdf',
  'application/pdf',
  1.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet5',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet5.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet6.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet6.pdf',
  'Reflet6.pdf',
  'pdf',
  'application/pdf',
  1.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet6',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet6.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet7.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet7.pdf',
  'Reflet7.pdf',
  'pdf',
  'application/pdf',
  0.91,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet7',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet7.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet8.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet8.pdf',
  'Reflet8.pdf',
  'pdf',
  'application/pdf',
  0.99,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet8',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet8.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Reflet9.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Reflet9.pdf',
  'Reflet9.pdf',
  'pdf',
  'application/pdf',
  1.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Reflet9',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Reflet9.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\Rituel de cercle.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\Rituel de cercle.pdf',
  'Rituel de cercle.pdf',
  'pdf',
  'application/pdf',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'Rituel de cercle',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\Rituel de cercle.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\rituel de conse.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\rituel de conse.pdf',
  'rituel de conse.pdf',
  'pdf',
  'application/pdf',
  0.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'rituel de conse',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\rituel de conse.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\rituel_loge.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\rituel_loge.pdf',
  'rituel_loge.pdf',
  'pdf',
  'application/pdf',
  0.07,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'rituel loge',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\rituel_loge.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\son_voyelles.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\son_voyelles.pdf',
  'son_voyelles.pdf',
  'pdf',
  'application/pdf',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'son voyelles',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\son_voyelles.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Cénacle R+C\souvenir.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Cénacle R+C\souvenir.pdf',
  'souvenir.pdf',
  'pdf',
  'application/pdf',
  0.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Cénacle R+C',
  'souvenir',
  'importe',
  'spiritualite-raw',
  'ONTO\Cénacle R+C\souvenir.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Doc Eckankar\Eck1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Doc Eckankar\Eck1.pdf',
  'Eck1.pdf',
  'pdf',
  'application/pdf',
  1.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Doc Eckankar',
  'Eck1',
  'importe',
  'spiritualite-raw',
  'ONTO\Doc Eckankar\Eck1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Doc Eckankar\Eck2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Doc Eckankar\Eck2.pdf',
  'Eck2.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Doc Eckankar',
  'Eck2',
  'importe',
  'spiritualite-raw',
  'ONTO\Doc Eckankar\Eck2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\doc hermes\3eme_oeil.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\doc hermes\3eme_oeil.pdf',
  '3eme_oeil.pdf',
  'pdf',
  'application/pdf',
  2.19,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\doc hermes',
  '3eme oeil',
  'importe',
  'spiritualite-raw',
  'ONTO\doc hermes\3eme_oeil.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\doc hermes\adam_et_eve_tome2-partie1.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\doc hermes\adam_et_eve_tome2-partie1.pdf',
  'adam_et_eve_tome2-partie1.pdf',
  'pdf',
  'application/pdf',
  1.54,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\doc hermes',
  'adam et eve tome2 partie1',
  'importe',
  'spiritualite-raw',
  'ONTO\doc hermes\adam_et_eve_tome2-partie1.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\doc hermes\Mots de passe à utiliser.docx',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\doc hermes\Mots de passe à utiliser.docx',
  'Mots de passe à utiliser.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.01,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\doc hermes',
  'Mots de passe à utiliser',
  'importe',
  'spiritualite-raw',
  'ONTO\doc hermes\Mots de passe à utiliser.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\MESSAGES SERGE TOUSSAINT\Messages SERGE TOUSSAINT.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\MESSAGES SERGE TOUSSAINT\Messages SERGE TOUSSAINT.doc',
  'Messages SERGE TOUSSAINT.doc',
  'doc',
  'application/msword',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\MESSAGES SERGE TOUSSAINT',
  'Messages SERGE TOUSSAINT',
  'importe',
  'spiritualite-raw',
  'ONTO\MESSAGES SERGE TOUSSAINT\Messages SERGE TOUSSAINT.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\Mvt Raelien\LeMessagedonneparlesExtra-terrestres.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\Mvt Raelien\LeMessagedonneparlesExtra-terrestres.pdf',
  'LeMessagedonneparlesExtra-terrestres.pdf',
  'pdf',
  'application/pdf',
  1.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\Mvt Raelien',
  'LeMessagedonneparlesExtra terrestres',
  'importe',
  'spiritualite-raw',
  'ONTO\Mvt Raelien\LeMessagedonneparlesExtra-terrestres.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\adresse RC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\adresse RC.pdf',
  'adresse RC.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'adresse RC',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\adresse RC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Confession de Maât.pub',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Confession de Maât.pub',
  'Confession de Maât.pub',
  'pub',
  'application/octet-stream',
  0.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Confession de Maât',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Confession de Maât.pub'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\contribution a la paix.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\contribution a la paix.pdf',
  'contribution a la paix.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'contribution a la paix',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\contribution a la paix.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Declaration devoirs de l''homme.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Declaration devoirs de l''homme.pdf',
  'Declaration devoirs de l''homme.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Declaration devoirs de l''homme',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Declaration devoirs de l''homme.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\entretien_serge_toussaint_RC.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\entretien_serge_toussaint_RC.pdf',
  'entretien_serge_toussaint_RC.pdf',
  'pdf',
  'application/pdf',
  0.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'entretien serge toussaint RC',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\entretien_serge_toussaint_RC.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Femme nue, Femme Noire_L. S. SENGHOR.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Femme nue, Femme Noire_L. S. SENGHOR.pdf',
  'Femme nue, Femme Noire_L. S. SENGHOR.pdf',
  'pdf',
  'application/pdf',
  0.03,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Femme nue, Femme Noire L. S. SENGHOR',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Femme nue, Femme Noire_L. S. SENGHOR.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Histoire du Rosicrucianisme.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Histoire du Rosicrucianisme.doc',
  'Histoire du Rosicrucianisme.doc',
  'doc',
  'application/msword',
  0.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Histoire du Rosicrucianisme',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Histoire du Rosicrucianisme.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Les enseignements de la RC.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Les enseignements de la RC.doc',
  'Les enseignements de la RC.doc',
  'doc',
  'application/msword',
  0.04,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Les enseignements de la RC',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Les enseignements de la RC.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Les-RC-leur-doctrine-2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Les-RC-leur-doctrine-2.pdf',
  'Les-RC-leur-doctrine-2.pdf',
  'pdf',
  'application/pdf',
  0.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Les RC leur doctrine 2',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Les-RC-leur-doctrine-2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\lettre_ouverte_crise_mondiale.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\lettre_ouverte_crise_mondiale.pdf',
  'lettre_ouverte_crise_mondiale.pdf',
  'pdf',
  'application/pdf',
  0.35,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'lettre ouverte crise mondiale',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\lettre_ouverte_crise_mondiale.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\ontologie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\ontologie.pdf',
  'ontologie.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'ontologie',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\ontologie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Pensées de Rose.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Pensées de Rose.doc',
  'Pensées de Rose.doc',
  'doc',
  'application/msword',
  0.14,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Pensées de Rose',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Pensées de Rose.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\photo Serge Toussaint GM.docx',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\photo Serge Toussaint GM.docx',
  'photo Serge Toussaint GM.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'photo Serge Toussaint GM',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\photo Serge Toussaint GM.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\RC et FM.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\RC et FM.doc',
  'RC et FM.doc',
  'doc',
  'application/msword',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'RC et FM',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\RC et FM.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\sons vocaux.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\sons vocaux.pdf',
  'sons vocaux.pdf',
  'pdf',
  'application/pdf',
  3.5,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'sons vocaux',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\sons vocaux.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\Triple_vie_1[1].pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\Triple_vie_1[1].pdf',
  'Triple_vie_1[1].pdf',
  'pdf',
  'application/pdf',
  0.77,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'Triple vie 1[1]',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\Triple_vie_1[1].pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\utopie.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\utopie.pdf',
  'utopie.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC',
  'utopie',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\utopie.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\article_hiver_2004_protec.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\article_hiver_2004_protec.pdf',
  'article_hiver_2004_protec.pdf',
  'pdf',
  'application/pdf',
  0.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'article hiver 2004 protec',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\article_hiver_2004_protec.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\automne_2004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\automne_2004.pdf',
  'automne_2004.pdf',
  'pdf',
  'application/pdf',
  0.17,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'automne 2004',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\automne_2004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\automne_2005.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\automne_2005.pdf',
  'automne_2005.pdf',
  'pdf',
  'application/pdf',
  0.18,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'automne 2005',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\automne_2005.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\automne_2006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\automne_2006.pdf',
  'automne_2006.pdf',
  'pdf',
  'application/pdf',
  0.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'automne 2006',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\automne_2006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\ete_2004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\ete_2004.pdf',
  'ete_2004.pdf',
  'pdf',
  'application/pdf',
  0.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'ete 2004',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\ete_2004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\ete_2005.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\ete_2005.pdf',
  'ete_2005.pdf',
  'pdf',
  'application/pdf',
  0.23,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'ete 2005',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\ete_2005.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\ete_2006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\ete_2006.pdf',
  'ete_2006.pdf',
  'pdf',
  'application/pdf',
  0.25,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'ete 2006',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\ete_2006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\hiver-2005.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\hiver-2005.pdf',
  'hiver-2005.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'hiver 2005',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\hiver-2005.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\hivers_2006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\hivers_2006.pdf',
  'hivers_2006.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'hivers 2006',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\hivers_2006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\printemps_2004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\printemps_2004.pdf',
  'printemps_2004.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'printemps 2004',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\printemps_2004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\printemps_2005.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\printemps_2005.pdf',
  'printemps_2005.pdf',
  'pdf',
  'application/pdf',
  0.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'printemps 2005',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\printemps_2005.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\printemps_2006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\printemps_2006.pdf',
  'printemps_2006.pdf',
  'pdf',
  'application/pdf',
  0.21,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'printemps 2006',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\printemps_2006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\printemps_2007.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\printemps_2007.pdf',
  'printemps_2007.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'printemps 2007',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\printemps_2007.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\rc_222_2007.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\rc_222_2007.pdf',
  'rc_222_2007.pdf',
  'pdf',
  'application/pdf',
  0.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'rc 222 2007',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\rc_222_2007.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\rc_223_%20aut_07.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\rc_223_%20aut_07.pdf',
  'rc_223_%20aut_07.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'rc 223 %20aut 07',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\rc_223_%20aut_07.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\rc_224_%20h_07.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\rc_224_%20h_07.pdf',
  'rc_224_%20h_07.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'rc 224 %20h 07',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\rc_224_%20h_07.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\rc_225_%20p_08.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\rc_225_%20p_08.pdf',
  'rc_225_%20p_08.pdf',
  'pdf',
  'application/pdf',
  1.8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'rc 225 %20p 08',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\rc_225_%20p_08.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\rc_226_ete_08.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\rc_226_ete_08.pdf',
  'rc_226_ete_08.pdf',
  'pdf',
  'application/pdf',
  0.33,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'rc 226 ete 08',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\rc_226_ete_08.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\RC_doc3.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\RC_doc3.pdf',
  'RC_doc3.pdf',
  'pdf',
  'application/pdf',
  0.4,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'RC doc3',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\RC_doc3.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\RC_document.2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\RC_document.2.pdf',
  'RC_document.2.pdf',
  'pdf',
  'application/pdf',
  0.44,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'RC document.2',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\RC_document.2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\bulletins\RC_document.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\bulletins\RC_document.pdf',
  'RC_document.pdf',
  'pdf',
  'application/pdf',
  0.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\bulletins',
  'RC document',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\bulletins\RC_document.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\lumiere-martiniste.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\lumiere-martiniste.pdf',
  'lumiere-martiniste.pdf',
  'pdf',
  'application/pdf',
  0.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'lumiere martiniste',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\lumiere-martiniste.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_11_2003.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_11_2003.pdf',
  'pantacle_11_2003.pdf',
  'pdf',
  'application/pdf',
  0.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 11 2003',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_11_2003.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_12_2004.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_12_2004.pdf',
  'pantacle_12_2004.pdf',
  'pdf',
  'application/pdf',
  0.13,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 12 2004',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_12_2004.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_13_2005.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_13_2005.pdf',
  'pantacle_13_2005.pdf',
  'pdf',
  'application/pdf',
  0.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 13 2005',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_13_2005.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_14_2006.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_14_2006.pdf',
  'pantacle_14_2006.pdf',
  'pdf',
  'application/pdf',
  0.43,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 14 2006',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_14_2006.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_15_2007.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_15_2007.pdf',
  'pantacle_15_2007.pdf',
  'pdf',
  'application/pdf',
  0.61,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 15 2007',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_15_2007.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\pantacle_16_2008.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\pantacle_16_2008.pdf',
  'pantacle_16_2008.pdf',
  'pdf',
  'application/pdf',
  0.12,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'pantacle 16 2008',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\pantacle_16_2008.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\OMT\présentation OMT.doc',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\OMT\présentation OMT.doc',
  'présentation OMT.doc',
  'doc',
  'application/msword',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\OMT',
  'présentation OMT',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\OMT\présentation OMT.doc'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\SALOMON\Chez Mamy - Verveine.mht',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\SALOMON\Chez Mamy - Verveine.mht',
  'Chez Mamy - Verveine.mht',
  'mht',
  'application/octet-stream',
  0.32,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\SALOMON',
  'Chez Mamy   Verveine',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\SALOMON\Chez Mamy - Verveine.mht'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\SALOMON\L''Evangile de paix de Jésus Christ.docx',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\SALOMON\L''Evangile de paix de Jésus Christ.docx',
  'L''Evangile de paix de Jésus Christ.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\SALOMON',
  'L''Evangile de paix de Jésus Christ',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\SALOMON\L''Evangile de paix de Jésus Christ.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\SALOMON\Les secrets merveilleux du petit Albert.docx',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\SALOMON\Les secrets merveilleux du petit Albert.docx',
  'Les secrets merveilleux du petit Albert.docx',
  'docx',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  0.99,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\SALOMON',
  'Les secrets merveilleux du petit Albert',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\SALOMON\Les secrets merveilleux du petit Albert.docx'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\SALOMON\The Veritable Clavicles of Solomon (Les Veritables Clavicules de Salomon) (Abognazar) (EXCERPTS).mht',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\SALOMON\The Veritable Clavicles of Solomon (Les Veritables Clavicules de Salomon) (Abognazar) (EXCERPTS).mht',
  'The Veritable Clavicles of Solomon (Les Veritables Clavicules de Salomon) (Abognazar) (EXCERPTS).mht',
  'mht',
  'application/octet-stream',
  1.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\SALOMON',
  'The Veritable Clavicles of Solomon (Les Veritables Clavicules de Salomon) (Abognazar) (EXCERPTS)',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\SALOMON\The Veritable Clavicles of Solomon (Les Veritables Clavicules de Salomon) (Abognazar) (EXCERPTS).mht'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'ONTO\RC\SALOMON\Tout savoir sur la Verveine ou presque____ - Thé Canelle Orange.mht',
  'D:\CLONE_SPIRITUALITE_20260922\ONTO\RC\SALOMON\Tout savoir sur la Verveine ou presque____ - Thé Canelle Orange.mht',
  'Tout savoir sur la Verveine ou presque____ - Thé Canelle Orange.mht',
  'mht',
  'application/octet-stream',
  1.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'ONTO\RC\SALOMON',
  'Tout savoir sur la Verveine ou presque       Thé Canelle Orange',
  'importe',
  'spiritualite-raw',
  'ONTO\RC\SALOMON\Tout savoir sur la Verveine ou presque____ - Thé Canelle Orange.mht'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\1000 Names of  Maa DurgaDevi Sahastranamavali Anuradha Paudwal I Full Audio Songs Juke Box.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\1000 Names of  Maa DurgaDevi Sahastranamavali Anuradha Paudwal I Full Audio Songs Juke Box.mp3',
  '1000 Names of  Maa DurgaDevi Sahastranamavali Anuradha Paudwal I Full Audio Songs Juke Box.mp3',
  'mp3',
  'audio/mpeg',
  99.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  '1000 Names of  Maa DurgaDevi Sahastranamavali Anuradha Paudwal I Full Audio Songs Juke Box',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\1000 Names of  Maa DurgaDevi Sahastranamavali Anuradha Paudwal I Full Audio Songs Juke Box.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\1008 names of Vishnu (sahasranama).mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\1008 names of Vishnu (sahasranama).mp3',
  '1008 names of Vishnu (sahasranama).mp3',
  'mp3',
  'audio/mpeg',
  62.62,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  '1008 names of Vishnu (sahasranama)',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\1008 names of Vishnu (sahasranama).mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\108 names of Shri Lakshmi - UK.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\108 names of Shri Lakshmi - UK.mp3',
  '108 names of Shri Lakshmi - UK.mp3',
  'mp3',
  'audio/mpeg',
  15.24,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  '108 names of Shri Lakshmi   UK',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\108 names of Shri Lakshmi - UK.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\108 names of Shri Mataji.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\108 names of Shri Mataji.mp3',
  '108 names of Shri Mataji.mp3',
  'mp3',
  'audio/mpeg',
  12.38,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  '108 names of Shri Mataji',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\108 names of Shri Mataji.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\108 names of Shri Vishnu - UK.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\108 names of Shri Vishnu - UK.mp3',
  '108 names of Shri Vishnu - UK.mp3',
  'mp3',
  'audio/mpeg',
  13.76,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  '108 names of Shri Vishnu   UK',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\108 names of Shri Vishnu - UK.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\AUM.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\AUM.mp3',
  'AUM.mp3',
  'mp3',
  'audio/mpeg',
  2.7,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'AUM',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\AUM.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Bhajan - Ganesha Ganesha - Sanskrit 16.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Bhajan - Ganesha Ganesha - Sanskrit 16.mp3',
  'Bhajan - Ganesha Ganesha - Sanskrit 16.mp3',
  'mp3',
  'audio/mpeg',
  5.45,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Bhajan   Ganesha Ganesha   Sanskrit 16',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Bhajan - Ganesha Ganesha - Sanskrit 16.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Bhajan - Jay Ganesh Jay Ganesh - Hindi 01.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Bhajan - Jay Ganesh Jay Ganesh - Hindi 01.mp3',
  'Bhajan - Jay Ganesh Jay Ganesh - Hindi 01.mp3',
  'mp3',
  'audio/mpeg',
  12.11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Bhajan   Jay Ganesh Jay Ganesh   Hindi 01',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Bhajan - Jay Ganesh Jay Ganesh - Hindi 01.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\CenterHome Dhyaan.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\CenterHome Dhyaan.mp3',
  'CenterHome Dhyaan.mp3',
  'mp3',
  'audio/mpeg',
  53.95,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'CenterHome Dhyaan',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\CenterHome Dhyaan.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Chakras cours-Sahaja Yoga.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Chakras cours-Sahaja Yoga.pdf',
  'Chakras cours-Sahaja Yoga.pdf',
  'pdf',
  'application/pdf',
  86.66,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Chakras cours Sahaja Yoga',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Chakras cours-Sahaja Yoga.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Excellent Song Of Lord Shiva Ever.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Excellent Song Of Lord Shiva Ever.mp3',
  'Excellent Song Of Lord Shiva Ever.mp3',
  'mp3',
  'audio/mpeg',
  9.93,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Excellent Song Of Lord Shiva Ever',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Excellent Song Of Lord Shiva Ever.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Guide-des-chakras Sahaja Yoga.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Guide-des-chakras Sahaja Yoga.pdf',
  'Guide-des-chakras Sahaja Yoga.pdf',
  'pdf',
  'application/pdf',
  1.87,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Guide des chakras Sahaja Yoga',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Guide-des-chakras Sahaja Yoga.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Maha mantras.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Maha mantras.mp3',
  'Maha mantras.mp3',
  'mp3',
  'audio/mpeg',
  4.39,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Maha mantras',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Maha mantras.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Meditation music Sahaja Yoga music.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Meditation music Sahaja Yoga music.mp3',
  'Meditation music Sahaja Yoga music.mp3',
  'mp3',
  'audio/mpeg',
  21.88,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Meditation music Sahaja Yoga music',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Meditation music Sahaja Yoga music.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Navaratri.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Navaratri.pdf',
  'Navaratri.pdf',
  'pdf',
  'application/pdf',
  6.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Navaratri',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Navaratri.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\om (mp3cut.net).mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\om (mp3cut.net).mp3',
  'om (mp3cut.net).mp3',
  'mp3',
  'audio/mpeg',
  8,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'om (mp3cut.net)',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\om (mp3cut.net).mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Om Namaste Ganapataye-Ed2.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Om Namaste Ganapataye-Ed2.pdf',
  'Om Namaste Ganapataye-Ed2.pdf',
  'pdf',
  'application/pdf',
  12.02,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Om Namaste Ganapataye Ed2',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Om Namaste Ganapataye-Ed2.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Raga for Agnya - Bhoopali - Music Meditation.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Raga for Agnya - Bhoopali - Music Meditation.mp3',
  'Raga for Agnya - Bhoopali - Music Meditation.mp3',
  'mp3',
  'audio/mpeg',
  18.06,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Raga for Agnya   Bhoopali   Music Meditation',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Raga for Agnya - Bhoopali - Music Meditation.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga -  Bajans Namah Shivaya.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga -  Bajans Namah Shivaya.mp3',
  'Sahaja Yoga -  Bajans Namah Shivaya.mp3',
  'mp3',
  'audio/mpeg',
  9.91,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga    Bajans Namah Shivaya',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga -  Bajans Namah Shivaya.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga - Meditation Music.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga - Meditation Music.mp3',
  'Sahaja Yoga - Meditation Music.mp3',
  'mp3',
  'audio/mpeg',
  23.64,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga   Meditation Music',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga - Meditation Music.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga Joke Book.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga Joke Book.pdf',
  'Sahaja Yoga Joke Book.pdf',
  'pdf',
  'application/pdf',
  0.37,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga Joke Book',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga Joke Book.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Agnya.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Agnya.mp3',
  'Sahaja Yoga mantras for Agnya.mp3',
  'mp3',
  'audio/mpeg',
  3.52,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Agnya',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Agnya.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Anahat chakra.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Anahat chakra.mp3',
  'Sahaja Yoga mantras for Anahat chakra.mp3',
  'mp3',
  'audio/mpeg',
  9.22,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Anahat chakra',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Anahat chakra.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Mooladhara.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Mooladhara.mp3',
  'Sahaja Yoga mantras for Mooladhara.mp3',
  'mp3',
  'audio/mpeg',
  4.26,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Mooladhara',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Mooladhara.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Sahasrara.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Sahasrara.mp3',
  'Sahaja Yoga mantras for Sahasrara.mp3',
  'mp3',
  'audio/mpeg',
  6.98,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Sahasrara',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Sahasrara.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Swaddisthan.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Swaddisthan.mp3',
  'Sahaja Yoga mantras for Swaddisthan.mp3',
  'mp3',
  'audio/mpeg',
  7.28,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Swaddisthan',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Swaddisthan.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for the Nabhi.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for the Nabhi.mp3',
  'Sahaja Yoga mantras for the Nabhi.mp3',
  'mp3',
  'audio/mpeg',
  3.78,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for the Nabhi',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for the Nabhi.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for the Void.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for the Void.mp3',
  'Sahaja Yoga mantras for the Void.mp3',
  'mp3',
  'audio/mpeg',
  3.09,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for the Void',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for the Void.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga mantras for Vishudhi.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga mantras for Vishudhi.mp3',
  'Sahaja Yoga mantras for Vishudhi.mp3',
  'mp3',
  'audio/mpeg',
  3.16,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga mantras for Vishudhi',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga mantras for Vishudhi.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja yoga meditation Raag Bhairavi TRIMURTI Sahasrara.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja yoga meditation Raag Bhairavi TRIMURTI Sahasrara.mp3',
  'Sahaja yoga meditation Raag Bhairavi TRIMURTI Sahasrara.mp3',
  'mp3',
  'audio/mpeg',
  17.42,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja yoga meditation Raag Bhairavi TRIMURTI Sahasrara',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja yoga meditation Raag Bhairavi TRIMURTI Sahasrara.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sahaja Yoga Meditation With Bija Mantras.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sahaja Yoga Meditation With Bija Mantras.mp3',
  'Sahaja Yoga Meditation With Bija Mantras.mp3',
  'mp3',
  'audio/mpeg',
  27.08,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sahaja Yoga Meditation With Bija Mantras',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sahaja Yoga Meditation With Bija Mantras.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Sai Baba - Jai Jai Sai Teri Mahima - Sai Dhuni - Shirdi Sai Full Bhajan By Anurdha Poudwal.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Sai Baba - Jai Jai Sai Teri Mahima - Sai Dhuni - Shirdi Sai Full Bhajan By Anurdha Poudwal.mp3',
  'Sai Baba - Jai Jai Sai Teri Mahima - Sai Dhuni - Shirdi Sai Full Bhajan By Anurdha Poudwal.mp3',
  'mp3',
  'audio/mpeg',
  129.83,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Sai Baba   Jai Jai Sai Teri Mahima   Sai Dhuni   Shirdi Sai Full Bhajan By Anurdha Poudwal',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Sai Baba - Jai Jai Sai Teri Mahima - Sai Dhuni - Shirdi Sai Full Bhajan By Anurdha Poudwal.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Shri Chakra-4-16.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Shri Chakra-4-16.pdf',
  'Shri Chakra-4-16.pdf',
  'pdf',
  'application/pdf',
  9.24,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Shri Chakra 4 16',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Shri Chakra-4-16.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\SHRI GANESHA MANTRA.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\SHRI GANESHA MANTRA.mp3',
  'SHRI GANESHA MANTRA.mp3',
  'mp3',
  'audio/mpeg',
  3.2,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'SHRI GANESHA MANTRA',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\SHRI GANESHA MANTRA.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Shri Lalita Sahasranama.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Shri Lalita Sahasranama.pdf',
  'Shri Lalita Sahasranama.pdf',
  'pdf',
  'application/pdf',
  4.3,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Shri Lalita Sahasranama',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Shri Lalita Sahasranama.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Shri Nirmala Chalisa.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Shri Nirmala Chalisa.mp3',
  'Shri Nirmala Chalisa.mp3',
  'mp3',
  'audio/mpeg',
  10.57,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Shri Nirmala Chalisa',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Shri Nirmala Chalisa.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Shri Vishnu Sahasranama.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Shri Vishnu Sahasranama.mp3',
  'Shri Vishnu Sahasranama.mp3',
  'mp3',
  'audio/mpeg',
  27.92,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Shri Vishnu Sahasranama',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Shri Vishnu Sahasranama.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\SY Songbook-2014.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\SY Songbook-2014.pdf',
  'SY Songbook-2014.pdf',
  'pdf',
  'application/pdf',
  3.46,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'SY Songbook 2014',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\SY Songbook-2014.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\SYMB -02-16.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\SYMB -02-16.pdf',
  'SYMB -02-16.pdf',
  'pdf',
  'application/pdf',
  11,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'SYMB  02 16',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\SYMB -02-16.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\The Three Worlds-08-16.pdf',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\The Three Worlds-08-16.pdf',
  'The Three Worlds-08-16.pdf',
  'pdf',
  'application/pdf',
  15.77,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'The Three Worlds 08 16',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\The Three Worlds-08-16.pdf'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'SAHAJA JOGA\Yoga Meditation Music Indian - Sahaja Yoga Meditation Music Flute.mp3',
  'D:\CLONE_SPIRITUALITE_20260922\SAHAJA JOGA\Yoga Meditation Music Indian - Sahaja Yoga Meditation Music Flute.mp3',
  'Yoga Meditation Music Indian - Sahaja Yoga Meditation Music Flute.mp3',
  'mp3',
  'audio/mpeg',
  72.15,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  'SAHAJA JOGA',
  'Yoga Meditation Music Indian   Sahaja Yoga Meditation Music Flute',
  'importe',
  'spiritualite-raw',
  'SAHAJA JOGA\Yoga Meditation Music Indian - Sahaja Yoga Meditation Music Flute.mp3'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '_LOGS\ANALYSE_MISSION_AMEN_KHEPRA.md',
  'D:\CLONE_SPIRITUALITE_20260922\_LOGS\ANALYSE_MISSION_AMEN_KHEPRA.md',
  'ANALYSE_MISSION_AMEN_KHEPRA.md',
  'md',
  'application/octet-stream',
  0,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  '_LOGS',
  'ANALYSE MISSION AMEN KHEPRA',
  'importe',
  'spiritualite-raw',
  '_LOGS\ANALYSE_MISSION_AMEN_KHEPRA.md'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '_LOGS\clonage.log',
  'D:\CLONE_SPIRITUALITE_20260922\_LOGS\clonage.log',
  'clonage.log',
  'log',
  'application/octet-stream',
  0.1,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '_LOGS',
  'clonage',
  'importe',
  'spiritualite-raw',
  '_LOGS\clonage.log'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
insert into ressources (chemin_relatif, chemin_absolu, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  '_LOGS\inventaire_complet.csv',
  'D:\CLONE_SPIRITUALITE_20260922\_LOGS\inventaire_complet.csv',
  'inventaire_complet.csv',
  'csv',
  'application/octet-stream',
  0.24,
  (select id from piliers where code='AETHER'),
  'Corpus General',
  '_LOGS',
  'inventaire complet',
  'importe',
  'spiritualite-raw',
  '_LOGS\inventaire_complet.csv'
)
on conflict (chemin_relatif) do update set
  taille_mo = excluded.taille_mo,
  titre_extrait = excluded.titre_extrait,
  categorie = excluded.categorie,
  sous_categorie = excluded.sous_categorie,
  updated_at = now();
