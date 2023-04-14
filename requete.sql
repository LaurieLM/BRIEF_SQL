-- JOINTURE TABLE MEMBRE --
select nom, prenom, G.genre, adresse, V.ville, C.code_postale, P.pays, mail, telephone, AC.activite, id_docteur, AB.abonnement, MDP.moyen_de_paiement
from membre as M 
join ville as V using (id_ville)
join genre as G using (id_genre)
join code_postale as C using (id_code_postale)
join pays as P using (id_pays)
join activite as AC using (id_activite)
join abonnement as AB using (id_abonnement)
join moyen_de_paiement as MDP using (id_moyen_de_paiement);

-- JOINTURE TABLE DOCTEUR --
select nom_docteur, prenom_docteur, G.genre, adresse_docteur, V.ville, C.code_postale, P.pays, mail_docteur, telephone_docteur
from docteur as D 
join ville as V using (id_ville)
join genre as G using (id_genre)
join code_postale as C using (id_code_postale)
join pays as P using (id_pays)