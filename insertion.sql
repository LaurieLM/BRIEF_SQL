USE euro_fit_laurie;

                -- GENRE --
INSERT INTO genre (genre) VALUES ('Homme');
INSERT INTO genre (genre) VALUES ('Femme');
INSERT INTO genre (genre) VALUES ('Autres');

                -- VILLE --
INSERT INTO ville (ville) VALUES ('Nice');
INSERT INTO ville (ville) VALUES ('Strasbourg');
INSERT INTO ville (ville) VALUES ('Rome');
INSERT INTO ville (ville) VALUES ('Berlin');
INSERT INTO ville (ville) VALUES ('Amsterdam');
INSERT INTO ville (ville) VALUES ('Barcelone');

                -- CODE POSTALE --
INSERT INTO code_postale (code_postale) VALUES ('06000');
INSERT INTO code_postale (code_postale) VALUES ('67000');
INSERT INTO code_postale (code_postale) VALUES ('10115');
INSERT INTO code_postale (code_postale) VALUES ('00042');
INSERT INTO code_postale (code_postale) VALUES ('08001');
INSERT INTO code_postale (code_postale) VALUES ('1011');

                -- PAYS --
INSERT INTO pays (pays) VALUES ('France');
INSERT INTO pays (pays) VALUES ('Italie');
INSERT INTO pays (pays) VALUES ('Pays Bas');
INSERT INTO pays (pays) VALUES ('Allemagne');
INSERT INTO pays (pays) VALUES ('Espagne');

                -- ACTIVITE --
INSERT INTO activite (activite) VALUES ('Cardio');
INSERT INTO activite (activite) VALUES ('Course');
INSERT INTO activite (activite) VALUES ('Musculation Biceps');
INSERT INTO activite (activite) VALUES ('Musculation Jambes');
INSERT INTO activite (activite) VALUES ('Musculation Dos');
INSERT INTO activite (activite) VALUES ('Abdos');
INSERT INTO activite (activite) VALUES ('Escalade');
INSERT INTO activite (activite) VALUES ('Tennis');

                -- ABONNEMENT --
INSERT INTO abonnement (abonnement) VALUES ('VIP');
INSERT INTO abonnement (abonnement) VALUES ('Premium International');
INSERT INTO abonnement (abonnement) VALUES ('Premium');
INSERT INTO abonnement (abonnement) VALUES ('Cycliste International');
INSERT INTO abonnement (abonnement) VALUES ('Cycliste Eau Douce');
INSERT INTO abonnement (abonnement) VALUES ('Le Muscle Est Partout');
INSERT INTO abonnement (abonnement) VALUES ('Membre International');
INSERT INTO abonnement (abonnement) VALUES ('Brain-L Fit International');
INSERT INTO abonnement (abonnement) VALUES ('B Less-Fit');
INSERT INTO abonnement (abonnement) VALUES ('Membre');
INSERT INTO abonnement (abonnement) VALUES ('Coach');
INSERT INTO abonnement (abonnement) VALUES ('Agent de Nettoyage et de Sécurité');

                -- MOYEN DE PAIEMENT --
INSERT INTO moyen_de_paiement (moyen_de_paiement) VALUES ('Carte Bancaire');
INSERT INTO moyen_de_paiement (moyen_de_paiement) VALUES ('Espèces');
INSERT INTO moyen_de_paiement (moyen_de_paiement) VALUES ('Virement');
INSERT INTO moyen_de_paiement (moyen_de_paiement) VALUES ('Carte Cadeau');

                -- ANALYSE CORPOREL --
INSERT INTO analyse_corporel (imc, metabolisme_de_base, besoin_energetique, masse_seche, contenu_mineral_osseux, masse_grasse_a_hydratation, eau_total_corporelle, masse_grasse, masse_hydrique, masse_musculaire)
VALUES ('30', '1000', '3000', '20', '60', '50', '90', '60', '36', '65');
INSERT INTO analyse_corporel (imc, metabolisme_de_base, besoin_energetique, masse_seche, contenu_mineral_osseux, masse_grasse_a_hydratation, eau_total_corporelle, masse_grasse, masse_hydrique, masse_musculaire)
VALUES ('18', '1500', '4000', '30', '50', '70', '40', '70', '40', '65');
INSERT INTO analyse_corporel (imc, metabolisme_de_base, besoin_energetique, masse_seche, contenu_mineral_osseux, masse_grasse_a_hydratation, eau_total_corporelle, masse_grasse, masse_hydrique, masse_musculaire)
VALUES ('40', '2000', '5000', '40', '40', '30', '100', '90', '50', '30');

                -- DOCTEUR --
INSERT INTO docteur (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone)
VALUES ('Duggan','Agatha','1','6 rue de la Tisionnère','1','1','1','A.Dug@gmail.com','0678543289');
INSERT INTO docteur (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone)
VALUES ('Jonas','Karim','2','Busch 12','5','6','3','K.Jonas@gmail.com','13467982');
INSERT INTO docteur (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone)
VALUES ('Martinez','Sacha','3','La Fretière','2','2','1','Samar@hotmail.com','0611568493');

                -- MEMBRE --
INSERT INTO membre (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone, id_activite, id_docteur, id_abonnement, id_moyen_de_paiement)
VALUES ('Clinton','Nicolas','1','30 rue de la Fontaine','1','1','1','musclefit@yahoo.fr','0642069755','3','1','11','1');
INSERT INTO membre (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone, id_activite, id_docteur, id_abonnement, id_moyen_de_paiement)
VALUES ('Bellic','Lamar','1','Stadhouderskade 78','5','6','3','imporage@hotmail.com','11527563','5','2','2','1');
INSERT INTO membre (nom, prenom, id_genre, adresse, id_ville, id_code_postale, id_pays, mail, telephone, id_activite, id_docteur, id_abonnement, id_moyen_de_paiement)
VALUES ('Jakowski','Francklin','1','42 Rue de Lattre de Tassigny','2','2','1','frajaski@aol.com','0655487565','7','3','1','1');