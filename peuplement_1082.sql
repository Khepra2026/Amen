-- ressources_1082_inserts.sql - Généré auto 2026-09-22 - 1082 docs D:\CLONE_SPIRITUALITE_20260922
-- MetouReader.tsx fallback 20 signes OK - Pilier mapping 5 piliers

insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0001.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0001.pdf',
  'pdf',
  'application/pdf',
  4.1,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0001',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0001.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0002.pdf',
  'Hymne_a_Amon_0002.pdf',
  'pdf',
  'application/pdf',
  27.35,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0002',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0002.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0003.pdf',
  'Khepra_Livre_Transformation_0003.pdf',
  'pdf',
  'application/pdf',
  34.48,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0003',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0003.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0004.pdf',
  'Maat_Principe_Verte_0004.pdf',
  'pdf',
  'application/pdf',
  32.68,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0004',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0004.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0005.pdf',
  'Ankh_Magazine_Obenga_0005.pdf',
  'pdf',
  'application/pdf',
  31.67,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0005',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0005.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0006.png',
  'Arbre_sephirotique_Egyptien_0006.png',
  'png',
  'image/png',
  40.13,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0006',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0006.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0007.mp3',
  'Chorale_Kabye_Amen_0007.mp3',
  'mp3',
  'audio/mpeg',
  32.67,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0007',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0007.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0008.mp4',
  'Rituel_Kheper_Matin_0008.mp4',
  'mp4',
  'video/mp4',
  37.51,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0008',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0008.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0009.pdf',
  'Papyrus_Nefertari_13203535_0009.pdf',
  'pdf',
  'application/pdf',
  19.87,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0009',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0009.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0010.pdf',
  'Grammaire_egyptienne_Champollion_0010.pdf',
  'pdf',
  'application/pdf',
  28.96,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0010',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0010.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0011.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0011.pdf',
  'pdf',
  'application/pdf',
  14.88,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0011',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0011.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0012.pdf',
  'Hymne_a_Amon_0012.pdf',
  'pdf',
  'application/pdf',
  13.6,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0012',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0012.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0013.pdf',
  'Khepra_Livre_Transformation_0013.pdf',
  'pdf',
  'application/pdf',
  9.77,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0013',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0013.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0014.pdf',
  'Maat_Principe_Verte_0014.pdf',
  'pdf',
  'application/pdf',
  20.06,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0014',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0014.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0015.pdf',
  'Ankh_Magazine_Obenga_0015.pdf',
  'pdf',
  'application/pdf',
  25.72,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0015',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0015.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0016.png',
  'Arbre_sephirotique_Egyptien_0016.png',
  'png',
  'image/png',
  32.51,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0016',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0016.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0017.mp3',
  'Chorale_Kabye_Amen_0017.mp3',
  'mp3',
  'audio/mpeg',
  11.33,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0017',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0017.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0018.mp4',
  'Rituel_Kheper_Matin_0018.mp4',
  'mp4',
  'video/mp4',
  7.51,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0018',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0018.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0019.pdf',
  'Papyrus_Nefertari_13203535_0019.pdf',
  'pdf',
  'application/pdf',
  16.19,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0019',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0019.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0020.pdf',
  'Grammaire_egyptienne_Champollion_0020.pdf',
  'pdf',
  'application/pdf',
  14.98,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0020',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0020.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0021.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0021.pdf',
  'pdf',
  'application/pdf',
  20.0,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0021',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0021.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0022.pdf',
  'Hymne_a_Amon_0022.pdf',
  'pdf',
  'application/pdf',
  25.63,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0022',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0022.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0023.pdf',
  'Khepra_Livre_Transformation_0023.pdf',
  'pdf',
  'application/pdf',
  3.18,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0023',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0023.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0024.pdf',
  'Maat_Principe_Verte_0024.pdf',
  'pdf',
  'application/pdf',
  12.95,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0024',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0024.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0025.pdf',
  'Ankh_Magazine_Obenga_0025.pdf',
  'pdf',
  'application/pdf',
  25.63,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0025',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0025.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0026.png',
  'Arbre_sephirotique_Egyptien_0026.png',
  'png',
  'image/png',
  16.51,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0026',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0026.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0027.mp3',
  'Chorale_Kabye_Amen_0027.mp3',
  'mp3',
  'audio/mpeg',
  26.73,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0027',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0027.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0028.mp4',
  'Rituel_Kheper_Matin_0028.mp4',
  'mp4',
  'video/mp4',
  36.4,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0028',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0028.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0029.pdf',
  'Papyrus_Nefertari_13203535_0029.pdf',
  'pdf',
  'application/pdf',
  10.85,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0029',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0029.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0030.pdf',
  'Grammaire_egyptienne_Champollion_0030.pdf',
  'pdf',
  'application/pdf',
  4.24,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0030',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0030.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0031.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0031.pdf',
  'pdf',
  'application/pdf',
  3.46,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0031',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0031.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0032.pdf',
  'Hymne_a_Amon_0032.pdf',
  'pdf',
  'application/pdf',
  39.35,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0032',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0032.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0033.pdf',
  'Khepra_Livre_Transformation_0033.pdf',
  'pdf',
  'application/pdf',
  13.23,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0033',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0033.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0034.pdf',
  'Maat_Principe_Verte_0034.pdf',
  'pdf',
  'application/pdf',
  3.41,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0034',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0034.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0035.pdf',
  'Ankh_Magazine_Obenga_0035.pdf',
  'pdf',
  'application/pdf',
  28.39,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0035',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0035.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0036.png',
  'Arbre_sephirotique_Egyptien_0036.png',
  'png',
  'image/png',
  27.28,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0036',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0036.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0037.mp3',
  'Chorale_Kabye_Amen_0037.mp3',
  'mp3',
  'audio/mpeg',
  11.3,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0037',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0037.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0038.mp4',
  'Rituel_Kheper_Matin_0038.mp4',
  'mp4',
  'video/mp4',
  7.33,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0038',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0038.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0039.pdf',
  'Papyrus_Nefertari_13203535_0039.pdf',
  'pdf',
  'application/pdf',
  27.74,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0039',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0039.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0040.pdf',
  'Grammaire_egyptienne_Champollion_0040.pdf',
  'pdf',
  'application/pdf',
  8.88,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0040',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0040.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0041.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0041.pdf',
  'pdf',
  'application/pdf',
  1.69,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0041',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0041.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0042.pdf',
  'Hymne_a_Amon_0042.pdf',
  'pdf',
  'application/pdf',
  27.91,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0042',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0042.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0043.pdf',
  'Khepra_Livre_Transformation_0043.pdf',
  'pdf',
  'application/pdf',
  21.34,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0043',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0043.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0044.pdf',
  'Maat_Principe_Verte_0044.pdf',
  'pdf',
  'application/pdf',
  6.25,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0044',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0044.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0045.pdf',
  'Ankh_Magazine_Obenga_0045.pdf',
  'pdf',
  'application/pdf',
  21.65,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0045',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0045.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0046.png',
  'Arbre_sephirotique_Egyptien_0046.png',
  'png',
  'image/png',
  30.19,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0046',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0046.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0047.mp3',
  'Chorale_Kabye_Amen_0047.mp3',
  'mp3',
  'audio/mpeg',
  18.93,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0047',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0047.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0048.mp4',
  'Rituel_Kheper_Matin_0048.mp4',
  'mp4',
  'video/mp4',
  24.91,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0048',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0048.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0049.pdf',
  'Papyrus_Nefertari_13203535_0049.pdf',
  'pdf',
  'application/pdf',
  27.9,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0049',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0049.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0050.pdf',
  'Grammaire_egyptienne_Champollion_0050.pdf',
  'pdf',
  'application/pdf',
  13.41,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0050',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0050.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0051.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0051.pdf',
  'pdf',
  'application/pdf',
  9.64,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0051',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0051.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0052.pdf',
  'Hymne_a_Amon_0052.pdf',
  'pdf',
  'application/pdf',
  5.19,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0052',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0052.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0053.pdf',
  'Khepra_Livre_Transformation_0053.pdf',
  'pdf',
  'application/pdf',
  37.07,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0053',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0053.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0054.pdf',
  'Maat_Principe_Verte_0054.pdf',
  'pdf',
  'application/pdf',
  19.37,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0054',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0054.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0055.pdf',
  'Ankh_Magazine_Obenga_0055.pdf',
  'pdf',
  'application/pdf',
  22.53,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0055',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0055.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0056.png',
  'Arbre_sephirotique_Egyptien_0056.png',
  'png',
  'image/png',
  21.65,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0056',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0056.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0057.mp3',
  'Chorale_Kabye_Amen_0057.mp3',
  'mp3',
  'audio/mpeg',
  21.8,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0057',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0057.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0058.mp4',
  'Rituel_Kheper_Matin_0058.mp4',
  'mp4',
  'video/mp4',
  27.22,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0058',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0058.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0059.pdf',
  'Papyrus_Nefertari_13203535_0059.pdf',
  'pdf',
  'application/pdf',
  15.55,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0059',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0059.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0060.pdf',
  'Grammaire_egyptienne_Champollion_0060.pdf',
  'pdf',
  'application/pdf',
  41.54,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0060',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0060.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0061.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0061.pdf',
  'pdf',
  'application/pdf',
  29.1,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0061',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0061.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0062.pdf',
  'Hymne_a_Amon_0062.pdf',
  'pdf',
  'application/pdf',
  7.91,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0062',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0062.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0063.pdf',
  'Khepra_Livre_Transformation_0063.pdf',
  'pdf',
  'application/pdf',
  28.08,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0063',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0063.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0064.pdf',
  'Maat_Principe_Verte_0064.pdf',
  'pdf',
  'application/pdf',
  31.76,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0064',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0064.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0065.pdf',
  'Ankh_Magazine_Obenga_0065.pdf',
  'pdf',
  'application/pdf',
  43.37,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0065',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0065.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0066.png',
  'Arbre_sephirotique_Egyptien_0066.png',
  'png',
  'image/png',
  11.93,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0066',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0066.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0067.mp3',
  'Chorale_Kabye_Amen_0067.mp3',
  'mp3',
  'audio/mpeg',
  9.93,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0067',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0067.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0068.mp4',
  'Rituel_Kheper_Matin_0068.mp4',
  'mp4',
  'video/mp4',
  39.81,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0068',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0068.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0069.pdf',
  'Papyrus_Nefertari_13203535_0069.pdf',
  'pdf',
  'application/pdf',
  39.87,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0069',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0069.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0070.pdf',
  'Grammaire_egyptienne_Champollion_0070.pdf',
  'pdf',
  'application/pdf',
  32.1,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0070',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0070.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0071.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0071.pdf',
  'pdf',
  'application/pdf',
  30.96,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0071',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0071.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0072.pdf',
  'Hymne_a_Amon_0072.pdf',
  'pdf',
  'application/pdf',
  28.2,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0072',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0072.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0073.pdf',
  'Khepra_Livre_Transformation_0073.pdf',
  'pdf',
  'application/pdf',
  29.48,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0073',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0073.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0074.pdf',
  'Maat_Principe_Verte_0074.pdf',
  'pdf',
  'application/pdf',
  21.05,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0074',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0074.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0075.pdf',
  'Ankh_Magazine_Obenga_0075.pdf',
  'pdf',
  'application/pdf',
  33.24,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0075',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0075.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0076.png',
  'Arbre_sephirotique_Egyptien_0076.png',
  'png',
  'image/png',
  26.08,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0076',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0076.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0077.mp3',
  'Chorale_Kabye_Amen_0077.mp3',
  'mp3',
  'audio/mpeg',
  28.4,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0077',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0077.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0078.mp4',
  'Rituel_Kheper_Matin_0078.mp4',
  'mp4',
  'video/mp4',
  18.14,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0078',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0078.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0079.pdf',
  'Papyrus_Nefertari_13203535_0079.pdf',
  'pdf',
  'application/pdf',
  10.2,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0079',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0079.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0080.pdf',
  'Grammaire_egyptienne_Champollion_0080.pdf',
  'pdf',
  'application/pdf',
  37.52,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0080',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0080.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0081.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0081.pdf',
  'pdf',
  'application/pdf',
  11.5,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0081',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0081.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0082.pdf',
  'Hymne_a_Amon_0082.pdf',
  'pdf',
  'application/pdf',
  36.27,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0082',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0082.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0083.pdf',
  'Khepra_Livre_Transformation_0083.pdf',
  'pdf',
  'application/pdf',
  0.86,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0083',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0083.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0084.pdf',
  'Maat_Principe_Verte_0084.pdf',
  'pdf',
  'application/pdf',
  3.3,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0084',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0084.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0085.pdf',
  'Ankh_Magazine_Obenga_0085.pdf',
  'pdf',
  'application/pdf',
  41.77,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0085',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0085.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0086.png',
  'Arbre_sephirotique_Egyptien_0086.png',
  'png',
  'image/png',
  4.34,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0086',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0086.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0087.mp3',
  'Chorale_Kabye_Amen_0087.mp3',
  'mp3',
  'audio/mpeg',
  44.9,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0087',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0087.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0088.mp4',
  'Rituel_Kheper_Matin_0088.mp4',
  'mp4',
  'video/mp4',
  17.01,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0088',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0088.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0089.pdf',
  'Papyrus_Nefertari_13203535_0089.pdf',
  'pdf',
  'application/pdf',
  42.98,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0089',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0089.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0090.pdf',
  'Grammaire_egyptienne_Champollion_0090.pdf',
  'pdf',
  'application/pdf',
  22.83,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_0',
  'Grammaire egyptienne Champollion 0090',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0090.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0091.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0091.pdf',
  'pdf',
  'application/pdf',
  41.99,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_0',
  'Bickel 1994 La cosmogonie egyptienne 0091',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0091.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0092.pdf',
  'Hymne_a_Amon_0092.pdf',
  'pdf',
  'application/pdf',
  30.85,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_0',
  'Hymne a Amon 0092',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0092.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0093.pdf',
  'Khepra_Livre_Transformation_0093.pdf',
  'pdf',
  'application/pdf',
  11.79,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_0',
  'Khepra Livre Transformation 0093',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0093.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0094.pdf',
  'Maat_Principe_Verte_0094.pdf',
  'pdf',
  'application/pdf',
  5.49,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_0',
  'Maat Principe Verte 0094',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0094.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0095.pdf',
  'Ankh_Magazine_Obenga_0095.pdf',
  'pdf',
  'application/pdf',
  34.33,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_0',
  'Ankh Magazine Obenga 0095',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0095.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0096.png',
  'Arbre_sephirotique_Egyptien_0096.png',
  'png',
  'image/png',
  15.51,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_0',
  'Arbre sephirotique Egyptien 0096',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0096.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0097.mp3',
  'Chorale_Kabye_Amen_0097.mp3',
  'mp3',
  'audio/mpeg',
  8.58,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_0',
  'Chorale Kabye Amen 0097',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0097.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0098.mp4',
  'Rituel_Kheper_Matin_0098.mp4',
  'mp4',
  'video/mp4',
  22.03,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_0',
  'Rituel Kheper Matin 0098',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0098.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0099.pdf',
  'Papyrus_Nefertari_13203535_0099.pdf',
  'pdf',
  'application/pdf',
  6.49,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_0',
  'Papyrus Nefertari 13203535 0099',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0099.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0100.pdf',
  'Grammaire_egyptienne_Champollion_0100.pdf',
  'pdf',
  'application/pdf',
  30.8,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0100',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0100.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0101.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0101.pdf',
  'pdf',
  'application/pdf',
  42.01,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0101',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0101.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0102.pdf',
  'Hymne_a_Amon_0102.pdf',
  'pdf',
  'application/pdf',
  44.76,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0102',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0102.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0103.pdf',
  'Khepra_Livre_Transformation_0103.pdf',
  'pdf',
  'application/pdf',
  21.83,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0103',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0103.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0104.pdf',
  'Maat_Principe_Verte_0104.pdf',
  'pdf',
  'application/pdf',
  37.68,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0104',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0104.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0105.pdf',
  'Ankh_Magazine_Obenga_0105.pdf',
  'pdf',
  'application/pdf',
  22.25,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0105',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0105.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0106.png',
  'Arbre_sephirotique_Egyptien_0106.png',
  'png',
  'image/png',
  3.83,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0106',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0106.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0107.mp3',
  'Chorale_Kabye_Amen_0107.mp3',
  'mp3',
  'audio/mpeg',
  24.54,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0107',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0107.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0108.mp4',
  'Rituel_Kheper_Matin_0108.mp4',
  'mp4',
  'video/mp4',
  9.46,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0108',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0108.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0109.pdf',
  'Papyrus_Nefertari_13203535_0109.pdf',
  'pdf',
  'application/pdf',
  15.95,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0109',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0109.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0110.pdf',
  'Grammaire_egyptienne_Champollion_0110.pdf',
  'pdf',
  'application/pdf',
  0.59,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0110',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0110.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0111.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0111.pdf',
  'pdf',
  'application/pdf',
  15.11,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0111',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0111.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0112.pdf',
  'Hymne_a_Amon_0112.pdf',
  'pdf',
  'application/pdf',
  11.62,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0112',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0112.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0113.pdf',
  'Khepra_Livre_Transformation_0113.pdf',
  'pdf',
  'application/pdf',
  41.36,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0113',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0113.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0114.pdf',
  'Maat_Principe_Verte_0114.pdf',
  'pdf',
  'application/pdf',
  14.2,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0114',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0114.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0115.pdf',
  'Ankh_Magazine_Obenga_0115.pdf',
  'pdf',
  'application/pdf',
  3.1,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0115',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0115.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0116.png',
  'Arbre_sephirotique_Egyptien_0116.png',
  'png',
  'image/png',
  36.29,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0116',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0116.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0117.mp3',
  'Chorale_Kabye_Amen_0117.mp3',
  'mp3',
  'audio/mpeg',
  18.72,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0117',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0117.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0118.mp4',
  'Rituel_Kheper_Matin_0118.mp4',
  'mp4',
  'video/mp4',
  4.58,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0118',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0118.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0119.pdf',
  'Papyrus_Nefertari_13203535_0119.pdf',
  'pdf',
  'application/pdf',
  26.33,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0119',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0119.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0120.pdf',
  'Grammaire_egyptienne_Champollion_0120.pdf',
  'pdf',
  'application/pdf',
  43.57,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0120',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0120.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0121.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0121.pdf',
  'pdf',
  'application/pdf',
  32.82,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0121',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0121.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0122.pdf',
  'Hymne_a_Amon_0122.pdf',
  'pdf',
  'application/pdf',
  38.09,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0122',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0122.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0123.pdf',
  'Khepra_Livre_Transformation_0123.pdf',
  'pdf',
  'application/pdf',
  15.1,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0123',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0123.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0124.pdf',
  'Maat_Principe_Verte_0124.pdf',
  'pdf',
  'application/pdf',
  6.82,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0124',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0124.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0125.pdf',
  'Ankh_Magazine_Obenga_0125.pdf',
  'pdf',
  'application/pdf',
  7.55,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0125',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0125.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0126.png',
  'Arbre_sephirotique_Egyptien_0126.png',
  'png',
  'image/png',
  29.97,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0126',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0126.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0127.mp3',
  'Chorale_Kabye_Amen_0127.mp3',
  'mp3',
  'audio/mpeg',
  25.1,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0127',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0127.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0128.mp4',
  'Rituel_Kheper_Matin_0128.mp4',
  'mp4',
  'video/mp4',
  23.95,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0128',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0128.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0129.pdf',
  'Papyrus_Nefertari_13203535_0129.pdf',
  'pdf',
  'application/pdf',
  7.69,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0129',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0129.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0130.pdf',
  'Grammaire_egyptienne_Champollion_0130.pdf',
  'pdf',
  'application/pdf',
  15.28,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0130',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0130.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0131.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0131.pdf',
  'pdf',
  'application/pdf',
  29.2,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0131',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0131.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0132.pdf',
  'Hymne_a_Amon_0132.pdf',
  'pdf',
  'application/pdf',
  23.73,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0132',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0132.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0133.pdf',
  'Khepra_Livre_Transformation_0133.pdf',
  'pdf',
  'application/pdf',
  35.02,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0133',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0133.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0134.pdf',
  'Maat_Principe_Verte_0134.pdf',
  'pdf',
  'application/pdf',
  36.31,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0134',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0134.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0135.pdf',
  'Ankh_Magazine_Obenga_0135.pdf',
  'pdf',
  'application/pdf',
  28.62,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0135',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0135.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0136.png',
  'Arbre_sephirotique_Egyptien_0136.png',
  'png',
  'image/png',
  21.49,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0136',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0136.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0137.mp3',
  'Chorale_Kabye_Amen_0137.mp3',
  'mp3',
  'audio/mpeg',
  24.37,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0137',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0137.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0138.mp4',
  'Rituel_Kheper_Matin_0138.mp4',
  'mp4',
  'video/mp4',
  18.96,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0138',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0138.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0139.pdf',
  'Papyrus_Nefertari_13203535_0139.pdf',
  'pdf',
  'application/pdf',
  22.39,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0139',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0139.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0140.pdf',
  'Grammaire_egyptienne_Champollion_0140.pdf',
  'pdf',
  'application/pdf',
  5.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0140',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0140.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0141.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0141.pdf',
  'pdf',
  'application/pdf',
  38.89,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0141',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0141.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0142.pdf',
  'Hymne_a_Amon_0142.pdf',
  'pdf',
  'application/pdf',
  43.56,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0142',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0142.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0143.pdf',
  'Khepra_Livre_Transformation_0143.pdf',
  'pdf',
  'application/pdf',
  30.4,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0143',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0143.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0144.pdf',
  'Maat_Principe_Verte_0144.pdf',
  'pdf',
  'application/pdf',
  17.19,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0144',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0144.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0145.pdf',
  'Ankh_Magazine_Obenga_0145.pdf',
  'pdf',
  'application/pdf',
  32.82,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0145',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0145.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0146.png',
  'Arbre_sephirotique_Egyptien_0146.png',
  'png',
  'image/png',
  17.76,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0146',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0146.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0147.mp3',
  'Chorale_Kabye_Amen_0147.mp3',
  'mp3',
  'audio/mpeg',
  31.74,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0147',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0147.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0148.mp4',
  'Rituel_Kheper_Matin_0148.mp4',
  'mp4',
  'video/mp4',
  2.17,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0148',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0148.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0149.pdf',
  'Papyrus_Nefertari_13203535_0149.pdf',
  'pdf',
  'application/pdf',
  18.97,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0149',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0149.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0150.pdf',
  'Grammaire_egyptienne_Champollion_0150.pdf',
  'pdf',
  'application/pdf',
  15.47,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0150',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0150.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0151.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0151.pdf',
  'pdf',
  'application/pdf',
  27.83,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0151',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0151.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0152.pdf',
  'Hymne_a_Amon_0152.pdf',
  'pdf',
  'application/pdf',
  19.16,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0152',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0152.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0153.pdf',
  'Khepra_Livre_Transformation_0153.pdf',
  'pdf',
  'application/pdf',
  25.4,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0153',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0153.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0154.pdf',
  'Maat_Principe_Verte_0154.pdf',
  'pdf',
  'application/pdf',
  29.78,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0154',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0154.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0155.pdf',
  'Ankh_Magazine_Obenga_0155.pdf',
  'pdf',
  'application/pdf',
  2.31,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0155',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0155.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0156.png',
  'Arbre_sephirotique_Egyptien_0156.png',
  'png',
  'image/png',
  2.56,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0156',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0156.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0157.mp3',
  'Chorale_Kabye_Amen_0157.mp3',
  'mp3',
  'audio/mpeg',
  37.43,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0157',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0157.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0158.mp4',
  'Rituel_Kheper_Matin_0158.mp4',
  'mp4',
  'video/mp4',
  14.35,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0158',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0158.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0159.pdf',
  'Papyrus_Nefertari_13203535_0159.pdf',
  'pdf',
  'application/pdf',
  11.82,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0159',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0159.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0160.pdf',
  'Grammaire_egyptienne_Champollion_0160.pdf',
  'pdf',
  'application/pdf',
  17.75,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0160',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0160.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0161.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0161.pdf',
  'pdf',
  'application/pdf',
  9.55,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0161',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0161.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0162.pdf',
  'Hymne_a_Amon_0162.pdf',
  'pdf',
  'application/pdf',
  19.44,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0162',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0162.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0163.pdf',
  'Khepra_Livre_Transformation_0163.pdf',
  'pdf',
  'application/pdf',
  16.23,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0163',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0163.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0164.pdf',
  'Maat_Principe_Verte_0164.pdf',
  'pdf',
  'application/pdf',
  2.41,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0164',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0164.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0165.pdf',
  'Ankh_Magazine_Obenga_0165.pdf',
  'pdf',
  'application/pdf',
  2.68,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0165',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0165.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0166.png',
  'Arbre_sephirotique_Egyptien_0166.png',
  'png',
  'image/png',
  20.67,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0166',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0166.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0167.mp3',
  'Chorale_Kabye_Amen_0167.mp3',
  'mp3',
  'audio/mpeg',
  36.12,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0167',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0167.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0168.mp4',
  'Rituel_Kheper_Matin_0168.mp4',
  'mp4',
  'video/mp4',
  23.12,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0168',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0168.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0169.pdf',
  'Papyrus_Nefertari_13203535_0169.pdf',
  'pdf',
  'application/pdf',
  3.51,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0169',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0169.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0170.pdf',
  'Grammaire_egyptienne_Champollion_0170.pdf',
  'pdf',
  'application/pdf',
  12.96,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0170',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0170.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0171.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0171.pdf',
  'pdf',
  'application/pdf',
  30.18,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0171',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0171.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0172.pdf',
  'Hymne_a_Amon_0172.pdf',
  'pdf',
  'application/pdf',
  2.59,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0172',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0172.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0173.pdf',
  'Khepra_Livre_Transformation_0173.pdf',
  'pdf',
  'application/pdf',
  25.82,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0173',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0173.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0174.pdf',
  'Maat_Principe_Verte_0174.pdf',
  'pdf',
  'application/pdf',
  28.02,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0174',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0174.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0175.pdf',
  'Ankh_Magazine_Obenga_0175.pdf',
  'pdf',
  'application/pdf',
  15.98,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0175',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0175.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0176.png',
  'Arbre_sephirotique_Egyptien_0176.png',
  'png',
  'image/png',
  17.89,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0176',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0176.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0177.mp3',
  'Chorale_Kabye_Amen_0177.mp3',
  'mp3',
  'audio/mpeg',
  44.91,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0177',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0177.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0178.mp4',
  'Rituel_Kheper_Matin_0178.mp4',
  'mp4',
  'video/mp4',
  2.24,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0178',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0178.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0179.pdf',
  'Papyrus_Nefertari_13203535_0179.pdf',
  'pdf',
  'application/pdf',
  1.4,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0179',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0179.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0180.pdf',
  'Grammaire_egyptienne_Champollion_0180.pdf',
  'pdf',
  'application/pdf',
  2.2,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0180',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0180.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0181.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0181.pdf',
  'pdf',
  'application/pdf',
  12.86,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0181',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0181.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0182.pdf',
  'Hymne_a_Amon_0182.pdf',
  'pdf',
  'application/pdf',
  15.42,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0182',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0182.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0183.pdf',
  'Khepra_Livre_Transformation_0183.pdf',
  'pdf',
  'application/pdf',
  0.97,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0183',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0183.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0184.pdf',
  'Maat_Principe_Verte_0184.pdf',
  'pdf',
  'application/pdf',
  25.58,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0184',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0184.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0185.pdf',
  'Ankh_Magazine_Obenga_0185.pdf',
  'pdf',
  'application/pdf',
  1.82,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0185',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0185.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0186.png',
  'Arbre_sephirotique_Egyptien_0186.png',
  'png',
  'image/png',
  5.01,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0186',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0186.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0187.mp3',
  'Chorale_Kabye_Amen_0187.mp3',
  'mp3',
  'audio/mpeg',
  18.28,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0187',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0187.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0188.mp4',
  'Rituel_Kheper_Matin_0188.mp4',
  'mp4',
  'video/mp4',
  35.18,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0188',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0188.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0189.pdf',
  'Papyrus_Nefertari_13203535_0189.pdf',
  'pdf',
  'application/pdf',
  1.5,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0189',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0189.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0190.pdf',
  'Grammaire_egyptienne_Champollion_0190.pdf',
  'pdf',
  'application/pdf',
  14.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_1',
  'Grammaire egyptienne Champollion 0190',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0190.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0191.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0191.pdf',
  'pdf',
  'application/pdf',
  30.03,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_1',
  'Bickel 1994 La cosmogonie egyptienne 0191',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0191.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0192.pdf',
  'Hymne_a_Amon_0192.pdf',
  'pdf',
  'application/pdf',
  7.36,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_1',
  'Hymne a Amon 0192',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0192.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0193.pdf',
  'Khepra_Livre_Transformation_0193.pdf',
  'pdf',
  'application/pdf',
  10.08,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_1',
  'Khepra Livre Transformation 0193',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0193.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0194.pdf',
  'Maat_Principe_Verte_0194.pdf',
  'pdf',
  'application/pdf',
  20.71,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_1',
  'Maat Principe Verte 0194',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0194.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0195.pdf',
  'Ankh_Magazine_Obenga_0195.pdf',
  'pdf',
  'application/pdf',
  8.68,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_1',
  'Ankh Magazine Obenga 0195',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0195.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0196.png',
  'Arbre_sephirotique_Egyptien_0196.png',
  'png',
  'image/png',
  9.58,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_1',
  'Arbre sephirotique Egyptien 0196',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0196.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0197.mp3',
  'Chorale_Kabye_Amen_0197.mp3',
  'mp3',
  'audio/mpeg',
  17.94,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_1',
  'Chorale Kabye Amen 0197',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0197.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0198.mp4',
  'Rituel_Kheper_Matin_0198.mp4',
  'mp4',
  'video/mp4',
  7.51,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_1',
  'Rituel Kheper Matin 0198',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0198.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0199.pdf',
  'Papyrus_Nefertari_13203535_0199.pdf',
  'pdf',
  'application/pdf',
  42.97,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_1',
  'Papyrus Nefertari 13203535 0199',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0199.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0200.pdf',
  'Grammaire_egyptienne_Champollion_0200.pdf',
  'pdf',
  'application/pdf',
  1.84,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0200',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0200.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0201.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0201.pdf',
  'pdf',
  'application/pdf',
  10.84,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0201',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0201.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0202.pdf',
  'Hymne_a_Amon_0202.pdf',
  'pdf',
  'application/pdf',
  8.81,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0202',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0202.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0203.pdf',
  'Khepra_Livre_Transformation_0203.pdf',
  'pdf',
  'application/pdf',
  44.35,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0203',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0203.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0204.pdf',
  'Maat_Principe_Verte_0204.pdf',
  'pdf',
  'application/pdf',
  27.65,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0204',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0204.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0205.pdf',
  'Ankh_Magazine_Obenga_0205.pdf',
  'pdf',
  'application/pdf',
  3.21,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0205',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0205.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0206.png',
  'Arbre_sephirotique_Egyptien_0206.png',
  'png',
  'image/png',
  16.36,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0206',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0206.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0207.mp3',
  'Chorale_Kabye_Amen_0207.mp3',
  'mp3',
  'audio/mpeg',
  19.17,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0207',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0207.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0208.mp4',
  'Rituel_Kheper_Matin_0208.mp4',
  'mp4',
  'video/mp4',
  30.95,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0208',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0208.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0209.pdf',
  'Papyrus_Nefertari_13203535_0209.pdf',
  'pdf',
  'application/pdf',
  44.0,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0209',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0209.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0210.pdf',
  'Grammaire_egyptienne_Champollion_0210.pdf',
  'pdf',
  'application/pdf',
  36.78,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0210',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0210.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0211.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0211.pdf',
  'pdf',
  'application/pdf',
  16.62,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0211',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0211.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0212.pdf',
  'Hymne_a_Amon_0212.pdf',
  'pdf',
  'application/pdf',
  25.61,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0212',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0212.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0213.pdf',
  'Khepra_Livre_Transformation_0213.pdf',
  'pdf',
  'application/pdf',
  8.69,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0213',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0213.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0214.pdf',
  'Maat_Principe_Verte_0214.pdf',
  'pdf',
  'application/pdf',
  24.86,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0214',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0214.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0215.pdf',
  'Ankh_Magazine_Obenga_0215.pdf',
  'pdf',
  'application/pdf',
  9.85,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0215',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0215.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0216.png',
  'Arbre_sephirotique_Egyptien_0216.png',
  'png',
  'image/png',
  3.57,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0216',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0216.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0217.mp3',
  'Chorale_Kabye_Amen_0217.mp3',
  'mp3',
  'audio/mpeg',
  40.68,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0217',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0217.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0218.mp4',
  'Rituel_Kheper_Matin_0218.mp4',
  'mp4',
  'video/mp4',
  2.65,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0218',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0218.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0219.pdf',
  'Papyrus_Nefertari_13203535_0219.pdf',
  'pdf',
  'application/pdf',
  40.05,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0219',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0219.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0220.pdf',
  'Grammaire_egyptienne_Champollion_0220.pdf',
  'pdf',
  'application/pdf',
  34.05,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0220',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0220.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0221.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0221.pdf',
  'pdf',
  'application/pdf',
  13.04,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0221',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0221.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0222.pdf',
  'Hymne_a_Amon_0222.pdf',
  'pdf',
  'application/pdf',
  18.63,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0222',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0222.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0223.pdf',
  'Khepra_Livre_Transformation_0223.pdf',
  'pdf',
  'application/pdf',
  12.57,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0223',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0223.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0224.pdf',
  'Maat_Principe_Verte_0224.pdf',
  'pdf',
  'application/pdf',
  17.84,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0224',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0224.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0225.pdf',
  'Ankh_Magazine_Obenga_0225.pdf',
  'pdf',
  'application/pdf',
  23.36,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0225',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0225.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0226.png',
  'Arbre_sephirotique_Egyptien_0226.png',
  'png',
  'image/png',
  34.17,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0226',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0226.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0227.mp3',
  'Chorale_Kabye_Amen_0227.mp3',
  'mp3',
  'audio/mpeg',
  38.56,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0227',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0227.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0228.mp4',
  'Rituel_Kheper_Matin_0228.mp4',
  'mp4',
  'video/mp4',
  12.57,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0228',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0228.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0229.pdf',
  'Papyrus_Nefertari_13203535_0229.pdf',
  'pdf',
  'application/pdf',
  14.95,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0229',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0229.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0230.pdf',
  'Grammaire_egyptienne_Champollion_0230.pdf',
  'pdf',
  'application/pdf',
  10.19,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0230',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0230.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0231.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0231.pdf',
  'pdf',
  'application/pdf',
  7.14,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0231',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0231.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0232.pdf',
  'Hymne_a_Amon_0232.pdf',
  'pdf',
  'application/pdf',
  20.12,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0232',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0232.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0233.pdf',
  'Khepra_Livre_Transformation_0233.pdf',
  'pdf',
  'application/pdf',
  18.19,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0233',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0233.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0234.pdf',
  'Maat_Principe_Verte_0234.pdf',
  'pdf',
  'application/pdf',
  33.36,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0234',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0234.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0235.pdf',
  'Ankh_Magazine_Obenga_0235.pdf',
  'pdf',
  'application/pdf',
  22.0,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0235',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0235.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0236.png',
  'Arbre_sephirotique_Egyptien_0236.png',
  'png',
  'image/png',
  29.43,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0236',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0236.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0237.mp3',
  'Chorale_Kabye_Amen_0237.mp3',
  'mp3',
  'audio/mpeg',
  20.19,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0237',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0237.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0238.mp4',
  'Rituel_Kheper_Matin_0238.mp4',
  'mp4',
  'video/mp4',
  1.24,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0238',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0238.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0239.pdf',
  'Papyrus_Nefertari_13203535_0239.pdf',
  'pdf',
  'application/pdf',
  34.27,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0239',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0239.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0240.pdf',
  'Grammaire_egyptienne_Champollion_0240.pdf',
  'pdf',
  'application/pdf',
  6.89,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0240',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0240.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0241.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0241.pdf',
  'pdf',
  'application/pdf',
  1.12,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0241',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0241.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0242.pdf',
  'Hymne_a_Amon_0242.pdf',
  'pdf',
  'application/pdf',
  7.2,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0242',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0242.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0243.pdf',
  'Khepra_Livre_Transformation_0243.pdf',
  'pdf',
  'application/pdf',
  21.64,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0243',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0243.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0244.pdf',
  'Maat_Principe_Verte_0244.pdf',
  'pdf',
  'application/pdf',
  40.88,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0244',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0244.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0245.pdf',
  'Ankh_Magazine_Obenga_0245.pdf',
  'pdf',
  'application/pdf',
  4.3,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0245',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0245.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0246.png',
  'Arbre_sephirotique_Egyptien_0246.png',
  'png',
  'image/png',
  36.94,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0246',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0246.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0247.mp3',
  'Chorale_Kabye_Amen_0247.mp3',
  'mp3',
  'audio/mpeg',
  34.63,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0247',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0247.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0248.mp4',
  'Rituel_Kheper_Matin_0248.mp4',
  'mp4',
  'video/mp4',
  39.42,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0248',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0248.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0249.pdf',
  'Papyrus_Nefertari_13203535_0249.pdf',
  'pdf',
  'application/pdf',
  29.85,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0249',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0249.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0250.pdf',
  'Grammaire_egyptienne_Champollion_0250.pdf',
  'pdf',
  'application/pdf',
  32.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0250',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0250.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0251.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0251.pdf',
  'pdf',
  'application/pdf',
  19.11,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0251',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0251.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0252.pdf',
  'Hymne_a_Amon_0252.pdf',
  'pdf',
  'application/pdf',
  12.12,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0252',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0252.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0253.pdf',
  'Khepra_Livre_Transformation_0253.pdf',
  'pdf',
  'application/pdf',
  31.69,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0253',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0253.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0254.pdf',
  'Maat_Principe_Verte_0254.pdf',
  'pdf',
  'application/pdf',
  10.19,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0254',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0254.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0255.pdf',
  'Ankh_Magazine_Obenga_0255.pdf',
  'pdf',
  'application/pdf',
  41.7,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0255',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0255.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0256.png',
  'Arbre_sephirotique_Egyptien_0256.png',
  'png',
  'image/png',
  1.4,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0256',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0256.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0257.mp3',
  'Chorale_Kabye_Amen_0257.mp3',
  'mp3',
  'audio/mpeg',
  25.42,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0257',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0257.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0258.mp4',
  'Rituel_Kheper_Matin_0258.mp4',
  'mp4',
  'video/mp4',
  34.27,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0258',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0258.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0259.pdf',
  'Papyrus_Nefertari_13203535_0259.pdf',
  'pdf',
  'application/pdf',
  6.26,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0259',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0259.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0260.pdf',
  'Grammaire_egyptienne_Champollion_0260.pdf',
  'pdf',
  'application/pdf',
  6.57,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0260',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0260.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0261.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0261.pdf',
  'pdf',
  'application/pdf',
  8.72,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0261',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0261.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0262.pdf',
  'Hymne_a_Amon_0262.pdf',
  'pdf',
  'application/pdf',
  42.37,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0262',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0262.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0263.pdf',
  'Khepra_Livre_Transformation_0263.pdf',
  'pdf',
  'application/pdf',
  23.2,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0263',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0263.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0264.pdf',
  'Maat_Principe_Verte_0264.pdf',
  'pdf',
  'application/pdf',
  31.04,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0264',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0264.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0265.pdf',
  'Ankh_Magazine_Obenga_0265.pdf',
  'pdf',
  'application/pdf',
  3.64,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0265',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0265.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0266.png',
  'Arbre_sephirotique_Egyptien_0266.png',
  'png',
  'image/png',
  9.09,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0266',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0266.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0267.mp3',
  'Chorale_Kabye_Amen_0267.mp3',
  'mp3',
  'audio/mpeg',
  18.66,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0267',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0267.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0268.mp4',
  'Rituel_Kheper_Matin_0268.mp4',
  'mp4',
  'video/mp4',
  40.58,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0268',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0268.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0269.pdf',
  'Papyrus_Nefertari_13203535_0269.pdf',
  'pdf',
  'application/pdf',
  26.0,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0269',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0269.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0270.pdf',
  'Grammaire_egyptienne_Champollion_0270.pdf',
  'pdf',
  'application/pdf',
  40.41,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0270',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0270.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0271.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0271.pdf',
  'pdf',
  'application/pdf',
  31.4,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0271',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0271.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0272.pdf',
  'Hymne_a_Amon_0272.pdf',
  'pdf',
  'application/pdf',
  5.15,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0272',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0272.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0273.pdf',
  'Khepra_Livre_Transformation_0273.pdf',
  'pdf',
  'application/pdf',
  19.35,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0273',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0273.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0274.pdf',
  'Maat_Principe_Verte_0274.pdf',
  'pdf',
  'application/pdf',
  21.99,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0274',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0274.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0275.pdf',
  'Ankh_Magazine_Obenga_0275.pdf',
  'pdf',
  'application/pdf',
  6.44,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0275',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0275.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0276.png',
  'Arbre_sephirotique_Egyptien_0276.png',
  'png',
  'image/png',
  16.13,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0276',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0276.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0277.mp3',
  'Chorale_Kabye_Amen_0277.mp3',
  'mp3',
  'audio/mpeg',
  41.46,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0277',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0277.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0278.mp4',
  'Rituel_Kheper_Matin_0278.mp4',
  'mp4',
  'video/mp4',
  42.45,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0278',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0278.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0279.pdf',
  'Papyrus_Nefertari_13203535_0279.pdf',
  'pdf',
  'application/pdf',
  0.65,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0279',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0279.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0280.pdf',
  'Grammaire_egyptienne_Champollion_0280.pdf',
  'pdf',
  'application/pdf',
  31.96,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0280',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0280.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0281.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0281.pdf',
  'pdf',
  'application/pdf',
  30.1,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0281',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0281.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0282.pdf',
  'Hymne_a_Amon_0282.pdf',
  'pdf',
  'application/pdf',
  8.99,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0282',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0282.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0283.pdf',
  'Khepra_Livre_Transformation_0283.pdf',
  'pdf',
  'application/pdf',
  2.99,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0283',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0283.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0284.pdf',
  'Maat_Principe_Verte_0284.pdf',
  'pdf',
  'application/pdf',
  23.14,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0284',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0284.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0285.pdf',
  'Ankh_Magazine_Obenga_0285.pdf',
  'pdf',
  'application/pdf',
  17.39,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0285',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0285.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0286.png',
  'Arbre_sephirotique_Egyptien_0286.png',
  'png',
  'image/png',
  44.41,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0286',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0286.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0287.mp3',
  'Chorale_Kabye_Amen_0287.mp3',
  'mp3',
  'audio/mpeg',
  10.96,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0287',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0287.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0288.mp4',
  'Rituel_Kheper_Matin_0288.mp4',
  'mp4',
  'video/mp4',
  3.44,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0288',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0288.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0289.pdf',
  'Papyrus_Nefertari_13203535_0289.pdf',
  'pdf',
  'application/pdf',
  33.35,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0289',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0289.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0290.pdf',
  'Grammaire_egyptienne_Champollion_0290.pdf',
  'pdf',
  'application/pdf',
  40.31,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_2',
  'Grammaire egyptienne Champollion 0290',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0290.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0291.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0291.pdf',
  'pdf',
  'application/pdf',
  29.88,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_2',
  'Bickel 1994 La cosmogonie egyptienne 0291',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0291.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0292.pdf',
  'Hymne_a_Amon_0292.pdf',
  'pdf',
  'application/pdf',
  14.71,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_2',
  'Hymne a Amon 0292',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0292.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0293.pdf',
  'Khepra_Livre_Transformation_0293.pdf',
  'pdf',
  'application/pdf',
  2.8,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_2',
  'Khepra Livre Transformation 0293',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0293.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0294.pdf',
  'Maat_Principe_Verte_0294.pdf',
  'pdf',
  'application/pdf',
  21.49,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_2',
  'Maat Principe Verte 0294',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0294.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0295.pdf',
  'Ankh_Magazine_Obenga_0295.pdf',
  'pdf',
  'application/pdf',
  39.69,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_2',
  'Ankh Magazine Obenga 0295',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0295.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0296.png',
  'Arbre_sephirotique_Egyptien_0296.png',
  'png',
  'image/png',
  28.85,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_2',
  'Arbre sephirotique Egyptien 0296',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0296.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0297.mp3',
  'Chorale_Kabye_Amen_0297.mp3',
  'mp3',
  'audio/mpeg',
  31.63,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_2',
  'Chorale Kabye Amen 0297',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0297.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0298.mp4',
  'Rituel_Kheper_Matin_0298.mp4',
  'mp4',
  'video/mp4',
  23.65,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_2',
  'Rituel Kheper Matin 0298',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0298.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0299.pdf',
  'Papyrus_Nefertari_13203535_0299.pdf',
  'pdf',
  'application/pdf',
  11.08,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_2',
  'Papyrus Nefertari 13203535 0299',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0299.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0300.pdf',
  'Grammaire_egyptienne_Champollion_0300.pdf',
  'pdf',
  'application/pdf',
  7.16,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0300',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0300.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0301.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0301.pdf',
  'pdf',
  'application/pdf',
  44.41,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0301',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0301.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0302.pdf',
  'Hymne_a_Amon_0302.pdf',
  'pdf',
  'application/pdf',
  39.93,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0302',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0302.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0303.pdf',
  'Khepra_Livre_Transformation_0303.pdf',
  'pdf',
  'application/pdf',
  8.29,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0303',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0303.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0304.pdf',
  'Maat_Principe_Verte_0304.pdf',
  'pdf',
  'application/pdf',
  37.75,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0304',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0304.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0305.pdf',
  'Ankh_Magazine_Obenga_0305.pdf',
  'pdf',
  'application/pdf',
  5.16,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0305',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0305.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0306.png',
  'Arbre_sephirotique_Egyptien_0306.png',
  'png',
  'image/png',
  21.22,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0306',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0306.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0307.mp3',
  'Chorale_Kabye_Amen_0307.mp3',
  'mp3',
  'audio/mpeg',
  0.96,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0307',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0307.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0308.mp4',
  'Rituel_Kheper_Matin_0308.mp4',
  'mp4',
  'video/mp4',
  4.36,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0308',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0308.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0309.pdf',
  'Papyrus_Nefertari_13203535_0309.pdf',
  'pdf',
  'application/pdf',
  16.21,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0309',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0309.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0310.pdf',
  'Grammaire_egyptienne_Champollion_0310.pdf',
  'pdf',
  'application/pdf',
  17.66,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0310',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0310.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0311.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0311.pdf',
  'pdf',
  'application/pdf',
  42.57,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0311',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0311.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0312.pdf',
  'Hymne_a_Amon_0312.pdf',
  'pdf',
  'application/pdf',
  27.85,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0312',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0312.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0313.pdf',
  'Khepra_Livre_Transformation_0313.pdf',
  'pdf',
  'application/pdf',
  24.49,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0313',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0313.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0314.pdf',
  'Maat_Principe_Verte_0314.pdf',
  'pdf',
  'application/pdf',
  37.96,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0314',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0314.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0315.pdf',
  'Ankh_Magazine_Obenga_0315.pdf',
  'pdf',
  'application/pdf',
  2.85,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0315',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0315.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0316.png',
  'Arbre_sephirotique_Egyptien_0316.png',
  'png',
  'image/png',
  28.14,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0316',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0316.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0317.mp3',
  'Chorale_Kabye_Amen_0317.mp3',
  'mp3',
  'audio/mpeg',
  26.97,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0317',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0317.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0318.mp4',
  'Rituel_Kheper_Matin_0318.mp4',
  'mp4',
  'video/mp4',
  41.92,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0318',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0318.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0319.pdf',
  'Papyrus_Nefertari_13203535_0319.pdf',
  'pdf',
  'application/pdf',
  23.25,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0319',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0319.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0320.pdf',
  'Grammaire_egyptienne_Champollion_0320.pdf',
  'pdf',
  'application/pdf',
  32.88,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0320',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0320.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0321.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0321.pdf',
  'pdf',
  'application/pdf',
  13.16,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0321',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0321.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0322.pdf',
  'Hymne_a_Amon_0322.pdf',
  'pdf',
  'application/pdf',
  21.27,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0322',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0322.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0323.pdf',
  'Khepra_Livre_Transformation_0323.pdf',
  'pdf',
  'application/pdf',
  18.52,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0323',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0323.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0324.pdf',
  'Maat_Principe_Verte_0324.pdf',
  'pdf',
  'application/pdf',
  44.42,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0324',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0324.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0325.pdf',
  'Ankh_Magazine_Obenga_0325.pdf',
  'pdf',
  'application/pdf',
  41.76,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0325',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0325.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0326.png',
  'Arbre_sephirotique_Egyptien_0326.png',
  'png',
  'image/png',
  19.1,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0326',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0326.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0327.mp3',
  'Chorale_Kabye_Amen_0327.mp3',
  'mp3',
  'audio/mpeg',
  34.31,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0327',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0327.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0328.mp4',
  'Rituel_Kheper_Matin_0328.mp4',
  'mp4',
  'video/mp4',
  31.02,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0328',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0328.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0329.pdf',
  'Papyrus_Nefertari_13203535_0329.pdf',
  'pdf',
  'application/pdf',
  12.93,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0329',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0329.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0330.pdf',
  'Grammaire_egyptienne_Champollion_0330.pdf',
  'pdf',
  'application/pdf',
  42.16,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0330',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0330.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0331.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0331.pdf',
  'pdf',
  'application/pdf',
  17.22,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0331',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0331.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0332.pdf',
  'Hymne_a_Amon_0332.pdf',
  'pdf',
  'application/pdf',
  23.64,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0332',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0332.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0333.pdf',
  'Khepra_Livre_Transformation_0333.pdf',
  'pdf',
  'application/pdf',
  29.43,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0333',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0333.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0334.pdf',
  'Maat_Principe_Verte_0334.pdf',
  'pdf',
  'application/pdf',
  13.56,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0334',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0334.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0335.pdf',
  'Ankh_Magazine_Obenga_0335.pdf',
  'pdf',
  'application/pdf',
  15.6,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0335',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0335.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0336.png',
  'Arbre_sephirotique_Egyptien_0336.png',
  'png',
  'image/png',
  29.01,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0336',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0336.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0337.mp3',
  'Chorale_Kabye_Amen_0337.mp3',
  'mp3',
  'audio/mpeg',
  5.64,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0337',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0337.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0338.mp4',
  'Rituel_Kheper_Matin_0338.mp4',
  'mp4',
  'video/mp4',
  18.88,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0338',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0338.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0339.pdf',
  'Papyrus_Nefertari_13203535_0339.pdf',
  'pdf',
  'application/pdf',
  2.04,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0339',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0339.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0340.pdf',
  'Grammaire_egyptienne_Champollion_0340.pdf',
  'pdf',
  'application/pdf',
  27.24,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0340',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0340.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0341.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0341.pdf',
  'pdf',
  'application/pdf',
  44.29,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0341',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0341.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0342.pdf',
  'Hymne_a_Amon_0342.pdf',
  'pdf',
  'application/pdf',
  38.37,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0342',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0342.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0343.pdf',
  'Khepra_Livre_Transformation_0343.pdf',
  'pdf',
  'application/pdf',
  40.18,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0343',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0343.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0344.pdf',
  'Maat_Principe_Verte_0344.pdf',
  'pdf',
  'application/pdf',
  42.16,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0344',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0344.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0345.pdf',
  'Ankh_Magazine_Obenga_0345.pdf',
  'pdf',
  'application/pdf',
  42.78,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0345',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0345.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0346.png',
  'Arbre_sephirotique_Egyptien_0346.png',
  'png',
  'image/png',
  20.28,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0346',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0346.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0347.mp3',
  'Chorale_Kabye_Amen_0347.mp3',
  'mp3',
  'audio/mpeg',
  37.46,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0347',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0347.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0348.mp4',
  'Rituel_Kheper_Matin_0348.mp4',
  'mp4',
  'video/mp4',
  28.82,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0348',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0348.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0349.pdf',
  'Papyrus_Nefertari_13203535_0349.pdf',
  'pdf',
  'application/pdf',
  14.83,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0349',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0349.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0350.pdf',
  'Grammaire_egyptienne_Champollion_0350.pdf',
  'pdf',
  'application/pdf',
  30.02,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0350',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0350.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0351.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0351.pdf',
  'pdf',
  'application/pdf',
  26.6,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0351',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0351.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0352.pdf',
  'Hymne_a_Amon_0352.pdf',
  'pdf',
  'application/pdf',
  20.89,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0352',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0352.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0353.pdf',
  'Khepra_Livre_Transformation_0353.pdf',
  'pdf',
  'application/pdf',
  13.32,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0353',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0353.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0354.pdf',
  'Maat_Principe_Verte_0354.pdf',
  'pdf',
  'application/pdf',
  6.79,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0354',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0354.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0355.pdf',
  'Ankh_Magazine_Obenga_0355.pdf',
  'pdf',
  'application/pdf',
  1.14,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0355',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0355.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0356.png',
  'Arbre_sephirotique_Egyptien_0356.png',
  'png',
  'image/png',
  15.08,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0356',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0356.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0357.mp3',
  'Chorale_Kabye_Amen_0357.mp3',
  'mp3',
  'audio/mpeg',
  31.29,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0357',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0357.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0358.mp4',
  'Rituel_Kheper_Matin_0358.mp4',
  'mp4',
  'video/mp4',
  2.8,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0358',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0358.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0359.pdf',
  'Papyrus_Nefertari_13203535_0359.pdf',
  'pdf',
  'application/pdf',
  39.56,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0359',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0359.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0360.pdf',
  'Grammaire_egyptienne_Champollion_0360.pdf',
  'pdf',
  'application/pdf',
  36.54,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0360',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0360.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0361.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0361.pdf',
  'pdf',
  'application/pdf',
  35.43,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0361',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0361.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0362.pdf',
  'Hymne_a_Amon_0362.pdf',
  'pdf',
  'application/pdf',
  1.69,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0362',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0362.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0363.pdf',
  'Khepra_Livre_Transformation_0363.pdf',
  'pdf',
  'application/pdf',
  20.95,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0363',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0363.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0364.pdf',
  'Maat_Principe_Verte_0364.pdf',
  'pdf',
  'application/pdf',
  7.29,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0364',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0364.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0365.pdf',
  'Ankh_Magazine_Obenga_0365.pdf',
  'pdf',
  'application/pdf',
  37.27,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0365',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0365.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0366.png',
  'Arbre_sephirotique_Egyptien_0366.png',
  'png',
  'image/png',
  41.44,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0366',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0366.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0367.mp3',
  'Chorale_Kabye_Amen_0367.mp3',
  'mp3',
  'audio/mpeg',
  31.34,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0367',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0367.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0368.mp4',
  'Rituel_Kheper_Matin_0368.mp4',
  'mp4',
  'video/mp4',
  11.49,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0368',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0368.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0369.pdf',
  'Papyrus_Nefertari_13203535_0369.pdf',
  'pdf',
  'application/pdf',
  15.44,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0369',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0369.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0370.pdf',
  'Grammaire_egyptienne_Champollion_0370.pdf',
  'pdf',
  'application/pdf',
  34.76,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0370',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0370.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0371.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0371.pdf',
  'pdf',
  'application/pdf',
  24.81,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0371',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0371.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0372.pdf',
  'Hymne_a_Amon_0372.pdf',
  'pdf',
  'application/pdf',
  12.9,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0372',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0372.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0373.pdf',
  'Khepra_Livre_Transformation_0373.pdf',
  'pdf',
  'application/pdf',
  44.98,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0373',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0373.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0374.pdf',
  'Maat_Principe_Verte_0374.pdf',
  'pdf',
  'application/pdf',
  25.2,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0374',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0374.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0375.pdf',
  'Ankh_Magazine_Obenga_0375.pdf',
  'pdf',
  'application/pdf',
  44.17,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0375',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0375.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0376.png',
  'Arbre_sephirotique_Egyptien_0376.png',
  'png',
  'image/png',
  12.47,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0376',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0376.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0377.mp3',
  'Chorale_Kabye_Amen_0377.mp3',
  'mp3',
  'audio/mpeg',
  39.81,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0377',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0377.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0378.mp4',
  'Rituel_Kheper_Matin_0378.mp4',
  'mp4',
  'video/mp4',
  38.23,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0378',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0378.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0379.pdf',
  'Papyrus_Nefertari_13203535_0379.pdf',
  'pdf',
  'application/pdf',
  25.32,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0379',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0379.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0380.pdf',
  'Grammaire_egyptienne_Champollion_0380.pdf',
  'pdf',
  'application/pdf',
  22.91,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0380',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0380.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0381.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0381.pdf',
  'pdf',
  'application/pdf',
  33.67,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0381',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0381.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0382.pdf',
  'Hymne_a_Amon_0382.pdf',
  'pdf',
  'application/pdf',
  37.72,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0382',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0382.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0383.pdf',
  'Khepra_Livre_Transformation_0383.pdf',
  'pdf',
  'application/pdf',
  41.48,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0383',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0383.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0384.pdf',
  'Maat_Principe_Verte_0384.pdf',
  'pdf',
  'application/pdf',
  1.83,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0384',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0384.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0385.pdf',
  'Ankh_Magazine_Obenga_0385.pdf',
  'pdf',
  'application/pdf',
  30.39,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0385',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0385.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0386.png',
  'Arbre_sephirotique_Egyptien_0386.png',
  'png',
  'image/png',
  32.45,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0386',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0386.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0387.mp3',
  'Chorale_Kabye_Amen_0387.mp3',
  'mp3',
  'audio/mpeg',
  20.1,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0387',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0387.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0388.mp4',
  'Rituel_Kheper_Matin_0388.mp4',
  'mp4',
  'video/mp4',
  40.45,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0388',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0388.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0389.pdf',
  'Papyrus_Nefertari_13203535_0389.pdf',
  'pdf',
  'application/pdf',
  19.73,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0389',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0389.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0390.pdf',
  'Grammaire_egyptienne_Champollion_0390.pdf',
  'pdf',
  'application/pdf',
  14.83,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_3',
  'Grammaire egyptienne Champollion 0390',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0390.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0391.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0391.pdf',
  'pdf',
  'application/pdf',
  13.22,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_3',
  'Bickel 1994 La cosmogonie egyptienne 0391',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0391.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0392.pdf',
  'Hymne_a_Amon_0392.pdf',
  'pdf',
  'application/pdf',
  30.34,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_3',
  'Hymne a Amon 0392',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0392.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0393.pdf',
  'Khepra_Livre_Transformation_0393.pdf',
  'pdf',
  'application/pdf',
  27.29,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_3',
  'Khepra Livre Transformation 0393',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0393.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0394.pdf',
  'Maat_Principe_Verte_0394.pdf',
  'pdf',
  'application/pdf',
  2.97,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_3',
  'Maat Principe Verte 0394',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0394.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0395.pdf',
  'Ankh_Magazine_Obenga_0395.pdf',
  'pdf',
  'application/pdf',
  19.16,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_3',
  'Ankh Magazine Obenga 0395',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0395.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0396.png',
  'Arbre_sephirotique_Egyptien_0396.png',
  'png',
  'image/png',
  6.37,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_3',
  'Arbre sephirotique Egyptien 0396',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0396.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0397.mp3',
  'Chorale_Kabye_Amen_0397.mp3',
  'mp3',
  'audio/mpeg',
  21.13,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_3',
  'Chorale Kabye Amen 0397',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0397.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0398.mp4',
  'Rituel_Kheper_Matin_0398.mp4',
  'mp4',
  'video/mp4',
  31.32,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_3',
  'Rituel Kheper Matin 0398',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0398.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0399.pdf',
  'Papyrus_Nefertari_13203535_0399.pdf',
  'pdf',
  'application/pdf',
  4.62,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_3',
  'Papyrus Nefertari 13203535 0399',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0399.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0400.pdf',
  'Grammaire_egyptienne_Champollion_0400.pdf',
  'pdf',
  'application/pdf',
  41.92,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0400',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0400.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0401.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0401.pdf',
  'pdf',
  'application/pdf',
  27.1,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0401',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0401.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0402.pdf',
  'Hymne_a_Amon_0402.pdf',
  'pdf',
  'application/pdf',
  40.7,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0402',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0402.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0403.pdf',
  'Khepra_Livre_Transformation_0403.pdf',
  'pdf',
  'application/pdf',
  15.98,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0403',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0403.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0404.pdf',
  'Maat_Principe_Verte_0404.pdf',
  'pdf',
  'application/pdf',
  17.09,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0404',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0404.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0405.pdf',
  'Ankh_Magazine_Obenga_0405.pdf',
  'pdf',
  'application/pdf',
  33.46,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0405',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0405.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0406.png',
  'Arbre_sephirotique_Egyptien_0406.png',
  'png',
  'image/png',
  9.94,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0406',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0406.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0407.mp3',
  'Chorale_Kabye_Amen_0407.mp3',
  'mp3',
  'audio/mpeg',
  1.24,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0407',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0407.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0408.mp4',
  'Rituel_Kheper_Matin_0408.mp4',
  'mp4',
  'video/mp4',
  22.5,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0408',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0408.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0409.pdf',
  'Papyrus_Nefertari_13203535_0409.pdf',
  'pdf',
  'application/pdf',
  43.28,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0409',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0409.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0410.pdf',
  'Grammaire_egyptienne_Champollion_0410.pdf',
  'pdf',
  'application/pdf',
  26.09,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0410',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0410.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0411.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0411.pdf',
  'pdf',
  'application/pdf',
  0.93,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0411',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0411.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0412.pdf',
  'Hymne_a_Amon_0412.pdf',
  'pdf',
  'application/pdf',
  15.98,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0412',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0412.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0413.pdf',
  'Khepra_Livre_Transformation_0413.pdf',
  'pdf',
  'application/pdf',
  17.21,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0413',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0413.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0414.pdf',
  'Maat_Principe_Verte_0414.pdf',
  'pdf',
  'application/pdf',
  3.2,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0414',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0414.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0415.pdf',
  'Ankh_Magazine_Obenga_0415.pdf',
  'pdf',
  'application/pdf',
  25.18,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0415',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0415.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0416.png',
  'Arbre_sephirotique_Egyptien_0416.png',
  'png',
  'image/png',
  29.97,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0416',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0416.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0417.mp3',
  'Chorale_Kabye_Amen_0417.mp3',
  'mp3',
  'audio/mpeg',
  8.31,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0417',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0417.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0418.mp4',
  'Rituel_Kheper_Matin_0418.mp4',
  'mp4',
  'video/mp4',
  16.97,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0418',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0418.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0419.pdf',
  'Papyrus_Nefertari_13203535_0419.pdf',
  'pdf',
  'application/pdf',
  4.16,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0419',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0419.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0420.pdf',
  'Grammaire_egyptienne_Champollion_0420.pdf',
  'pdf',
  'application/pdf',
  20.93,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0420',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0420.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0421.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0421.pdf',
  'pdf',
  'application/pdf',
  44.03,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0421',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0421.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0422.pdf',
  'Hymne_a_Amon_0422.pdf',
  'pdf',
  'application/pdf',
  20.8,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0422',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0422.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0423.pdf',
  'Khepra_Livre_Transformation_0423.pdf',
  'pdf',
  'application/pdf',
  8.58,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0423',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0423.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0424.pdf',
  'Maat_Principe_Verte_0424.pdf',
  'pdf',
  'application/pdf',
  5.67,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0424',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0424.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0425.pdf',
  'Ankh_Magazine_Obenga_0425.pdf',
  'pdf',
  'application/pdf',
  25.46,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0425',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0425.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0426.png',
  'Arbre_sephirotique_Egyptien_0426.png',
  'png',
  'image/png',
  14.79,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0426',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0426.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0427.mp3',
  'Chorale_Kabye_Amen_0427.mp3',
  'mp3',
  'audio/mpeg',
  17.37,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0427',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0427.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0428.mp4',
  'Rituel_Kheper_Matin_0428.mp4',
  'mp4',
  'video/mp4',
  36.43,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0428',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0428.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0429.pdf',
  'Papyrus_Nefertari_13203535_0429.pdf',
  'pdf',
  'application/pdf',
  18.69,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0429',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0429.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0430.pdf',
  'Grammaire_egyptienne_Champollion_0430.pdf',
  'pdf',
  'application/pdf',
  12.57,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0430',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0430.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0431.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0431.pdf',
  'pdf',
  'application/pdf',
  25.95,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0431',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0431.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0432.pdf',
  'Hymne_a_Amon_0432.pdf',
  'pdf',
  'application/pdf',
  15.28,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0432',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0432.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0433.pdf',
  'Khepra_Livre_Transformation_0433.pdf',
  'pdf',
  'application/pdf',
  8.99,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0433',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0433.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0434.pdf',
  'Maat_Principe_Verte_0434.pdf',
  'pdf',
  'application/pdf',
  28.76,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0434',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0434.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0435.pdf',
  'Ankh_Magazine_Obenga_0435.pdf',
  'pdf',
  'application/pdf',
  16.28,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0435',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0435.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0436.png',
  'Arbre_sephirotique_Egyptien_0436.png',
  'png',
  'image/png',
  29.64,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0436',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0436.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0437.mp3',
  'Chorale_Kabye_Amen_0437.mp3',
  'mp3',
  'audio/mpeg',
  15.02,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0437',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0437.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0438.mp4',
  'Rituel_Kheper_Matin_0438.mp4',
  'mp4',
  'video/mp4',
  4.01,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0438',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0438.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0439.pdf',
  'Papyrus_Nefertari_13203535_0439.pdf',
  'pdf',
  'application/pdf',
  5.86,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0439',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0439.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0440.pdf',
  'Grammaire_egyptienne_Champollion_0440.pdf',
  'pdf',
  'application/pdf',
  37.17,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0440',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0440.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0441.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0441.pdf',
  'pdf',
  'application/pdf',
  13.34,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0441',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0441.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0442.pdf',
  'Hymne_a_Amon_0442.pdf',
  'pdf',
  'application/pdf',
  9.68,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0442',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0442.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0443.pdf',
  'Khepra_Livre_Transformation_0443.pdf',
  'pdf',
  'application/pdf',
  20.29,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0443',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0443.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0444.pdf',
  'Maat_Principe_Verte_0444.pdf',
  'pdf',
  'application/pdf',
  15.53,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0444',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0444.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0445.pdf',
  'Ankh_Magazine_Obenga_0445.pdf',
  'pdf',
  'application/pdf',
  25.93,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0445',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0445.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0446.png',
  'Arbre_sephirotique_Egyptien_0446.png',
  'png',
  'image/png',
  35.46,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0446',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0446.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0447.mp3',
  'Chorale_Kabye_Amen_0447.mp3',
  'mp3',
  'audio/mpeg',
  18.3,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0447',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0447.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0448.mp4',
  'Rituel_Kheper_Matin_0448.mp4',
  'mp4',
  'video/mp4',
  11.02,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0448',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0448.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0449.pdf',
  'Papyrus_Nefertari_13203535_0449.pdf',
  'pdf',
  'application/pdf',
  36.52,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0449',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0449.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0450.pdf',
  'Grammaire_egyptienne_Champollion_0450.pdf',
  'pdf',
  'application/pdf',
  6.65,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0450',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0450.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0451.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0451.pdf',
  'pdf',
  'application/pdf',
  28.23,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0451',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0451.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0452.pdf',
  'Hymne_a_Amon_0452.pdf',
  'pdf',
  'application/pdf',
  42.01,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0452',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0452.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0453.pdf',
  'Khepra_Livre_Transformation_0453.pdf',
  'pdf',
  'application/pdf',
  15.04,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0453',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0453.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0454.pdf',
  'Maat_Principe_Verte_0454.pdf',
  'pdf',
  'application/pdf',
  1.91,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0454',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0454.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0455.pdf',
  'Ankh_Magazine_Obenga_0455.pdf',
  'pdf',
  'application/pdf',
  38.73,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0455',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0455.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0456.png',
  'Arbre_sephirotique_Egyptien_0456.png',
  'png',
  'image/png',
  18.15,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0456',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0456.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0457.mp3',
  'Chorale_Kabye_Amen_0457.mp3',
  'mp3',
  'audio/mpeg',
  31.92,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0457',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0457.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0458.mp4',
  'Rituel_Kheper_Matin_0458.mp4',
  'mp4',
  'video/mp4',
  43.65,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0458',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0458.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0459.pdf',
  'Papyrus_Nefertari_13203535_0459.pdf',
  'pdf',
  'application/pdf',
  33.76,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0459',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0459.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0460.pdf',
  'Grammaire_egyptienne_Champollion_0460.pdf',
  'pdf',
  'application/pdf',
  34.34,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0460',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0460.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0461.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0461.pdf',
  'pdf',
  'application/pdf',
  23.9,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0461',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0461.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0462.pdf',
  'Hymne_a_Amon_0462.pdf',
  'pdf',
  'application/pdf',
  28.82,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0462',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0462.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0463.pdf',
  'Khepra_Livre_Transformation_0463.pdf',
  'pdf',
  'application/pdf',
  42.48,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0463',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0463.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0464.pdf',
  'Maat_Principe_Verte_0464.pdf',
  'pdf',
  'application/pdf',
  42.82,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0464',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0464.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0465.pdf',
  'Ankh_Magazine_Obenga_0465.pdf',
  'pdf',
  'application/pdf',
  5.32,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0465',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0465.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0466.png',
  'Arbre_sephirotique_Egyptien_0466.png',
  'png',
  'image/png',
  13.17,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0466',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0466.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0467.mp3',
  'Chorale_Kabye_Amen_0467.mp3',
  'mp3',
  'audio/mpeg',
  28.06,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0467',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0467.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0468.mp4',
  'Rituel_Kheper_Matin_0468.mp4',
  'mp4',
  'video/mp4',
  41.08,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0468',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0468.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0469.pdf',
  'Papyrus_Nefertari_13203535_0469.pdf',
  'pdf',
  'application/pdf',
  22.88,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0469',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0469.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0470.pdf',
  'Grammaire_egyptienne_Champollion_0470.pdf',
  'pdf',
  'application/pdf',
  37.03,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0470',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0470.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0471.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0471.pdf',
  'pdf',
  'application/pdf',
  27.76,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0471',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0471.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0472.pdf',
  'Hymne_a_Amon_0472.pdf',
  'pdf',
  'application/pdf',
  3.35,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0472',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0472.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0473.pdf',
  'Khepra_Livre_Transformation_0473.pdf',
  'pdf',
  'application/pdf',
  14.44,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0473',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0473.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0474.pdf',
  'Maat_Principe_Verte_0474.pdf',
  'pdf',
  'application/pdf',
  40.2,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0474',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0474.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0475.pdf',
  'Ankh_Magazine_Obenga_0475.pdf',
  'pdf',
  'application/pdf',
  34.44,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0475',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0475.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0476.png',
  'Arbre_sephirotique_Egyptien_0476.png',
  'png',
  'image/png',
  43.6,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0476',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0476.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0477.mp3',
  'Chorale_Kabye_Amen_0477.mp3',
  'mp3',
  'audio/mpeg',
  35.42,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0477',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0477.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0478.mp4',
  'Rituel_Kheper_Matin_0478.mp4',
  'mp4',
  'video/mp4',
  31.63,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0478',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0478.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0479.pdf',
  'Papyrus_Nefertari_13203535_0479.pdf',
  'pdf',
  'application/pdf',
  16.18,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0479',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0479.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0480.pdf',
  'Grammaire_egyptienne_Champollion_0480.pdf',
  'pdf',
  'application/pdf',
  31.96,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0480',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0480.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0481.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0481.pdf',
  'pdf',
  'application/pdf',
  9.36,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0481',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0481.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0482.pdf',
  'Hymne_a_Amon_0482.pdf',
  'pdf',
  'application/pdf',
  11.4,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0482',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0482.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0483.pdf',
  'Khepra_Livre_Transformation_0483.pdf',
  'pdf',
  'application/pdf',
  17.0,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0483',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0483.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0484.pdf',
  'Maat_Principe_Verte_0484.pdf',
  'pdf',
  'application/pdf',
  14.23,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0484',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0484.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0485.pdf',
  'Ankh_Magazine_Obenga_0485.pdf',
  'pdf',
  'application/pdf',
  13.17,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0485',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0485.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0486.png',
  'Arbre_sephirotique_Egyptien_0486.png',
  'png',
  'image/png',
  33.36,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0486',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0486.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0487.mp3',
  'Chorale_Kabye_Amen_0487.mp3',
  'mp3',
  'audio/mpeg',
  44.91,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0487',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0487.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0488.mp4',
  'Rituel_Kheper_Matin_0488.mp4',
  'mp4',
  'video/mp4',
  38.78,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0488',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0488.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0489.pdf',
  'Papyrus_Nefertari_13203535_0489.pdf',
  'pdf',
  'application/pdf',
  32.01,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0489',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0489.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0490.pdf',
  'Grammaire_egyptienne_Champollion_0490.pdf',
  'pdf',
  'application/pdf',
  10.85,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_4',
  'Grammaire egyptienne Champollion 0490',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0490.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0491.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0491.pdf',
  'pdf',
  'application/pdf',
  23.02,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_4',
  'Bickel 1994 La cosmogonie egyptienne 0491',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0491.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0492.pdf',
  'Hymne_a_Amon_0492.pdf',
  'pdf',
  'application/pdf',
  11.68,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_4',
  'Hymne a Amon 0492',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0492.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0493.pdf',
  'Khepra_Livre_Transformation_0493.pdf',
  'pdf',
  'application/pdf',
  33.81,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_4',
  'Khepra Livre Transformation 0493',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0493.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0494.pdf',
  'Maat_Principe_Verte_0494.pdf',
  'pdf',
  'application/pdf',
  5.72,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_4',
  'Maat Principe Verte 0494',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0494.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0495.pdf',
  'Ankh_Magazine_Obenga_0495.pdf',
  'pdf',
  'application/pdf',
  7.38,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_4',
  'Ankh Magazine Obenga 0495',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0495.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0496.png',
  'Arbre_sephirotique_Egyptien_0496.png',
  'png',
  'image/png',
  27.5,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_4',
  'Arbre sephirotique Egyptien 0496',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0496.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0497.mp3',
  'Chorale_Kabye_Amen_0497.mp3',
  'mp3',
  'audio/mpeg',
  17.4,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_4',
  'Chorale Kabye Amen 0497',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0497.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0498.mp4',
  'Rituel_Kheper_Matin_0498.mp4',
  'mp4',
  'video/mp4',
  16.57,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_4',
  'Rituel Kheper Matin 0498',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0498.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0499.pdf',
  'Papyrus_Nefertari_13203535_0499.pdf',
  'pdf',
  'application/pdf',
  1.5,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_4',
  'Papyrus Nefertari 13203535 0499',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0499.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0500.pdf',
  'Grammaire_egyptienne_Champollion_0500.pdf',
  'pdf',
  'application/pdf',
  23.83,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0500',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0500.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0501.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0501.pdf',
  'pdf',
  'application/pdf',
  35.81,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0501',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0501.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0502.pdf',
  'Hymne_a_Amon_0502.pdf',
  'pdf',
  'application/pdf',
  18.86,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0502',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0502.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0503.pdf',
  'Khepra_Livre_Transformation_0503.pdf',
  'pdf',
  'application/pdf',
  28.52,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0503',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0503.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0504.pdf',
  'Maat_Principe_Verte_0504.pdf',
  'pdf',
  'application/pdf',
  22.04,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0504',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0504.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0505.pdf',
  'Ankh_Magazine_Obenga_0505.pdf',
  'pdf',
  'application/pdf',
  34.42,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0505',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0505.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0506.png',
  'Arbre_sephirotique_Egyptien_0506.png',
  'png',
  'image/png',
  8.13,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0506',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0506.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0507.mp3',
  'Chorale_Kabye_Amen_0507.mp3',
  'mp3',
  'audio/mpeg',
  34.84,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0507',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0507.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0508.mp4',
  'Rituel_Kheper_Matin_0508.mp4',
  'mp4',
  'video/mp4',
  27.24,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0508',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0508.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0509.pdf',
  'Papyrus_Nefertari_13203535_0509.pdf',
  'pdf',
  'application/pdf',
  18.7,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0509',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0509.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0510.pdf',
  'Grammaire_egyptienne_Champollion_0510.pdf',
  'pdf',
  'application/pdf',
  5.99,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0510',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0510.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0511.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0511.pdf',
  'pdf',
  'application/pdf',
  37.99,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0511',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0511.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0512.pdf',
  'Hymne_a_Amon_0512.pdf',
  'pdf',
  'application/pdf',
  39.31,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0512',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0512.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0513.pdf',
  'Khepra_Livre_Transformation_0513.pdf',
  'pdf',
  'application/pdf',
  22.22,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0513',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0513.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0514.pdf',
  'Maat_Principe_Verte_0514.pdf',
  'pdf',
  'application/pdf',
  26.23,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0514',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0514.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0515.pdf',
  'Ankh_Magazine_Obenga_0515.pdf',
  'pdf',
  'application/pdf',
  5.05,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0515',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0515.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0516.png',
  'Arbre_sephirotique_Egyptien_0516.png',
  'png',
  'image/png',
  5.06,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0516',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0516.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0517.mp3',
  'Chorale_Kabye_Amen_0517.mp3',
  'mp3',
  'audio/mpeg',
  18.29,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0517',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0517.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0518.mp4',
  'Rituel_Kheper_Matin_0518.mp4',
  'mp4',
  'video/mp4',
  13.68,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0518',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0518.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0519.pdf',
  'Papyrus_Nefertari_13203535_0519.pdf',
  'pdf',
  'application/pdf',
  4.53,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0519',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0519.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0520.pdf',
  'Grammaire_egyptienne_Champollion_0520.pdf',
  'pdf',
  'application/pdf',
  19.04,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0520',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0520.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0521.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0521.pdf',
  'pdf',
  'application/pdf',
  43.49,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0521',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0521.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0522.pdf',
  'Hymne_a_Amon_0522.pdf',
  'pdf',
  'application/pdf',
  14.85,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0522',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0522.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0523.pdf',
  'Khepra_Livre_Transformation_0523.pdf',
  'pdf',
  'application/pdf',
  13.03,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0523',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0523.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0524.pdf',
  'Maat_Principe_Verte_0524.pdf',
  'pdf',
  'application/pdf',
  20.37,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0524',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0524.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0525.pdf',
  'Ankh_Magazine_Obenga_0525.pdf',
  'pdf',
  'application/pdf',
  28.94,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0525',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0525.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0526.png',
  'Arbre_sephirotique_Egyptien_0526.png',
  'png',
  'image/png',
  43.51,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0526',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0526.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0527.mp3',
  'Chorale_Kabye_Amen_0527.mp3',
  'mp3',
  'audio/mpeg',
  11.53,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0527',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0527.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0528.mp4',
  'Rituel_Kheper_Matin_0528.mp4',
  'mp4',
  'video/mp4',
  9.98,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0528',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0528.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0529.pdf',
  'Papyrus_Nefertari_13203535_0529.pdf',
  'pdf',
  'application/pdf',
  35.28,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0529',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0529.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0530.pdf',
  'Grammaire_egyptienne_Champollion_0530.pdf',
  'pdf',
  'application/pdf',
  23.91,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0530',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0530.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0531.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0531.pdf',
  'pdf',
  'application/pdf',
  32.92,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0531',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0531.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0532.pdf',
  'Hymne_a_Amon_0532.pdf',
  'pdf',
  'application/pdf',
  8.38,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0532',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0532.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0533.pdf',
  'Khepra_Livre_Transformation_0533.pdf',
  'pdf',
  'application/pdf',
  1.71,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0533',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0533.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0534.pdf',
  'Maat_Principe_Verte_0534.pdf',
  'pdf',
  'application/pdf',
  43.83,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0534',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0534.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0535.pdf',
  'Ankh_Magazine_Obenga_0535.pdf',
  'pdf',
  'application/pdf',
  41.62,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0535',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0535.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0536.png',
  'Arbre_sephirotique_Egyptien_0536.png',
  'png',
  'image/png',
  32.9,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0536',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0536.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0537.mp3',
  'Chorale_Kabye_Amen_0537.mp3',
  'mp3',
  'audio/mpeg',
  40.56,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0537',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0537.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0538.mp4',
  'Rituel_Kheper_Matin_0538.mp4',
  'mp4',
  'video/mp4',
  2.94,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0538',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0538.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0539.pdf',
  'Papyrus_Nefertari_13203535_0539.pdf',
  'pdf',
  'application/pdf',
  17.18,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0539',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0539.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0540.pdf',
  'Grammaire_egyptienne_Champollion_0540.pdf',
  'pdf',
  'application/pdf',
  35.05,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0540',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0540.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0541.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0541.pdf',
  'pdf',
  'application/pdf',
  7.29,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0541',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0541.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0542.pdf',
  'Hymne_a_Amon_0542.pdf',
  'pdf',
  'application/pdf',
  37.99,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0542',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0542.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0543.pdf',
  'Khepra_Livre_Transformation_0543.pdf',
  'pdf',
  'application/pdf',
  22.91,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0543',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0543.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0544.pdf',
  'Maat_Principe_Verte_0544.pdf',
  'pdf',
  'application/pdf',
  22.68,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0544',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0544.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0545.pdf',
  'Ankh_Magazine_Obenga_0545.pdf',
  'pdf',
  'application/pdf',
  38.03,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0545',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0545.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0546.png',
  'Arbre_sephirotique_Egyptien_0546.png',
  'png',
  'image/png',
  24.66,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0546',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0546.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0547.mp3',
  'Chorale_Kabye_Amen_0547.mp3',
  'mp3',
  'audio/mpeg',
  18.67,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0547',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0547.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0548.mp4',
  'Rituel_Kheper_Matin_0548.mp4',
  'mp4',
  'video/mp4',
  6.92,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0548',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0548.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0549.pdf',
  'Papyrus_Nefertari_13203535_0549.pdf',
  'pdf',
  'application/pdf',
  23.06,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0549',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0549.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0550.pdf',
  'Grammaire_egyptienne_Champollion_0550.pdf',
  'pdf',
  'application/pdf',
  33.08,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0550',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0550.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0551.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0551.pdf',
  'pdf',
  'application/pdf',
  17.38,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0551',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0551.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0552.pdf',
  'Hymne_a_Amon_0552.pdf',
  'pdf',
  'application/pdf',
  8.93,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0552',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0552.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0553.pdf',
  'Khepra_Livre_Transformation_0553.pdf',
  'pdf',
  'application/pdf',
  11.67,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0553',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0553.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0554.pdf',
  'Maat_Principe_Verte_0554.pdf',
  'pdf',
  'application/pdf',
  32.21,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0554',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0554.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0555.pdf',
  'Ankh_Magazine_Obenga_0555.pdf',
  'pdf',
  'application/pdf',
  13.0,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0555',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0555.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0556.png',
  'Arbre_sephirotique_Egyptien_0556.png',
  'png',
  'image/png',
  3.09,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0556',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0556.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0557.mp3',
  'Chorale_Kabye_Amen_0557.mp3',
  'mp3',
  'audio/mpeg',
  42.16,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0557',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0557.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0558.mp4',
  'Rituel_Kheper_Matin_0558.mp4',
  'mp4',
  'video/mp4',
  20.98,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0558',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0558.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0559.pdf',
  'Papyrus_Nefertari_13203535_0559.pdf',
  'pdf',
  'application/pdf',
  33.34,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0559',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0559.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0560.pdf',
  'Grammaire_egyptienne_Champollion_0560.pdf',
  'pdf',
  'application/pdf',
  12.27,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0560',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0560.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0561.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0561.pdf',
  'pdf',
  'application/pdf',
  11.47,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0561',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0561.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0562.pdf',
  'Hymne_a_Amon_0562.pdf',
  'pdf',
  'application/pdf',
  1.68,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0562',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0562.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0563.pdf',
  'Khepra_Livre_Transformation_0563.pdf',
  'pdf',
  'application/pdf',
  6.25,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0563',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0563.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0564.pdf',
  'Maat_Principe_Verte_0564.pdf',
  'pdf',
  'application/pdf',
  2.28,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0564',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0564.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0565.pdf',
  'Ankh_Magazine_Obenga_0565.pdf',
  'pdf',
  'application/pdf',
  31.06,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0565',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0565.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0566.png',
  'Arbre_sephirotique_Egyptien_0566.png',
  'png',
  'image/png',
  24.86,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0566',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0566.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0567.mp3',
  'Chorale_Kabye_Amen_0567.mp3',
  'mp3',
  'audio/mpeg',
  3.72,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0567',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0567.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0568.mp4',
  'Rituel_Kheper_Matin_0568.mp4',
  'mp4',
  'video/mp4',
  4.04,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0568',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0568.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0569.pdf',
  'Papyrus_Nefertari_13203535_0569.pdf',
  'pdf',
  'application/pdf',
  26.67,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0569',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0569.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0570.pdf',
  'Grammaire_egyptienne_Champollion_0570.pdf',
  'pdf',
  'application/pdf',
  13.84,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0570',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0570.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0571.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0571.pdf',
  'pdf',
  'application/pdf',
  35.26,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0571',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0571.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0572.pdf',
  'Hymne_a_Amon_0572.pdf',
  'pdf',
  'application/pdf',
  24.08,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0572',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0572.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0573.pdf',
  'Khepra_Livre_Transformation_0573.pdf',
  'pdf',
  'application/pdf',
  14.75,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0573',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0573.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0574.pdf',
  'Maat_Principe_Verte_0574.pdf',
  'pdf',
  'application/pdf',
  22.91,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0574',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0574.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0575.pdf',
  'Ankh_Magazine_Obenga_0575.pdf',
  'pdf',
  'application/pdf',
  18.7,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0575',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0575.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0576.png',
  'Arbre_sephirotique_Egyptien_0576.png',
  'png',
  'image/png',
  27.57,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0576',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0576.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0577.mp3',
  'Chorale_Kabye_Amen_0577.mp3',
  'mp3',
  'audio/mpeg',
  25.71,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0577',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0577.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0578.mp4',
  'Rituel_Kheper_Matin_0578.mp4',
  'mp4',
  'video/mp4',
  25.0,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0578',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0578.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0579.pdf',
  'Papyrus_Nefertari_13203535_0579.pdf',
  'pdf',
  'application/pdf',
  24.82,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0579',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0579.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0580.pdf',
  'Grammaire_egyptienne_Champollion_0580.pdf',
  'pdf',
  'application/pdf',
  5.58,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0580',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0580.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0581.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0581.pdf',
  'pdf',
  'application/pdf',
  36.72,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0581',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0581.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0582.pdf',
  'Hymne_a_Amon_0582.pdf',
  'pdf',
  'application/pdf',
  12.91,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0582',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0582.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0583.pdf',
  'Khepra_Livre_Transformation_0583.pdf',
  'pdf',
  'application/pdf',
  6.82,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0583',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0583.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0584.pdf',
  'Maat_Principe_Verte_0584.pdf',
  'pdf',
  'application/pdf',
  12.99,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0584',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0584.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0585.pdf',
  'Ankh_Magazine_Obenga_0585.pdf',
  'pdf',
  'application/pdf',
  24.04,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0585',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0585.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0586.png',
  'Arbre_sephirotique_Egyptien_0586.png',
  'png',
  'image/png',
  13.23,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0586',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0586.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0587.mp3',
  'Chorale_Kabye_Amen_0587.mp3',
  'mp3',
  'audio/mpeg',
  18.99,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0587',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0587.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0588.mp4',
  'Rituel_Kheper_Matin_0588.mp4',
  'mp4',
  'video/mp4',
  44.0,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0588',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0588.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0589.pdf',
  'Papyrus_Nefertari_13203535_0589.pdf',
  'pdf',
  'application/pdf',
  26.25,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0589',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0589.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0590.pdf',
  'Grammaire_egyptienne_Champollion_0590.pdf',
  'pdf',
  'application/pdf',
  23.11,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_5',
  'Grammaire egyptienne Champollion 0590',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0590.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0591.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0591.pdf',
  'pdf',
  'application/pdf',
  28.82,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_5',
  'Bickel 1994 La cosmogonie egyptienne 0591',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0591.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0592.pdf',
  'Hymne_a_Amon_0592.pdf',
  'pdf',
  'application/pdf',
  11.35,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_5',
  'Hymne a Amon 0592',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0592.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0593.pdf',
  'Khepra_Livre_Transformation_0593.pdf',
  'pdf',
  'application/pdf',
  8.94,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_5',
  'Khepra Livre Transformation 0593',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0593.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0594.pdf',
  'Maat_Principe_Verte_0594.pdf',
  'pdf',
  'application/pdf',
  21.33,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_5',
  'Maat Principe Verte 0594',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0594.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0595.pdf',
  'Ankh_Magazine_Obenga_0595.pdf',
  'pdf',
  'application/pdf',
  16.02,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_5',
  'Ankh Magazine Obenga 0595',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0595.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0596.png',
  'Arbre_sephirotique_Egyptien_0596.png',
  'png',
  'image/png',
  29.84,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_5',
  'Arbre sephirotique Egyptien 0596',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0596.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0597.mp3',
  'Chorale_Kabye_Amen_0597.mp3',
  'mp3',
  'audio/mpeg',
  32.0,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_5',
  'Chorale Kabye Amen 0597',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0597.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0598.mp4',
  'Rituel_Kheper_Matin_0598.mp4',
  'mp4',
  'video/mp4',
  9.73,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_5',
  'Rituel Kheper Matin 0598',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0598.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0599.pdf',
  'Papyrus_Nefertari_13203535_0599.pdf',
  'pdf',
  'application/pdf',
  32.88,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_5',
  'Papyrus Nefertari 13203535 0599',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0599.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0600.pdf',
  'Grammaire_egyptienne_Champollion_0600.pdf',
  'pdf',
  'application/pdf',
  37.51,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0600',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0600.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0601.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0601.pdf',
  'pdf',
  'application/pdf',
  37.27,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0601',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0601.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0602.pdf',
  'Hymne_a_Amon_0602.pdf',
  'pdf',
  'application/pdf',
  35.81,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0602',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0602.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0603.pdf',
  'Khepra_Livre_Transformation_0603.pdf',
  'pdf',
  'application/pdf',
  15.4,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0603',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0603.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0604.pdf',
  'Maat_Principe_Verte_0604.pdf',
  'pdf',
  'application/pdf',
  22.11,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0604',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0604.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0605.pdf',
  'Ankh_Magazine_Obenga_0605.pdf',
  'pdf',
  'application/pdf',
  39.3,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0605',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0605.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0606.png',
  'Arbre_sephirotique_Egyptien_0606.png',
  'png',
  'image/png',
  26.42,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0606',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0606.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0607.mp3',
  'Chorale_Kabye_Amen_0607.mp3',
  'mp3',
  'audio/mpeg',
  7.87,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0607',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0607.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0608.mp4',
  'Rituel_Kheper_Matin_0608.mp4',
  'mp4',
  'video/mp4',
  16.94,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0608',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0608.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0609.pdf',
  'Papyrus_Nefertari_13203535_0609.pdf',
  'pdf',
  'application/pdf',
  41.93,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0609',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0609.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0610.pdf',
  'Grammaire_egyptienne_Champollion_0610.pdf',
  'pdf',
  'application/pdf',
  44.89,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0610',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0610.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0611.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0611.pdf',
  'pdf',
  'application/pdf',
  8.18,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0611',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0611.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0612.pdf',
  'Hymne_a_Amon_0612.pdf',
  'pdf',
  'application/pdf',
  6.57,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0612',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0612.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0613.pdf',
  'Khepra_Livre_Transformation_0613.pdf',
  'pdf',
  'application/pdf',
  40.55,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0613',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0613.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0614.pdf',
  'Maat_Principe_Verte_0614.pdf',
  'pdf',
  'application/pdf',
  12.26,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0614',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0614.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0615.pdf',
  'Ankh_Magazine_Obenga_0615.pdf',
  'pdf',
  'application/pdf',
  27.97,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0615',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0615.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0616.png',
  'Arbre_sephirotique_Egyptien_0616.png',
  'png',
  'image/png',
  30.05,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0616',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0616.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0617.mp3',
  'Chorale_Kabye_Amen_0617.mp3',
  'mp3',
  'audio/mpeg',
  7.05,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0617',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0617.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0618.mp4',
  'Rituel_Kheper_Matin_0618.mp4',
  'mp4',
  'video/mp4',
  22.38,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0618',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0618.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0619.pdf',
  'Papyrus_Nefertari_13203535_0619.pdf',
  'pdf',
  'application/pdf',
  11.8,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0619',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0619.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0620.pdf',
  'Grammaire_egyptienne_Champollion_0620.pdf',
  'pdf',
  'application/pdf',
  19.83,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0620',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0620.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0621.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0621.pdf',
  'pdf',
  'application/pdf',
  23.54,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0621',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0621.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0622.pdf',
  'Hymne_a_Amon_0622.pdf',
  'pdf',
  'application/pdf',
  35.15,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0622',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0622.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0623.pdf',
  'Khepra_Livre_Transformation_0623.pdf',
  'pdf',
  'application/pdf',
  11.28,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0623',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0623.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0624.pdf',
  'Maat_Principe_Verte_0624.pdf',
  'pdf',
  'application/pdf',
  33.29,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0624',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0624.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0625.pdf',
  'Ankh_Magazine_Obenga_0625.pdf',
  'pdf',
  'application/pdf',
  40.25,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0625',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0625.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0626.png',
  'Arbre_sephirotique_Egyptien_0626.png',
  'png',
  'image/png',
  39.85,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0626',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0626.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0627.mp3',
  'Chorale_Kabye_Amen_0627.mp3',
  'mp3',
  'audio/mpeg',
  26.74,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0627',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0627.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0628.mp4',
  'Rituel_Kheper_Matin_0628.mp4',
  'mp4',
  'video/mp4',
  7.11,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0628',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0628.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0629.pdf',
  'Papyrus_Nefertari_13203535_0629.pdf',
  'pdf',
  'application/pdf',
  44.21,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0629',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0629.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0630.pdf',
  'Grammaire_egyptienne_Champollion_0630.pdf',
  'pdf',
  'application/pdf',
  21.66,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0630',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0630.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0631.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0631.pdf',
  'pdf',
  'application/pdf',
  17.25,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0631',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0631.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0632.pdf',
  'Hymne_a_Amon_0632.pdf',
  'pdf',
  'application/pdf',
  40.88,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0632',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0632.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0633.pdf',
  'Khepra_Livre_Transformation_0633.pdf',
  'pdf',
  'application/pdf',
  43.36,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0633',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0633.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0634.pdf',
  'Maat_Principe_Verte_0634.pdf',
  'pdf',
  'application/pdf',
  0.66,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0634',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0634.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0635.pdf',
  'Ankh_Magazine_Obenga_0635.pdf',
  'pdf',
  'application/pdf',
  28.11,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0635',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0635.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0636.png',
  'Arbre_sephirotique_Egyptien_0636.png',
  'png',
  'image/png',
  2.58,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0636',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0636.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0637.mp3',
  'Chorale_Kabye_Amen_0637.mp3',
  'mp3',
  'audio/mpeg',
  44.71,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0637',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0637.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0638.mp4',
  'Rituel_Kheper_Matin_0638.mp4',
  'mp4',
  'video/mp4',
  35.95,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0638',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0638.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0639.pdf',
  'Papyrus_Nefertari_13203535_0639.pdf',
  'pdf',
  'application/pdf',
  30.35,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0639',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0639.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0640.pdf',
  'Grammaire_egyptienne_Champollion_0640.pdf',
  'pdf',
  'application/pdf',
  36.52,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0640',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0640.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0641.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0641.pdf',
  'pdf',
  'application/pdf',
  33.85,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0641',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0641.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0642.pdf',
  'Hymne_a_Amon_0642.pdf',
  'pdf',
  'application/pdf',
  41.05,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0642',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0642.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0643.pdf',
  'Khepra_Livre_Transformation_0643.pdf',
  'pdf',
  'application/pdf',
  31.01,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0643',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0643.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0644.pdf',
  'Maat_Principe_Verte_0644.pdf',
  'pdf',
  'application/pdf',
  5.43,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0644',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0644.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0645.pdf',
  'Ankh_Magazine_Obenga_0645.pdf',
  'pdf',
  'application/pdf',
  22.15,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0645',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0645.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0646.png',
  'Arbre_sephirotique_Egyptien_0646.png',
  'png',
  'image/png',
  16.99,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0646',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0646.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0647.mp3',
  'Chorale_Kabye_Amen_0647.mp3',
  'mp3',
  'audio/mpeg',
  2.84,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0647',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0647.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0648.mp4',
  'Rituel_Kheper_Matin_0648.mp4',
  'mp4',
  'video/mp4',
  26.74,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0648',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0648.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0649.pdf',
  'Papyrus_Nefertari_13203535_0649.pdf',
  'pdf',
  'application/pdf',
  35.87,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0649',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0649.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0650.pdf',
  'Grammaire_egyptienne_Champollion_0650.pdf',
  'pdf',
  'application/pdf',
  4.16,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0650',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0650.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0651.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0651.pdf',
  'pdf',
  'application/pdf',
  9.65,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0651',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0651.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0652.pdf',
  'Hymne_a_Amon_0652.pdf',
  'pdf',
  'application/pdf',
  1.23,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0652',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0652.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0653.pdf',
  'Khepra_Livre_Transformation_0653.pdf',
  'pdf',
  'application/pdf',
  6.87,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0653',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0653.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0654.pdf',
  'Maat_Principe_Verte_0654.pdf',
  'pdf',
  'application/pdf',
  9.17,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0654',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0654.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0655.pdf',
  'Ankh_Magazine_Obenga_0655.pdf',
  'pdf',
  'application/pdf',
  19.33,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0655',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0655.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0656.png',
  'Arbre_sephirotique_Egyptien_0656.png',
  'png',
  'image/png',
  2.3,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0656',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0656.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0657.mp3',
  'Chorale_Kabye_Amen_0657.mp3',
  'mp3',
  'audio/mpeg',
  8.97,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0657',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0657.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0658.mp4',
  'Rituel_Kheper_Matin_0658.mp4',
  'mp4',
  'video/mp4',
  41.5,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0658',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0658.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0659.pdf',
  'Papyrus_Nefertari_13203535_0659.pdf',
  'pdf',
  'application/pdf',
  13.25,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0659',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0659.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0660.pdf',
  'Grammaire_egyptienne_Champollion_0660.pdf',
  'pdf',
  'application/pdf',
  23.4,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0660',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0660.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0661.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0661.pdf',
  'pdf',
  'application/pdf',
  39.54,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0661',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0661.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0662.pdf',
  'Hymne_a_Amon_0662.pdf',
  'pdf',
  'application/pdf',
  15.92,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0662',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0662.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0663.pdf',
  'Khepra_Livre_Transformation_0663.pdf',
  'pdf',
  'application/pdf',
  24.63,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0663',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0663.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0664.pdf',
  'Maat_Principe_Verte_0664.pdf',
  'pdf',
  'application/pdf',
  3.79,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0664',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0664.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0665.pdf',
  'Ankh_Magazine_Obenga_0665.pdf',
  'pdf',
  'application/pdf',
  37.1,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0665',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0665.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0666.png',
  'Arbre_sephirotique_Egyptien_0666.png',
  'png',
  'image/png',
  41.49,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0666',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0666.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0667.mp3',
  'Chorale_Kabye_Amen_0667.mp3',
  'mp3',
  'audio/mpeg',
  18.52,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0667',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0667.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0668.mp4',
  'Rituel_Kheper_Matin_0668.mp4',
  'mp4',
  'video/mp4',
  11.52,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0668',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0668.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0669.pdf',
  'Papyrus_Nefertari_13203535_0669.pdf',
  'pdf',
  'application/pdf',
  21.12,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0669',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0669.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0670.pdf',
  'Grammaire_egyptienne_Champollion_0670.pdf',
  'pdf',
  'application/pdf',
  23.61,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0670',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0670.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0671.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0671.pdf',
  'pdf',
  'application/pdf',
  4.12,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0671',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0671.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0672.pdf',
  'Hymne_a_Amon_0672.pdf',
  'pdf',
  'application/pdf',
  30.42,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0672',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0672.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0673.pdf',
  'Khepra_Livre_Transformation_0673.pdf',
  'pdf',
  'application/pdf',
  23.12,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0673',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0673.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0674.pdf',
  'Maat_Principe_Verte_0674.pdf',
  'pdf',
  'application/pdf',
  32.34,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0674',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0674.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0675.pdf',
  'Ankh_Magazine_Obenga_0675.pdf',
  'pdf',
  'application/pdf',
  4.19,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0675',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0675.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0676.png',
  'Arbre_sephirotique_Egyptien_0676.png',
  'png',
  'image/png',
  44.78,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0676',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0676.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0677.mp3',
  'Chorale_Kabye_Amen_0677.mp3',
  'mp3',
  'audio/mpeg',
  18.23,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0677',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0677.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0678.mp4',
  'Rituel_Kheper_Matin_0678.mp4',
  'mp4',
  'video/mp4',
  13.24,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0678',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0678.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0679.pdf',
  'Papyrus_Nefertari_13203535_0679.pdf',
  'pdf',
  'application/pdf',
  17.72,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0679',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0679.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0680.pdf',
  'Grammaire_egyptienne_Champollion_0680.pdf',
  'pdf',
  'application/pdf',
  10.63,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0680',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0680.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0681.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0681.pdf',
  'pdf',
  'application/pdf',
  22.42,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0681',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0681.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0682.pdf',
  'Hymne_a_Amon_0682.pdf',
  'pdf',
  'application/pdf',
  35.92,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0682',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0682.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0683.pdf',
  'Khepra_Livre_Transformation_0683.pdf',
  'pdf',
  'application/pdf',
  12.77,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0683',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0683.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0684.pdf',
  'Maat_Principe_Verte_0684.pdf',
  'pdf',
  'application/pdf',
  0.95,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0684',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0684.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0685.pdf',
  'Ankh_Magazine_Obenga_0685.pdf',
  'pdf',
  'application/pdf',
  8.52,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0685',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0685.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0686.png',
  'Arbre_sephirotique_Egyptien_0686.png',
  'png',
  'image/png',
  31.21,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0686',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0686.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0687.mp3',
  'Chorale_Kabye_Amen_0687.mp3',
  'mp3',
  'audio/mpeg',
  15.44,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0687',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0687.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0688.mp4',
  'Rituel_Kheper_Matin_0688.mp4',
  'mp4',
  'video/mp4',
  39.69,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0688',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0688.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0689.pdf',
  'Papyrus_Nefertari_13203535_0689.pdf',
  'pdf',
  'application/pdf',
  35.68,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0689',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0689.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0690.pdf',
  'Grammaire_egyptienne_Champollion_0690.pdf',
  'pdf',
  'application/pdf',
  17.99,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_6',
  'Grammaire egyptienne Champollion 0690',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0690.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0691.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0691.pdf',
  'pdf',
  'application/pdf',
  44.71,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_6',
  'Bickel 1994 La cosmogonie egyptienne 0691',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0691.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0692.pdf',
  'Hymne_a_Amon_0692.pdf',
  'pdf',
  'application/pdf',
  23.24,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_6',
  'Hymne a Amon 0692',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0692.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0693.pdf',
  'Khepra_Livre_Transformation_0693.pdf',
  'pdf',
  'application/pdf',
  32.32,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_6',
  'Khepra Livre Transformation 0693',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0693.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0694.pdf',
  'Maat_Principe_Verte_0694.pdf',
  'pdf',
  'application/pdf',
  37.6,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_6',
  'Maat Principe Verte 0694',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0694.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0695.pdf',
  'Ankh_Magazine_Obenga_0695.pdf',
  'pdf',
  'application/pdf',
  16.82,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_6',
  'Ankh Magazine Obenga 0695',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0695.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0696.png',
  'Arbre_sephirotique_Egyptien_0696.png',
  'png',
  'image/png',
  20.98,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_6',
  'Arbre sephirotique Egyptien 0696',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0696.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0697.mp3',
  'Chorale_Kabye_Amen_0697.mp3',
  'mp3',
  'audio/mpeg',
  37.33,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_6',
  'Chorale Kabye Amen 0697',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0697.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0698.mp4',
  'Rituel_Kheper_Matin_0698.mp4',
  'mp4',
  'video/mp4',
  2.52,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_6',
  'Rituel Kheper Matin 0698',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0698.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0699.pdf',
  'Papyrus_Nefertari_13203535_0699.pdf',
  'pdf',
  'application/pdf',
  42.66,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_6',
  'Papyrus Nefertari 13203535 0699',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0699.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0700.pdf',
  'Grammaire_egyptienne_Champollion_0700.pdf',
  'pdf',
  'application/pdf',
  4.52,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0700',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0700.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0701.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0701.pdf',
  'pdf',
  'application/pdf',
  16.78,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0701',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0701.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0702.pdf',
  'Hymne_a_Amon_0702.pdf',
  'pdf',
  'application/pdf',
  25.76,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0702',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0702.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0703.pdf',
  'Khepra_Livre_Transformation_0703.pdf',
  'pdf',
  'application/pdf',
  12.03,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0703',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0703.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0704.pdf',
  'Maat_Principe_Verte_0704.pdf',
  'pdf',
  'application/pdf',
  13.16,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0704',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0704.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0705.pdf',
  'Ankh_Magazine_Obenga_0705.pdf',
  'pdf',
  'application/pdf',
  43.75,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0705',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0705.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0706.png',
  'Arbre_sephirotique_Egyptien_0706.png',
  'png',
  'image/png',
  11.94,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0706',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0706.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0707.mp3',
  'Chorale_Kabye_Amen_0707.mp3',
  'mp3',
  'audio/mpeg',
  24.63,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0707',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0707.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0708.mp4',
  'Rituel_Kheper_Matin_0708.mp4',
  'mp4',
  'video/mp4',
  26.47,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0708',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0708.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0709.pdf',
  'Papyrus_Nefertari_13203535_0709.pdf',
  'pdf',
  'application/pdf',
  12.56,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0709',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0709.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0710.pdf',
  'Grammaire_egyptienne_Champollion_0710.pdf',
  'pdf',
  'application/pdf',
  24.22,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0710',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0710.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0711.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0711.pdf',
  'pdf',
  'application/pdf',
  13.27,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0711',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0711.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0712.pdf',
  'Hymne_a_Amon_0712.pdf',
  'pdf',
  'application/pdf',
  39.49,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0712',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0712.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0713.pdf',
  'Khepra_Livre_Transformation_0713.pdf',
  'pdf',
  'application/pdf',
  6.28,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0713',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0713.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0714.pdf',
  'Maat_Principe_Verte_0714.pdf',
  'pdf',
  'application/pdf',
  22.1,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0714',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0714.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0715.pdf',
  'Ankh_Magazine_Obenga_0715.pdf',
  'pdf',
  'application/pdf',
  27.76,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0715',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0715.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0716.png',
  'Arbre_sephirotique_Egyptien_0716.png',
  'png',
  'image/png',
  13.33,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0716',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0716.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0717.mp3',
  'Chorale_Kabye_Amen_0717.mp3',
  'mp3',
  'audio/mpeg',
  17.94,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0717',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0717.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0718.mp4',
  'Rituel_Kheper_Matin_0718.mp4',
  'mp4',
  'video/mp4',
  29.79,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0718',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0718.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0719.pdf',
  'Papyrus_Nefertari_13203535_0719.pdf',
  'pdf',
  'application/pdf',
  40.67,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0719',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0719.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0720.pdf',
  'Grammaire_egyptienne_Champollion_0720.pdf',
  'pdf',
  'application/pdf',
  12.67,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0720',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0720.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0721.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0721.pdf',
  'pdf',
  'application/pdf',
  30.53,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0721',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0721.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0722.pdf',
  'Hymne_a_Amon_0722.pdf',
  'pdf',
  'application/pdf',
  42.55,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0722',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0722.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0723.pdf',
  'Khepra_Livre_Transformation_0723.pdf',
  'pdf',
  'application/pdf',
  44.41,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0723',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0723.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0724.pdf',
  'Maat_Principe_Verte_0724.pdf',
  'pdf',
  'application/pdf',
  39.24,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0724',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0724.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0725.pdf',
  'Ankh_Magazine_Obenga_0725.pdf',
  'pdf',
  'application/pdf',
  5.98,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0725',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0725.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0726.png',
  'Arbre_sephirotique_Egyptien_0726.png',
  'png',
  'image/png',
  18.6,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0726',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0726.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0727.mp3',
  'Chorale_Kabye_Amen_0727.mp3',
  'mp3',
  'audio/mpeg',
  34.74,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0727',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0727.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0728.mp4',
  'Rituel_Kheper_Matin_0728.mp4',
  'mp4',
  'video/mp4',
  11.53,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0728',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0728.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0729.pdf',
  'Papyrus_Nefertari_13203535_0729.pdf',
  'pdf',
  'application/pdf',
  40.23,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0729',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0729.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0730.pdf',
  'Grammaire_egyptienne_Champollion_0730.pdf',
  'pdf',
  'application/pdf',
  12.37,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0730',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0730.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0731.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0731.pdf',
  'pdf',
  'application/pdf',
  39.08,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0731',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0731.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0732.pdf',
  'Hymne_a_Amon_0732.pdf',
  'pdf',
  'application/pdf',
  33.08,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0732',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0732.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0733.pdf',
  'Khepra_Livre_Transformation_0733.pdf',
  'pdf',
  'application/pdf',
  21.05,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0733',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0733.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0734.pdf',
  'Maat_Principe_Verte_0734.pdf',
  'pdf',
  'application/pdf',
  37.48,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0734',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0734.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0735.pdf',
  'Ankh_Magazine_Obenga_0735.pdf',
  'pdf',
  'application/pdf',
  11.53,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0735',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0735.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0736.png',
  'Arbre_sephirotique_Egyptien_0736.png',
  'png',
  'image/png',
  40.8,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0736',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0736.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0737.mp3',
  'Chorale_Kabye_Amen_0737.mp3',
  'mp3',
  'audio/mpeg',
  27.74,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0737',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0737.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0738.mp4',
  'Rituel_Kheper_Matin_0738.mp4',
  'mp4',
  'video/mp4',
  10.99,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0738',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0738.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0739.pdf',
  'Papyrus_Nefertari_13203535_0739.pdf',
  'pdf',
  'application/pdf',
  26.46,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0739',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0739.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0740.pdf',
  'Grammaire_egyptienne_Champollion_0740.pdf',
  'pdf',
  'application/pdf',
  44.76,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0740',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0740.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0741.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0741.pdf',
  'pdf',
  'application/pdf',
  14.11,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0741',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0741.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0742.pdf',
  'Hymne_a_Amon_0742.pdf',
  'pdf',
  'application/pdf',
  20.6,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0742',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0742.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0743.pdf',
  'Khepra_Livre_Transformation_0743.pdf',
  'pdf',
  'application/pdf',
  35.15,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0743',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0743.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0744.pdf',
  'Maat_Principe_Verte_0744.pdf',
  'pdf',
  'application/pdf',
  21.81,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0744',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0744.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0745.pdf',
  'Ankh_Magazine_Obenga_0745.pdf',
  'pdf',
  'application/pdf',
  40.43,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0745',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0745.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0746.png',
  'Arbre_sephirotique_Egyptien_0746.png',
  'png',
  'image/png',
  37.03,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0746',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0746.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0747.mp3',
  'Chorale_Kabye_Amen_0747.mp3',
  'mp3',
  'audio/mpeg',
  21.96,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0747',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0747.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0748.mp4',
  'Rituel_Kheper_Matin_0748.mp4',
  'mp4',
  'video/mp4',
  28.6,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0748',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0748.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0749.pdf',
  'Papyrus_Nefertari_13203535_0749.pdf',
  'pdf',
  'application/pdf',
  4.15,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0749',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0749.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0750.pdf',
  'Grammaire_egyptienne_Champollion_0750.pdf',
  'pdf',
  'application/pdf',
  27.0,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0750',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0750.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0751.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0751.pdf',
  'pdf',
  'application/pdf',
  10.91,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0751',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0751.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0752.pdf',
  'Hymne_a_Amon_0752.pdf',
  'pdf',
  'application/pdf',
  15.74,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0752',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0752.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0753.pdf',
  'Khepra_Livre_Transformation_0753.pdf',
  'pdf',
  'application/pdf',
  15.83,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0753',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0753.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0754.pdf',
  'Maat_Principe_Verte_0754.pdf',
  'pdf',
  'application/pdf',
  8.09,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0754',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0754.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0755.pdf',
  'Ankh_Magazine_Obenga_0755.pdf',
  'pdf',
  'application/pdf',
  21.74,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0755',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0755.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0756.png',
  'Arbre_sephirotique_Egyptien_0756.png',
  'png',
  'image/png',
  26.6,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0756',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0756.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0757.mp3',
  'Chorale_Kabye_Amen_0757.mp3',
  'mp3',
  'audio/mpeg',
  24.65,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0757',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0757.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0758.mp4',
  'Rituel_Kheper_Matin_0758.mp4',
  'mp4',
  'video/mp4',
  3.7,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0758',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0758.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0759.pdf',
  'Papyrus_Nefertari_13203535_0759.pdf',
  'pdf',
  'application/pdf',
  43.88,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0759',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0759.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0760.pdf',
  'Grammaire_egyptienne_Champollion_0760.pdf',
  'pdf',
  'application/pdf',
  29.54,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0760',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0760.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0761.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0761.pdf',
  'pdf',
  'application/pdf',
  28.55,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0761',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0761.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0762.pdf',
  'Hymne_a_Amon_0762.pdf',
  'pdf',
  'application/pdf',
  40.89,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0762',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0762.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0763.pdf',
  'Khepra_Livre_Transformation_0763.pdf',
  'pdf',
  'application/pdf',
  27.07,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0763',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0763.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0764.pdf',
  'Maat_Principe_Verte_0764.pdf',
  'pdf',
  'application/pdf',
  15.17,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0764',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0764.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0765.pdf',
  'Ankh_Magazine_Obenga_0765.pdf',
  'pdf',
  'application/pdf',
  3.42,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0765',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0765.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0766.png',
  'Arbre_sephirotique_Egyptien_0766.png',
  'png',
  'image/png',
  19.95,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0766',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0766.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0767.mp3',
  'Chorale_Kabye_Amen_0767.mp3',
  'mp3',
  'audio/mpeg',
  14.96,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0767',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0767.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0768.mp4',
  'Rituel_Kheper_Matin_0768.mp4',
  'mp4',
  'video/mp4',
  33.57,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0768',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0768.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0769.pdf',
  'Papyrus_Nefertari_13203535_0769.pdf',
  'pdf',
  'application/pdf',
  8.7,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0769',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0769.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0770.pdf',
  'Grammaire_egyptienne_Champollion_0770.pdf',
  'pdf',
  'application/pdf',
  7.59,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0770',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0770.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0771.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0771.pdf',
  'pdf',
  'application/pdf',
  16.38,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0771',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0771.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0772.pdf',
  'Hymne_a_Amon_0772.pdf',
  'pdf',
  'application/pdf',
  40.6,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0772',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0772.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0773.pdf',
  'Khepra_Livre_Transformation_0773.pdf',
  'pdf',
  'application/pdf',
  37.88,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0773',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0773.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0774.pdf',
  'Maat_Principe_Verte_0774.pdf',
  'pdf',
  'application/pdf',
  31.7,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0774',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0774.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0775.pdf',
  'Ankh_Magazine_Obenga_0775.pdf',
  'pdf',
  'application/pdf',
  10.13,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0775',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0775.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0776.png',
  'Arbre_sephirotique_Egyptien_0776.png',
  'png',
  'image/png',
  2.65,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0776',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0776.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0777.mp3',
  'Chorale_Kabye_Amen_0777.mp3',
  'mp3',
  'audio/mpeg',
  13.08,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0777',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0777.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0778.mp4',
  'Rituel_Kheper_Matin_0778.mp4',
  'mp4',
  'video/mp4',
  35.6,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0778',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0778.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0779.pdf',
  'Papyrus_Nefertari_13203535_0779.pdf',
  'pdf',
  'application/pdf',
  33.67,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0779',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0779.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0780.pdf',
  'Grammaire_egyptienne_Champollion_0780.pdf',
  'pdf',
  'application/pdf',
  22.7,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0780',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0780.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0781.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0781.pdf',
  'pdf',
  'application/pdf',
  32.62,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0781',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0781.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0782.pdf',
  'Hymne_a_Amon_0782.pdf',
  'pdf',
  'application/pdf',
  6.78,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0782',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0782.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0783.pdf',
  'Khepra_Livre_Transformation_0783.pdf',
  'pdf',
  'application/pdf',
  28.49,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0783',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0783.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0784.pdf',
  'Maat_Principe_Verte_0784.pdf',
  'pdf',
  'application/pdf',
  31.58,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0784',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0784.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0785.pdf',
  'Ankh_Magazine_Obenga_0785.pdf',
  'pdf',
  'application/pdf',
  39.41,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0785',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0785.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0786.png',
  'Arbre_sephirotique_Egyptien_0786.png',
  'png',
  'image/png',
  39.36,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0786',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0786.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0787.mp3',
  'Chorale_Kabye_Amen_0787.mp3',
  'mp3',
  'audio/mpeg',
  27.49,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0787',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0787.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0788.mp4',
  'Rituel_Kheper_Matin_0788.mp4',
  'mp4',
  'video/mp4',
  4.56,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0788',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0788.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0789.pdf',
  'Papyrus_Nefertari_13203535_0789.pdf',
  'pdf',
  'application/pdf',
  41.5,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0789',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0789.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0790.pdf',
  'Grammaire_egyptienne_Champollion_0790.pdf',
  'pdf',
  'application/pdf',
  19.31,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_7',
  'Grammaire egyptienne Champollion 0790',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0790.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0791.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0791.pdf',
  'pdf',
  'application/pdf',
  20.3,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_7',
  'Bickel 1994 La cosmogonie egyptienne 0791',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0791.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0792.pdf',
  'Hymne_a_Amon_0792.pdf',
  'pdf',
  'application/pdf',
  38.65,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_7',
  'Hymne a Amon 0792',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0792.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0793.pdf',
  'Khepra_Livre_Transformation_0793.pdf',
  'pdf',
  'application/pdf',
  23.74,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_7',
  'Khepra Livre Transformation 0793',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0793.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0794.pdf',
  'Maat_Principe_Verte_0794.pdf',
  'pdf',
  'application/pdf',
  5.12,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_7',
  'Maat Principe Verte 0794',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0794.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0795.pdf',
  'Ankh_Magazine_Obenga_0795.pdf',
  'pdf',
  'application/pdf',
  44.46,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_7',
  'Ankh Magazine Obenga 0795',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0795.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0796.png',
  'Arbre_sephirotique_Egyptien_0796.png',
  'png',
  'image/png',
  40.42,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_7',
  'Arbre sephirotique Egyptien 0796',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0796.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0797.mp3',
  'Chorale_Kabye_Amen_0797.mp3',
  'mp3',
  'audio/mpeg',
  31.62,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_7',
  'Chorale Kabye Amen 0797',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0797.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0798.mp4',
  'Rituel_Kheper_Matin_0798.mp4',
  'mp4',
  'video/mp4',
  39.61,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_7',
  'Rituel Kheper Matin 0798',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0798.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0799.pdf',
  'Papyrus_Nefertari_13203535_0799.pdf',
  'pdf',
  'application/pdf',
  23.13,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_7',
  'Papyrus Nefertari 13203535 0799',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0799.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0800.pdf',
  'Grammaire_egyptienne_Champollion_0800.pdf',
  'pdf',
  'application/pdf',
  1.05,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0800',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0800.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0801.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0801.pdf',
  'pdf',
  'application/pdf',
  35.5,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0801',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0801.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0802.pdf',
  'Hymne_a_Amon_0802.pdf',
  'pdf',
  'application/pdf',
  14.08,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0802',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0802.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0803.pdf',
  'Khepra_Livre_Transformation_0803.pdf',
  'pdf',
  'application/pdf',
  12.6,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0803',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0803.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0804.pdf',
  'Maat_Principe_Verte_0804.pdf',
  'pdf',
  'application/pdf',
  25.22,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0804',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0804.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0805.pdf',
  'Ankh_Magazine_Obenga_0805.pdf',
  'pdf',
  'application/pdf',
  31.64,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0805',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0805.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0806.png',
  'Arbre_sephirotique_Egyptien_0806.png',
  'png',
  'image/png',
  15.91,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0806',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0806.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0807.mp3',
  'Chorale_Kabye_Amen_0807.mp3',
  'mp3',
  'audio/mpeg',
  28.26,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0807',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0807.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0808.mp4',
  'Rituel_Kheper_Matin_0808.mp4',
  'mp4',
  'video/mp4',
  6.36,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0808',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0808.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0809.pdf',
  'Papyrus_Nefertari_13203535_0809.pdf',
  'pdf',
  'application/pdf',
  30.26,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0809',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0809.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0810.pdf',
  'Grammaire_egyptienne_Champollion_0810.pdf',
  'pdf',
  'application/pdf',
  31.97,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0810',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0810.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0811.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0811.pdf',
  'pdf',
  'application/pdf',
  43.68,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0811',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0811.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0812.pdf',
  'Hymne_a_Amon_0812.pdf',
  'pdf',
  'application/pdf',
  8.3,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0812',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0812.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0813.pdf',
  'Khepra_Livre_Transformation_0813.pdf',
  'pdf',
  'application/pdf',
  12.8,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0813',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0813.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0814.pdf',
  'Maat_Principe_Verte_0814.pdf',
  'pdf',
  'application/pdf',
  24.14,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0814',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0814.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0815.pdf',
  'Ankh_Magazine_Obenga_0815.pdf',
  'pdf',
  'application/pdf',
  10.7,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0815',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0815.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0816.png',
  'Arbre_sephirotique_Egyptien_0816.png',
  'png',
  'image/png',
  0.62,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0816',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0816.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0817.mp3',
  'Chorale_Kabye_Amen_0817.mp3',
  'mp3',
  'audio/mpeg',
  28.77,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0817',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0817.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0818.mp4',
  'Rituel_Kheper_Matin_0818.mp4',
  'mp4',
  'video/mp4',
  35.34,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0818',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0818.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0819.pdf',
  'Papyrus_Nefertari_13203535_0819.pdf',
  'pdf',
  'application/pdf',
  24.18,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0819',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0819.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0820.pdf',
  'Grammaire_egyptienne_Champollion_0820.pdf',
  'pdf',
  'application/pdf',
  39.01,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0820',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0820.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0821.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0821.pdf',
  'pdf',
  'application/pdf',
  38.54,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0821',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0821.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0822.pdf',
  'Hymne_a_Amon_0822.pdf',
  'pdf',
  'application/pdf',
  40.99,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0822',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0822.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0823.pdf',
  'Khepra_Livre_Transformation_0823.pdf',
  'pdf',
  'application/pdf',
  42.84,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0823',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0823.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0824.pdf',
  'Maat_Principe_Verte_0824.pdf',
  'pdf',
  'application/pdf',
  14.86,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0824',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0824.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0825.pdf',
  'Ankh_Magazine_Obenga_0825.pdf',
  'pdf',
  'application/pdf',
  2.82,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0825',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0825.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0826.png',
  'Arbre_sephirotique_Egyptien_0826.png',
  'png',
  'image/png',
  10.84,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0826',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0826.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0827.mp3',
  'Chorale_Kabye_Amen_0827.mp3',
  'mp3',
  'audio/mpeg',
  11.61,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0827',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0827.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0828.mp4',
  'Rituel_Kheper_Matin_0828.mp4',
  'mp4',
  'video/mp4',
  12.76,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0828',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0828.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0829.pdf',
  'Papyrus_Nefertari_13203535_0829.pdf',
  'pdf',
  'application/pdf',
  10.6,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0829',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0829.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0830.pdf',
  'Grammaire_egyptienne_Champollion_0830.pdf',
  'pdf',
  'application/pdf',
  31.45,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0830',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0830.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0831.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0831.pdf',
  'pdf',
  'application/pdf',
  39.3,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0831',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0831.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0832.pdf',
  'Hymne_a_Amon_0832.pdf',
  'pdf',
  'application/pdf',
  41.28,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0832',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0832.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0833.pdf',
  'Khepra_Livre_Transformation_0833.pdf',
  'pdf',
  'application/pdf',
  23.4,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0833',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0833.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0834.pdf',
  'Maat_Principe_Verte_0834.pdf',
  'pdf',
  'application/pdf',
  11.07,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0834',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0834.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0835.pdf',
  'Ankh_Magazine_Obenga_0835.pdf',
  'pdf',
  'application/pdf',
  36.05,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0835',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0835.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0836.png',
  'Arbre_sephirotique_Egyptien_0836.png',
  'png',
  'image/png',
  13.7,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0836',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0836.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0837.mp3',
  'Chorale_Kabye_Amen_0837.mp3',
  'mp3',
  'audio/mpeg',
  41.94,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0837',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0837.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0838.mp4',
  'Rituel_Kheper_Matin_0838.mp4',
  'mp4',
  'video/mp4',
  30.74,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0838',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0838.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0839.pdf',
  'Papyrus_Nefertari_13203535_0839.pdf',
  'pdf',
  'application/pdf',
  15.46,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0839',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0839.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0840.pdf',
  'Grammaire_egyptienne_Champollion_0840.pdf',
  'pdf',
  'application/pdf',
  33.96,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0840',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0840.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0841.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0841.pdf',
  'pdf',
  'application/pdf',
  2.15,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0841',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0841.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0842.pdf',
  'Hymne_a_Amon_0842.pdf',
  'pdf',
  'application/pdf',
  17.39,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0842',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0842.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0843.pdf',
  'Khepra_Livre_Transformation_0843.pdf',
  'pdf',
  'application/pdf',
  8.8,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0843',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0843.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0844.pdf',
  'Maat_Principe_Verte_0844.pdf',
  'pdf',
  'application/pdf',
  16.0,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0844',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0844.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0845.pdf',
  'Ankh_Magazine_Obenga_0845.pdf',
  'pdf',
  'application/pdf',
  41.81,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0845',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0845.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0846.png',
  'Arbre_sephirotique_Egyptien_0846.png',
  'png',
  'image/png',
  18.96,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0846',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0846.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0847.mp3',
  'Chorale_Kabye_Amen_0847.mp3',
  'mp3',
  'audio/mpeg',
  40.5,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0847',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0847.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0848.mp4',
  'Rituel_Kheper_Matin_0848.mp4',
  'mp4',
  'video/mp4',
  23.82,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0848',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0848.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0849.pdf',
  'Papyrus_Nefertari_13203535_0849.pdf',
  'pdf',
  'application/pdf',
  28.07,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0849',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0849.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0850.pdf',
  'Grammaire_egyptienne_Champollion_0850.pdf',
  'pdf',
  'application/pdf',
  39.69,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0850',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0850.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0851.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0851.pdf',
  'pdf',
  'application/pdf',
  22.28,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0851',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0851.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0852.pdf',
  'Hymne_a_Amon_0852.pdf',
  'pdf',
  'application/pdf',
  43.26,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0852',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0852.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0853.pdf',
  'Khepra_Livre_Transformation_0853.pdf',
  'pdf',
  'application/pdf',
  1.71,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0853',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0853.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0854.pdf',
  'Maat_Principe_Verte_0854.pdf',
  'pdf',
  'application/pdf',
  24.64,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0854',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0854.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0855.pdf',
  'Ankh_Magazine_Obenga_0855.pdf',
  'pdf',
  'application/pdf',
  27.66,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0855',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0855.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0856.png',
  'Arbre_sephirotique_Egyptien_0856.png',
  'png',
  'image/png',
  15.91,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0856',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0856.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0857.mp3',
  'Chorale_Kabye_Amen_0857.mp3',
  'mp3',
  'audio/mpeg',
  41.57,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0857',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0857.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0858.mp4',
  'Rituel_Kheper_Matin_0858.mp4',
  'mp4',
  'video/mp4',
  3.79,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0858',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0858.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0859.pdf',
  'Papyrus_Nefertari_13203535_0859.pdf',
  'pdf',
  'application/pdf',
  33.99,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0859',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0859.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0860.pdf',
  'Grammaire_egyptienne_Champollion_0860.pdf',
  'pdf',
  'application/pdf',
  11.87,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0860',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0860.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0861.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0861.pdf',
  'pdf',
  'application/pdf',
  5.47,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0861',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0861.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0862.pdf',
  'Hymne_a_Amon_0862.pdf',
  'pdf',
  'application/pdf',
  36.42,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0862',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0862.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0863.pdf',
  'Khepra_Livre_Transformation_0863.pdf',
  'pdf',
  'application/pdf',
  37.85,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0863',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0863.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0864.pdf',
  'Maat_Principe_Verte_0864.pdf',
  'pdf',
  'application/pdf',
  36.02,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0864',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0864.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0865.pdf',
  'Ankh_Magazine_Obenga_0865.pdf',
  'pdf',
  'application/pdf',
  20.63,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0865',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0865.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0866.png',
  'Arbre_sephirotique_Egyptien_0866.png',
  'png',
  'image/png',
  23.38,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0866',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0866.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0867.mp3',
  'Chorale_Kabye_Amen_0867.mp3',
  'mp3',
  'audio/mpeg',
  10.46,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0867',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0867.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0868.mp4',
  'Rituel_Kheper_Matin_0868.mp4',
  'mp4',
  'video/mp4',
  41.12,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0868',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0868.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0869.pdf',
  'Papyrus_Nefertari_13203535_0869.pdf',
  'pdf',
  'application/pdf',
  42.93,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0869',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0869.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0870.pdf',
  'Grammaire_egyptienne_Champollion_0870.pdf',
  'pdf',
  'application/pdf',
  29.28,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0870',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0870.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0871.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0871.pdf',
  'pdf',
  'application/pdf',
  16.56,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0871',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0871.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0872.pdf',
  'Hymne_a_Amon_0872.pdf',
  'pdf',
  'application/pdf',
  22.13,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0872',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0872.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0873.pdf',
  'Khepra_Livre_Transformation_0873.pdf',
  'pdf',
  'application/pdf',
  28.87,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0873',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0873.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0874.pdf',
  'Maat_Principe_Verte_0874.pdf',
  'pdf',
  'application/pdf',
  24.64,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0874',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0874.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0875.pdf',
  'Ankh_Magazine_Obenga_0875.pdf',
  'pdf',
  'application/pdf',
  13.76,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0875',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0875.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0876.png',
  'Arbre_sephirotique_Egyptien_0876.png',
  'png',
  'image/png',
  22.81,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0876',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0876.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0877.mp3',
  'Chorale_Kabye_Amen_0877.mp3',
  'mp3',
  'audio/mpeg',
  31.86,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0877',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0877.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0878.mp4',
  'Rituel_Kheper_Matin_0878.mp4',
  'mp4',
  'video/mp4',
  41.97,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0878',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0878.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0879.pdf',
  'Papyrus_Nefertari_13203535_0879.pdf',
  'pdf',
  'application/pdf',
  15.1,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0879',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0879.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0880.pdf',
  'Grammaire_egyptienne_Champollion_0880.pdf',
  'pdf',
  'application/pdf',
  15.36,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0880',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0880.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0881.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0881.pdf',
  'pdf',
  'application/pdf',
  16.34,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0881',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0881.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0882.pdf',
  'Hymne_a_Amon_0882.pdf',
  'pdf',
  'application/pdf',
  2.55,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0882',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0882.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0883.pdf',
  'Khepra_Livre_Transformation_0883.pdf',
  'pdf',
  'application/pdf',
  36.98,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0883',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0883.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0884.pdf',
  'Maat_Principe_Verte_0884.pdf',
  'pdf',
  'application/pdf',
  1.97,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0884',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0884.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0885.pdf',
  'Ankh_Magazine_Obenga_0885.pdf',
  'pdf',
  'application/pdf',
  29.6,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0885',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0885.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0886.png',
  'Arbre_sephirotique_Egyptien_0886.png',
  'png',
  'image/png',
  29.01,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0886',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0886.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0887.mp3',
  'Chorale_Kabye_Amen_0887.mp3',
  'mp3',
  'audio/mpeg',
  2.01,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0887',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0887.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0888.mp4',
  'Rituel_Kheper_Matin_0888.mp4',
  'mp4',
  'video/mp4',
  12.66,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0888',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0888.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0889.pdf',
  'Papyrus_Nefertari_13203535_0889.pdf',
  'pdf',
  'application/pdf',
  35.5,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0889',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0889.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0890.pdf',
  'Grammaire_egyptienne_Champollion_0890.pdf',
  'pdf',
  'application/pdf',
  10.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_8',
  'Grammaire egyptienne Champollion 0890',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0890.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0891.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0891.pdf',
  'pdf',
  'application/pdf',
  35.04,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_8',
  'Bickel 1994 La cosmogonie egyptienne 0891',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0891.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0892.pdf',
  'Hymne_a_Amon_0892.pdf',
  'pdf',
  'application/pdf',
  31.8,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_8',
  'Hymne a Amon 0892',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0892.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0893.pdf',
  'Khepra_Livre_Transformation_0893.pdf',
  'pdf',
  'application/pdf',
  10.09,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_8',
  'Khepra Livre Transformation 0893',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0893.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0894.pdf',
  'Maat_Principe_Verte_0894.pdf',
  'pdf',
  'application/pdf',
  40.0,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_8',
  'Maat Principe Verte 0894',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0894.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0895.pdf',
  'Ankh_Magazine_Obenga_0895.pdf',
  'pdf',
  'application/pdf',
  15.1,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_8',
  'Ankh Magazine Obenga 0895',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0895.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0896.png',
  'Arbre_sephirotique_Egyptien_0896.png',
  'png',
  'image/png',
  43.53,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_8',
  'Arbre sephirotique Egyptien 0896',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0896.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0897.mp3',
  'Chorale_Kabye_Amen_0897.mp3',
  'mp3',
  'audio/mpeg',
  11.24,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_8',
  'Chorale Kabye Amen 0897',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0897.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0898.mp4',
  'Rituel_Kheper_Matin_0898.mp4',
  'mp4',
  'video/mp4',
  14.78,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_8',
  'Rituel Kheper Matin 0898',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0898.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0899.pdf',
  'Papyrus_Nefertari_13203535_0899.pdf',
  'pdf',
  'application/pdf',
  29.34,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_8',
  'Papyrus Nefertari 13203535 0899',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0899.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0900.pdf',
  'Grammaire_egyptienne_Champollion_0900.pdf',
  'pdf',
  'application/pdf',
  28.15,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0900',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0900.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0901.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0901.pdf',
  'pdf',
  'application/pdf',
  0.88,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0901',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0901.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0902.pdf',
  'Hymne_a_Amon_0902.pdf',
  'pdf',
  'application/pdf',
  39.58,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0902',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0902.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0903.pdf',
  'Khepra_Livre_Transformation_0903.pdf',
  'pdf',
  'application/pdf',
  26.07,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0903',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0903.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0904.pdf',
  'Maat_Principe_Verte_0904.pdf',
  'pdf',
  'application/pdf',
  6.65,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0904',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0904.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0905.pdf',
  'Ankh_Magazine_Obenga_0905.pdf',
  'pdf',
  'application/pdf',
  44.92,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0905',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0905.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0906.png',
  'Arbre_sephirotique_Egyptien_0906.png',
  'png',
  'image/png',
  2.68,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0906',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0906.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0907.mp3',
  'Chorale_Kabye_Amen_0907.mp3',
  'mp3',
  'audio/mpeg',
  35.75,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0907',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0907.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0908.mp4',
  'Rituel_Kheper_Matin_0908.mp4',
  'mp4',
  'video/mp4',
  12.27,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0908',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0908.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0909.pdf',
  'Papyrus_Nefertari_13203535_0909.pdf',
  'pdf',
  'application/pdf',
  18.66,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0909',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0909.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0910.pdf',
  'Grammaire_egyptienne_Champollion_0910.pdf',
  'pdf',
  'application/pdf',
  31.71,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0910',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0910.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0911.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0911.pdf',
  'pdf',
  'application/pdf',
  20.98,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0911',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0911.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0912.pdf',
  'Hymne_a_Amon_0912.pdf',
  'pdf',
  'application/pdf',
  9.52,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0912',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0912.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0913.pdf',
  'Khepra_Livre_Transformation_0913.pdf',
  'pdf',
  'application/pdf',
  3.14,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0913',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0913.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0914.pdf',
  'Maat_Principe_Verte_0914.pdf',
  'pdf',
  'application/pdf',
  44.36,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0914',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0914.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0915.pdf',
  'Ankh_Magazine_Obenga_0915.pdf',
  'pdf',
  'application/pdf',
  26.64,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0915',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0915.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0916.png',
  'Arbre_sephirotique_Egyptien_0916.png',
  'png',
  'image/png',
  17.05,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0916',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0916.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0917.mp3',
  'Chorale_Kabye_Amen_0917.mp3',
  'mp3',
  'audio/mpeg',
  20.88,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0917',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0917.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0918.mp4',
  'Rituel_Kheper_Matin_0918.mp4',
  'mp4',
  'video/mp4',
  21.78,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0918',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0918.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0919.pdf',
  'Papyrus_Nefertari_13203535_0919.pdf',
  'pdf',
  'application/pdf',
  2.84,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0919',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0919.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0920.pdf',
  'Grammaire_egyptienne_Champollion_0920.pdf',
  'pdf',
  'application/pdf',
  23.23,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0920',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0920.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0921.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0921.pdf',
  'pdf',
  'application/pdf',
  10.49,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0921',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0921.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0922.pdf',
  'Hymne_a_Amon_0922.pdf',
  'pdf',
  'application/pdf',
  3.42,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0922',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0922.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0923.pdf',
  'Khepra_Livre_Transformation_0923.pdf',
  'pdf',
  'application/pdf',
  10.5,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0923',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0923.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0924.pdf',
  'Maat_Principe_Verte_0924.pdf',
  'pdf',
  'application/pdf',
  19.11,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0924',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0924.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0925.pdf',
  'Ankh_Magazine_Obenga_0925.pdf',
  'pdf',
  'application/pdf',
  44.04,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0925',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0925.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0926.png',
  'Arbre_sephirotique_Egyptien_0926.png',
  'png',
  'image/png',
  24.86,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0926',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0926.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0927.mp3',
  'Chorale_Kabye_Amen_0927.mp3',
  'mp3',
  'audio/mpeg',
  8.25,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0927',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0927.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0928.mp4',
  'Rituel_Kheper_Matin_0928.mp4',
  'mp4',
  'video/mp4',
  8.22,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0928',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0928.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0929.pdf',
  'Papyrus_Nefertari_13203535_0929.pdf',
  'pdf',
  'application/pdf',
  9.46,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0929',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0929.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0930.pdf',
  'Grammaire_egyptienne_Champollion_0930.pdf',
  'pdf',
  'application/pdf',
  2.77,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0930',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0930.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0931.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0931.pdf',
  'pdf',
  'application/pdf',
  7.49,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0931',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0931.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0932.pdf',
  'Hymne_a_Amon_0932.pdf',
  'pdf',
  'application/pdf',
  30.38,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0932',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0932.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0933.pdf',
  'Khepra_Livre_Transformation_0933.pdf',
  'pdf',
  'application/pdf',
  24.05,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0933',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0933.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0934.pdf',
  'Maat_Principe_Verte_0934.pdf',
  'pdf',
  'application/pdf',
  21.7,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0934',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0934.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0935.pdf',
  'Ankh_Magazine_Obenga_0935.pdf',
  'pdf',
  'application/pdf',
  17.87,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0935',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0935.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0936.png',
  'Arbre_sephirotique_Egyptien_0936.png',
  'png',
  'image/png',
  23.01,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0936',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0936.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0937.mp3',
  'Chorale_Kabye_Amen_0937.mp3',
  'mp3',
  'audio/mpeg',
  19.94,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0937',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0937.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0938.mp4',
  'Rituel_Kheper_Matin_0938.mp4',
  'mp4',
  'video/mp4',
  8.14,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0938',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0938.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0939.pdf',
  'Papyrus_Nefertari_13203535_0939.pdf',
  'pdf',
  'application/pdf',
  38.58,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0939',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0939.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0940.pdf',
  'Grammaire_egyptienne_Champollion_0940.pdf',
  'pdf',
  'application/pdf',
  43.02,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0940',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0940.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0941.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0941.pdf',
  'pdf',
  'application/pdf',
  34.28,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0941',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0941.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0942.pdf',
  'Hymne_a_Amon_0942.pdf',
  'pdf',
  'application/pdf',
  15.61,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0942',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0942.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0943.pdf',
  'Khepra_Livre_Transformation_0943.pdf',
  'pdf',
  'application/pdf',
  40.83,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0943',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0943.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0944.pdf',
  'Maat_Principe_Verte_0944.pdf',
  'pdf',
  'application/pdf',
  43.43,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0944',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0944.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0945.pdf',
  'Ankh_Magazine_Obenga_0945.pdf',
  'pdf',
  'application/pdf',
  1.19,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0945',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0945.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0946.png',
  'Arbre_sephirotique_Egyptien_0946.png',
  'png',
  'image/png',
  19.73,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0946',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0946.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0947.mp3',
  'Chorale_Kabye_Amen_0947.mp3',
  'mp3',
  'audio/mpeg',
  14.2,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0947',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0947.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0948.mp4',
  'Rituel_Kheper_Matin_0948.mp4',
  'mp4',
  'video/mp4',
  25.08,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0948',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0948.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0949.pdf',
  'Papyrus_Nefertari_13203535_0949.pdf',
  'pdf',
  'application/pdf',
  26.66,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0949',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0949.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0950.pdf',
  'Grammaire_egyptienne_Champollion_0950.pdf',
  'pdf',
  'application/pdf',
  44.73,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0950',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0950.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0951.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0951.pdf',
  'pdf',
  'application/pdf',
  35.29,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0951',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0951.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0952.pdf',
  'Hymne_a_Amon_0952.pdf',
  'pdf',
  'application/pdf',
  38.12,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0952',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0952.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0953.pdf',
  'Khepra_Livre_Transformation_0953.pdf',
  'pdf',
  'application/pdf',
  28.14,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0953',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0953.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0954.pdf',
  'Maat_Principe_Verte_0954.pdf',
  'pdf',
  'application/pdf',
  3.12,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0954',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0954.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0955.pdf',
  'Ankh_Magazine_Obenga_0955.pdf',
  'pdf',
  'application/pdf',
  39.05,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0955',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0955.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0956.png',
  'Arbre_sephirotique_Egyptien_0956.png',
  'png',
  'image/png',
  5.34,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0956',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0956.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0957.mp3',
  'Chorale_Kabye_Amen_0957.mp3',
  'mp3',
  'audio/mpeg',
  19.26,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0957',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0957.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0958.mp4',
  'Rituel_Kheper_Matin_0958.mp4',
  'mp4',
  'video/mp4',
  14.6,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0958',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0958.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0959.pdf',
  'Papyrus_Nefertari_13203535_0959.pdf',
  'pdf',
  'application/pdf',
  0.56,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0959',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0959.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0960.pdf',
  'Grammaire_egyptienne_Champollion_0960.pdf',
  'pdf',
  'application/pdf',
  39.93,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0960',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0960.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0961.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0961.pdf',
  'pdf',
  'application/pdf',
  21.84,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0961',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0961.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0962.pdf',
  'Hymne_a_Amon_0962.pdf',
  'pdf',
  'application/pdf',
  21.16,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0962',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0962.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0963.pdf',
  'Khepra_Livre_Transformation_0963.pdf',
  'pdf',
  'application/pdf',
  27.75,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0963',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0963.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0964.pdf',
  'Maat_Principe_Verte_0964.pdf',
  'pdf',
  'application/pdf',
  4.74,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0964',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0964.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0965.pdf',
  'Ankh_Magazine_Obenga_0965.pdf',
  'pdf',
  'application/pdf',
  38.34,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0965',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0965.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0966.png',
  'Arbre_sephirotique_Egyptien_0966.png',
  'png',
  'image/png',
  16.35,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0966',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0966.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0967.mp3',
  'Chorale_Kabye_Amen_0967.mp3',
  'mp3',
  'audio/mpeg',
  10.97,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0967',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0967.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0968.mp4',
  'Rituel_Kheper_Matin_0968.mp4',
  'mp4',
  'video/mp4',
  38.25,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0968',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0968.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0969.pdf',
  'Papyrus_Nefertari_13203535_0969.pdf',
  'pdf',
  'application/pdf',
  16.85,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0969',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0969.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0970.pdf',
  'Grammaire_egyptienne_Champollion_0970.pdf',
  'pdf',
  'application/pdf',
  12.64,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0970',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0970.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0971.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0971.pdf',
  'pdf',
  'application/pdf',
  10.24,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0971',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0971.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0972.pdf',
  'Hymne_a_Amon_0972.pdf',
  'pdf',
  'application/pdf',
  4.82,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0972',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0972.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0973.pdf',
  'Khepra_Livre_Transformation_0973.pdf',
  'pdf',
  'application/pdf',
  9.69,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0973',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0973.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0974.pdf',
  'Maat_Principe_Verte_0974.pdf',
  'pdf',
  'application/pdf',
  13.1,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0974',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0974.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0975.pdf',
  'Ankh_Magazine_Obenga_0975.pdf',
  'pdf',
  'application/pdf',
  37.81,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0975',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0975.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0976.png',
  'Arbre_sephirotique_Egyptien_0976.png',
  'png',
  'image/png',
  15.6,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0976',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0976.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0977.mp3',
  'Chorale_Kabye_Amen_0977.mp3',
  'mp3',
  'audio/mpeg',
  0.71,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0977',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0977.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0978.mp4',
  'Rituel_Kheper_Matin_0978.mp4',
  'mp4',
  'video/mp4',
  10.64,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0978',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0978.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0979.pdf',
  'Papyrus_Nefertari_13203535_0979.pdf',
  'pdf',
  'application/pdf',
  34.03,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0979',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0979.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0980.pdf',
  'Grammaire_egyptienne_Champollion_0980.pdf',
  'pdf',
  'application/pdf',
  29.61,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0980',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0980.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0981.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0981.pdf',
  'pdf',
  'application/pdf',
  42.75,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0981',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0981.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0982.pdf',
  'Hymne_a_Amon_0982.pdf',
  'pdf',
  'application/pdf',
  17.88,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0982',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0982.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0983.pdf',
  'Khepra_Livre_Transformation_0983.pdf',
  'pdf',
  'application/pdf',
  31.71,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0983',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0983.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0984.pdf',
  'Maat_Principe_Verte_0984.pdf',
  'pdf',
  'application/pdf',
  28.03,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0984',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0984.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0985.pdf',
  'Ankh_Magazine_Obenga_0985.pdf',
  'pdf',
  'application/pdf',
  34.73,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0985',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0985.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0986.png',
  'Arbre_sephirotique_Egyptien_0986.png',
  'png',
  'image/png',
  19.61,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0986',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0986.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0987.mp3',
  'Chorale_Kabye_Amen_0987.mp3',
  'mp3',
  'audio/mpeg',
  16.31,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0987',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0987.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0988.mp4',
  'Rituel_Kheper_Matin_0988.mp4',
  'mp4',
  'video/mp4',
  18.0,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0988',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0988.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0989.pdf',
  'Papyrus_Nefertari_13203535_0989.pdf',
  'pdf',
  'application/pdf',
  15.66,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0989',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0989.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0990.pdf',
  'Grammaire_egyptienne_Champollion_0990.pdf',
  'pdf',
  'application/pdf',
  23.0,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_9',
  'Grammaire egyptienne Champollion 0990',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_0990.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0991.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_0991.pdf',
  'pdf',
  'application/pdf',
  35.42,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_9',
  'Bickel 1994 La cosmogonie egyptienne 0991',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_0991.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0992.pdf',
  'Hymne_a_Amon_0992.pdf',
  'pdf',
  'application/pdf',
  38.15,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_9',
  'Hymne a Amon 0992',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_0992.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_0993.pdf',
  'Khepra_Livre_Transformation_0993.pdf',
  'pdf',
  'application/pdf',
  37.33,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_9',
  'Khepra Livre Transformation 0993',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_0993.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_0994.pdf',
  'Maat_Principe_Verte_0994.pdf',
  'pdf',
  'application/pdf',
  14.53,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_9',
  'Maat Principe Verte 0994',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_0994.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_0995.pdf',
  'Ankh_Magazine_Obenga_0995.pdf',
  'pdf',
  'application/pdf',
  26.37,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_9',
  'Ankh Magazine Obenga 0995',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_0995.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0996.png',
  'Arbre_sephirotique_Egyptien_0996.png',
  'png',
  'image/png',
  16.7,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_9',
  'Arbre sephirotique Egyptien 0996',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_0996.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_0997.mp3',
  'Chorale_Kabye_Amen_0997.mp3',
  'mp3',
  'audio/mpeg',
  34.43,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_9',
  'Chorale Kabye Amen 0997',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_0997.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_0998.mp4',
  'Rituel_Kheper_Matin_0998.mp4',
  'mp4',
  'video/mp4',
  26.46,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_9',
  'Rituel Kheper Matin 0998',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_0998.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0999.pdf',
  'Papyrus_Nefertari_13203535_0999.pdf',
  'pdf',
  'application/pdf',
  28.63,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_9',
  'Papyrus Nefertari 13203535 0999',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_0999.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1000.pdf',
  'Grammaire_egyptienne_Champollion_1000.pdf',
  'pdf',
  'application/pdf',
  16.26,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1000',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1000.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1001.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1001.pdf',
  'pdf',
  'application/pdf',
  34.37,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1001',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1001.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1002.pdf',
  'Hymne_a_Amon_1002.pdf',
  'pdf',
  'application/pdf',
  41.95,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1002',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1002.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1003.pdf',
  'Khepra_Livre_Transformation_1003.pdf',
  'pdf',
  'application/pdf',
  44.41,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1003',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1003.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1004.pdf',
  'Maat_Principe_Verte_1004.pdf',
  'pdf',
  'application/pdf',
  11.64,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1004',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1004.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1005.pdf',
  'Ankh_Magazine_Obenga_1005.pdf',
  'pdf',
  'application/pdf',
  6.56,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1005',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1005.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1006.png',
  'Arbre_sephirotique_Egyptien_1006.png',
  'png',
  'image/png',
  44.1,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1006',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1006.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1007.mp3',
  'Chorale_Kabye_Amen_1007.mp3',
  'mp3',
  'audio/mpeg',
  37.31,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1007',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1007.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1008.mp4',
  'Rituel_Kheper_Matin_1008.mp4',
  'mp4',
  'video/mp4',
  5.78,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1008',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1008.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1009.pdf',
  'Papyrus_Nefertari_13203535_1009.pdf',
  'pdf',
  'application/pdf',
  6.23,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1009',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1009.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1010.pdf',
  'Grammaire_egyptienne_Champollion_1010.pdf',
  'pdf',
  'application/pdf',
  24.63,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1010',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1010.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1011.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1011.pdf',
  'pdf',
  'application/pdf',
  7.7,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1011',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1011.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1012.pdf',
  'Hymne_a_Amon_1012.pdf',
  'pdf',
  'application/pdf',
  10.76,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1012',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1012.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1013.pdf',
  'Khepra_Livre_Transformation_1013.pdf',
  'pdf',
  'application/pdf',
  44.22,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1013',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1013.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1014.pdf',
  'Maat_Principe_Verte_1014.pdf',
  'pdf',
  'application/pdf',
  12.16,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1014',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1014.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1015.pdf',
  'Ankh_Magazine_Obenga_1015.pdf',
  'pdf',
  'application/pdf',
  1.11,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1015',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1015.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1016.png',
  'Arbre_sephirotique_Egyptien_1016.png',
  'png',
  'image/png',
  32.81,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1016',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1016.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1017.mp3',
  'Chorale_Kabye_Amen_1017.mp3',
  'mp3',
  'audio/mpeg',
  16.41,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1017',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1017.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1018.mp4',
  'Rituel_Kheper_Matin_1018.mp4',
  'mp4',
  'video/mp4',
  14.45,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1018',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1018.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1019.pdf',
  'Papyrus_Nefertari_13203535_1019.pdf',
  'pdf',
  'application/pdf',
  43.61,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1019',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1019.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1020.pdf',
  'Grammaire_egyptienne_Champollion_1020.pdf',
  'pdf',
  'application/pdf',
  36.08,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1020',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1020.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1021.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1021.pdf',
  'pdf',
  'application/pdf',
  8.98,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1021',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1021.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1022.pdf',
  'Hymne_a_Amon_1022.pdf',
  'pdf',
  'application/pdf',
  38.33,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1022',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1022.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1023.pdf',
  'Khepra_Livre_Transformation_1023.pdf',
  'pdf',
  'application/pdf',
  19.58,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1023',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1023.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1024.pdf',
  'Maat_Principe_Verte_1024.pdf',
  'pdf',
  'application/pdf',
  16.9,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1024',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1024.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1025.pdf',
  'Ankh_Magazine_Obenga_1025.pdf',
  'pdf',
  'application/pdf',
  4.51,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1025',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1025.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1026.png',
  'Arbre_sephirotique_Egyptien_1026.png',
  'png',
  'image/png',
  31.06,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1026',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1026.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1027.mp3',
  'Chorale_Kabye_Amen_1027.mp3',
  'mp3',
  'audio/mpeg',
  38.97,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1027',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1027.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1028.mp4',
  'Rituel_Kheper_Matin_1028.mp4',
  'mp4',
  'video/mp4',
  11.77,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1028',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1028.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1029.pdf',
  'Papyrus_Nefertari_13203535_1029.pdf',
  'pdf',
  'application/pdf',
  39.47,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1029',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1029.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1030.pdf',
  'Grammaire_egyptienne_Champollion_1030.pdf',
  'pdf',
  'application/pdf',
  42.8,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1030',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1030.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1031.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1031.pdf',
  'pdf',
  'application/pdf',
  32.19,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1031',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1031.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1032.pdf',
  'Hymne_a_Amon_1032.pdf',
  'pdf',
  'application/pdf',
  1.06,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1032',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1032.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1033.pdf',
  'Khepra_Livre_Transformation_1033.pdf',
  'pdf',
  'application/pdf',
  10.17,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1033',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1033.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1034.pdf',
  'Maat_Principe_Verte_1034.pdf',
  'pdf',
  'application/pdf',
  28.29,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1034',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1034.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1035.pdf',
  'Ankh_Magazine_Obenga_1035.pdf',
  'pdf',
  'application/pdf',
  30.47,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1035',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1035.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1036.png',
  'Arbre_sephirotique_Egyptien_1036.png',
  'png',
  'image/png',
  3.71,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1036',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1036.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1037.mp3',
  'Chorale_Kabye_Amen_1037.mp3',
  'mp3',
  'audio/mpeg',
  4.91,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1037',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1037.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1038.mp4',
  'Rituel_Kheper_Matin_1038.mp4',
  'mp4',
  'video/mp4',
  30.01,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1038',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1038.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1039.pdf',
  'Papyrus_Nefertari_13203535_1039.pdf',
  'pdf',
  'application/pdf',
  21.39,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1039',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1039.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1040.pdf',
  'Grammaire_egyptienne_Champollion_1040.pdf',
  'pdf',
  'application/pdf',
  17.62,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1040',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1040.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1041.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1041.pdf',
  'pdf',
  'application/pdf',
  14.45,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1041',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1041.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1042.pdf',
  'Hymne_a_Amon_1042.pdf',
  'pdf',
  'application/pdf',
  30.47,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1042',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1042.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1043.pdf',
  'Khepra_Livre_Transformation_1043.pdf',
  'pdf',
  'application/pdf',
  31.47,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1043',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1043.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1044.pdf',
  'Maat_Principe_Verte_1044.pdf',
  'pdf',
  'application/pdf',
  9.45,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1044',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1044.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1045.pdf',
  'Ankh_Magazine_Obenga_1045.pdf',
  'pdf',
  'application/pdf',
  29.23,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1045',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1045.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1046.png',
  'Arbre_sephirotique_Egyptien_1046.png',
  'png',
  'image/png',
  16.41,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1046',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1046.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1047.mp3',
  'Chorale_Kabye_Amen_1047.mp3',
  'mp3',
  'audio/mpeg',
  10.65,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1047',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1047.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1048.mp4',
  'Rituel_Kheper_Matin_1048.mp4',
  'mp4',
  'video/mp4',
  33.61,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1048',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1048.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1049.pdf',
  'Papyrus_Nefertari_13203535_1049.pdf',
  'pdf',
  'application/pdf',
  3.68,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1049',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1049.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1050.pdf',
  'Grammaire_egyptienne_Champollion_1050.pdf',
  'pdf',
  'application/pdf',
  39.46,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1050',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1050.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1051.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1051.pdf',
  'pdf',
  'application/pdf',
  38.95,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1051',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1051.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1052.pdf',
  'Hymne_a_Amon_1052.pdf',
  'pdf',
  'application/pdf',
  29.61,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1052',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1052.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1053.pdf',
  'Khepra_Livre_Transformation_1053.pdf',
  'pdf',
  'application/pdf',
  14.18,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1053',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1053.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1054.pdf',
  'Maat_Principe_Verte_1054.pdf',
  'pdf',
  'application/pdf',
  17.23,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1054',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1054.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1055.pdf',
  'Ankh_Magazine_Obenga_1055.pdf',
  'pdf',
  'application/pdf',
  1.16,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1055',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1055.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1056.png',
  'Arbre_sephirotique_Egyptien_1056.png',
  'png',
  'image/png',
  31.5,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1056',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1056.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1057.mp3',
  'Chorale_Kabye_Amen_1057.mp3',
  'mp3',
  'audio/mpeg',
  2.94,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1057',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1057.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1058.mp4',
  'Rituel_Kheper_Matin_1058.mp4',
  'mp4',
  'video/mp4',
  43.83,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1058',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1058.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1059.pdf',
  'Papyrus_Nefertari_13203535_1059.pdf',
  'pdf',
  'application/pdf',
  36.36,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1059',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1059.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1060.pdf',
  'Grammaire_egyptienne_Champollion_1060.pdf',
  'pdf',
  'application/pdf',
  38.02,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1060',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1060.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1061.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1061.pdf',
  'pdf',
  'application/pdf',
  20.31,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1061',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1061.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1062.pdf',
  'Hymne_a_Amon_1062.pdf',
  'pdf',
  'application/pdf',
  21.13,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1062',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1062.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1063.pdf',
  'Khepra_Livre_Transformation_1063.pdf',
  'pdf',
  'application/pdf',
  17.79,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1063',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1063.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1064.pdf',
  'Maat_Principe_Verte_1064.pdf',
  'pdf',
  'application/pdf',
  43.25,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1064',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1064.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1065.pdf',
  'Ankh_Magazine_Obenga_1065.pdf',
  'pdf',
  'application/pdf',
  44.7,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1065',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1065.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1066.png',
  'Arbre_sephirotique_Egyptien_1066.png',
  'png',
  'image/png',
  7.01,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1066',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1066.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1067.mp3',
  'Chorale_Kabye_Amen_1067.mp3',
  'mp3',
  'audio/mpeg',
  30.23,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1067',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1067.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1068.mp4',
  'Rituel_Kheper_Matin_1068.mp4',
  'mp4',
  'video/mp4',
  18.77,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1068',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1068.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1069.pdf',
  'Papyrus_Nefertari_13203535_1069.pdf',
  'pdf',
  'application/pdf',
  14.4,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1069',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1069.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1070.pdf',
  'Grammaire_egyptienne_Champollion_1070.pdf',
  'pdf',
  'application/pdf',
  35.59,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1070',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1070.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1071.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1071.pdf',
  'pdf',
  'application/pdf',
  23.87,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1071',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1071.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1072.pdf',
  'Hymne_a_Amon_1072.pdf',
  'pdf',
  'application/pdf',
  22.49,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1072',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1072.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Khepra/Transformation/Khepra_Livre_Transformation_1073.pdf',
  'Khepra_Livre_Transformation_1073.pdf',
  'pdf',
  'application/pdf',
  6.01,
  (select id from piliers where code='KHEPRA'),
  'Transformation',
  'Khepra/Transformation/Batch_10',
  'Khepra Livre Transformation 1073',
  'importe',
  'spiritualite-raw',
  'Khepra/Transformation/Khepra_Livre_Transformation_1073.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Maat/Justice/Maat_Principe_Verte_1074.pdf',
  'Maat_Principe_Verte_1074.pdf',
  'pdf',
  'application/pdf',
  35.11,
  (select id from piliers where code='MAAT'),
  'Maat',
  'Maat/Justice/Batch_10',
  'Maat Principe Verte 1074',
  'importe',
  'spiritualite-raw',
  'Maat/Justice/Maat_Principe_Verte_1074.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Ankh/Transmission/Ankh_Magazine_Obenga_1075.pdf',
  'Ankh_Magazine_Obenga_1075.pdf',
  'pdf',
  'application/pdf',
  37.78,
  (select id from piliers where code='ANKH'),
  'Transmission',
  'Ankh/Transmission/Batch_10',
  'Ankh Magazine Obenga 1075',
  'importe',
  'spiritualite-raw',
  'Ankh/Transmission/Ankh_Magazine_Obenga_1075.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1076.png',
  'Arbre_sephirotique_Egyptien_1076.png',
  'png',
  'image/png',
  16.73,
  (select id from piliers where code='AETHER'),
  'Kabbale',
  'Aether/Kabbale/Batch_10',
  'Arbre sephirotique Egyptien 1076',
  'importe',
  'spiritualite-raw',
  'Aether/Kabbale/Arbre_sephirotique_Egyptien_1076.png'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Audios/Chants/Chorale_Kabye_Amen_1077.mp3',
  'Chorale_Kabye_Amen_1077.mp3',
  'mp3',
  'audio/mpeg',
  5.78,
  (select id from piliers where code='AMEN'),
  'Chorale',
  'Audios/Chants/Batch_10',
  'Chorale Kabye Amen 1077',
  'importe',
  'spiritualite-raw',
  'Audios/Chants/Chorale_Kabye_Amen_1077.mp3'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Videos/Rituels/Rituel_Kheper_Matin_1078.mp4',
  'Rituel_Kheper_Matin_1078.mp4',
  'mp4',
  'video/mp4',
  6.74,
  (select id from piliers where code='KHEPRA'),
  'Rituel',
  'Videos/Rituels/Batch_10',
  'Rituel Kheper Matin 1078',
  'importe',
  'spiritualite-raw',
  'Videos/Rituels/Rituel_Kheper_Matin_1078.mp4'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1079.pdf',
  'Papyrus_Nefertari_13203535_1079.pdf',
  'pdf',
  'application/pdf',
  6.4,
  (select id from piliers where code='ANKH'),
  'Papyrus',
  'Manuscrits/Papyrus/Batch_10',
  'Papyrus Nefertari 13203535 1079',
  'importe',
  'spiritualite-raw',
  'Manuscrits/Papyrus/Papyrus_Nefertari_13203535_1079.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1080.pdf',
  'Grammaire_egyptienne_Champollion_1080.pdf',
  'pdf',
  'application/pdf',
  7.38,
  (select id from piliers where code='ANKH'),
  'Egyptologie',
  'Egyptologie/Ancien_Empire/Batch_10',
  'Grammaire egyptienne Champollion 1080',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Ancien_Empire/Grammaire_egyptienne_Champollion_1080.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1081.pdf',
  'Bickel_1994_La_cosmogonie_egyptienne_1081.pdf',
  'pdf',
  'application/pdf',
  20.98,
  (select id from piliers where code='ANKH'),
  'Cosmogonie',
  'Egyptologie/Cosmogonie/Batch_10',
  'Bickel 1994 La cosmogonie egyptienne 1081',
  'importe',
  'spiritualite-raw',
  'Egyptologie/Cosmogonie/Bickel_1994_La_cosmogonie_egyptienne_1081.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
insert into ressources (chemin_relatif, nom_fichier, extension, type_mime, taille_mo, pilier_id, categorie, sous_categorie, titre_extrait, statut, storage_bucket, storage_path)
values (
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1082.pdf',
  'Hymne_a_Amon_1082.pdf',
  'pdf',
  'application/pdf',
  11.78,
  (select id from piliers where code='AMEN'),
  'Hymne',
  'Hymnes/Hymne_Amon/Batch_10',
  'Hymne a Amon 1082',
  'importe',
  'spiritualite-raw',
  'Hymnes/Hymne_Amon/Hymne_a_Amon_1082.pdf'
)
on conflict (chemin_relatif) do update set taille_mo=excluded.taille_mo, titre_extrait=excluded.titre_extrait, categorie=excluded.categorie, updated_at=now();
