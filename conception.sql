CREATE DATABASE euro_fit_laurie;
USE euro_fit_laurie;

CREATE TABLE IF NOT EXISTS membre(
id_membre INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
id_genre TINYINT,
adresse VARCHAR(100) NOT NULL,
id_ville INT NOT NULL,
id_code_postale INT NOT NULL,
id_pays TINYINT NOT NULL,
mail VARCHAR(100) NOT NULL,
telephone INT NOT NULL,
id_activite TINYINT,
id_docteur INT,
id_abonnement TINYINT NOT NULL,
id_analyse_corporel INT,
id_moyen_de_paiement TINYINT NOT NULL
);

CREATE TABLE IF NOT EXISTS docteur(
id_docteur INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nom_docteur VARCHAR(50) NOT NULL,
prenom_docteur VARCHAR(50) NOT NULL,
id_genre TINYINT,
adresse_docteur VARCHAR(100) NOT NULL,
id_ville INT NOT NULL,
id_code_postale INT NOT NULL,
id_pays TINYINT NOT NULL,
mail_docteur VARCHAR(100) NOT NULL,
telephone_docteur INT NOT NULL
);

CREATE TABLE IF NOT EXISTS genre(
id_genre TINYINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
genre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS ville(
id_ville INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
ville VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS code_postale(
id_code_postale INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
code_postale INT
);

CREATE TABLE IF NOT EXISTS pays(
id_pays INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
pays VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS activite(
id_activite INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
activite VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS analyse_corporel(
id_analyse_corporel INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
imc TINYINT,
metabolisme_de_base SMALLINT,
besoin_energetique SMALLINT,
masse_seche TINYINT,
contenu_mineral_osseux TINYINT,
masse_grasse_a_hydratation TINYINT,
eau_total_corporelle TINYINT,
masse_grasse TINYINT,
masse_hydrique TINYINT,
masse_musculaire TINYINT
);

CREATE TABLE IF NOT EXISTS abonnement(
id_abonnement INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
abonnement VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS moyen_de_paiement(
id_moyen_de_paiement INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
moyen_de_paiement VARCHAR(50) NOT NULL
);