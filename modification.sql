-- CHANGEMENT DU TYPE --
ALTER TABLE `euro_fit_laurie`.`membre` 
CHANGE COLUMN `id_pays` `id_pays` INT NOT NULL ,
CHANGE COLUMN `id_activite` `id_activite` INT NULL DEFAULT NULL ,
CHANGE COLUMN `id_abonnement` `id_abonnement` INT NOT NULL ,
CHANGE COLUMN `id_moyen_de_paiement` `id_moyen_de_paiement` INT NOT NULL ;

-- PRIMARY KEY/KEY ETRANGERE --
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_genre_idx` (`id_genre` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_genre` FOREIGN KEY (`id_genre`) REFERENCES `euro_fit_laurie`.`genre` (`id_genre`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_ville_idx` (`id_ville` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_ville` FOREIGN KEY (`id_ville`) REFERENCES `euro_fit_laurie`.`ville` (`id_ville`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_code_postale_idx` (`id_code_postale` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_code_postale` FOREIGN KEY (`id_code_postale`) REFERENCES `euro_fit_laurie`.`code_postale` (`id_code_postale`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_pays_idx` (`id_pays` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_pays` FOREIGN KEY (`id_pays`) REFERENCES `euro_fit_laurie`.`pays` (`id_pays`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_docteur_idx` (`id_docteur` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_docteur` FOREIGN KEY (`id_docteur`) REFERENCES `euro_fit_laurie`.`docteur` (`id_docteur`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_abonnement_idx` (`id_abonnement` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_abonnement` FOREIGN KEY (`id_abonnement`) REFERENCES `euro_fit_laurie`.`abonnement` (`id_abonnement`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_activite_idx` (`id_activite` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_activite` FOREIGN KEY (`id_activite`) REFERENCES `euro_fit_laurie`.`activite` (`id_activite`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_analyse_corporel_idx` (`id_analyse_corporel` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_analyse_corporel` FOREIGN KEY (`id_analyse_corporel`) REFERENCES `euro_fit_laurie`.`analyse_corporel` (`id_analyse_corporel`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`membre` 
ADD INDEX `fk_id_moyen_de_paiement_idx` (`id_moyen_de_paiement` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`membre` 
ADD CONSTRAINT `fk_id_moyen_de_paiement` FOREIGN KEY (`id_moyen_de_paiement`) REFERENCES `euro_fit_laurie`.`moyen_de_paiement` (`id_moyen_de_paiement`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD INDEX `fk_docteur_id_genre_idx` (`id_genre` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD CONSTRAINT `fk_docteur_id_genre` FOREIGN KEY (`id_genre`) REFERENCES `euro_fit_laurie`.`genre` (`id_genre`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD INDEX `fk_docteur_id_ville_idx` (`id_ville` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD CONSTRAINT `fk_docteur_id_ville` FOREIGN KEY (`id_ville`) REFERENCES `euro_fit_laurie`.`ville` (`id_ville`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD INDEX `fk_docteur_id_code_postale_idx` (`id_code_postale` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD CONSTRAINT `fk_docteur_id_code_postale` FOREIGN KEY (`id_code_postale`) REFERENCES `euro_fit_laurie`.`code_postale` (`id_code_postale`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD INDEX `fk_docteur_id_pays_idx` (`id_pays` ASC) VISIBLE;
ALTER TABLE `euro_fit_laurie`.`docteur` 
ADD CONSTRAINT `fk_docteur_id_pays` FOREIGN KEY (`id_pays`) REFERENCES `euro_fit_laurie`.`pays` (`id_pays`)
ON DELETE NO ACTION ON UPDATE NO ACTION;

-- MODIFICATION ADRESSE MEMBRE 2 --
UPDATE membre
SET adresse = '45 rue des plans'
WHERE id_membre = 2;

-- MODIFICATIONS MEMBRE 1 --
UPDATE membre
SET adresse = '35 rue de la Fontaine', mail = 'fit@gmail.com', id_activite = 5, id_moyen_de_paiement = 2
WHERE id_membre = 1;