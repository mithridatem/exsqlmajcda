-- ---------------------BONUS------------------------
-- 1 Augmenter la quantité de tous les  produits, pour les tickets du vendeur Sophie Durand  de 3.
-- on ajoute + 3 à la valeur existante.

-- Version 1 : on connait les ID des tickets
UPDATE produit_ticket SET quantite = quantite + 3 WHERE id_ticket IN(6,7,8);

-- Version 2 : requête imbriquée jointure
UPDATE produit_ticket SET quantite = quantite + 3 WHERE id_ticket IN(
(SELECT id_ticket  FROM ticket INNER JOIN vendeur ON ticket.id_vendeur = vendeur.id_vendeur WHERE
nom_vendeur = 'Durand' AND prenom_vendeur = 'Sophie')
);

-- Version 3 :  imbrique ++
UPDATE produit_ticket SET quantite = quantite + 3 WHERE id_ticket IN(
	(SELECT id_ticket FROM ticket WHERE id_vendeur = 
		(SELECT id_vendeur FROM vendeur WHERE nom_vendeur = 'Durand' AND prenom_vendeur = 'Sophie')
	)
);

-- Version 4 : variable
SET @ticket = (SELECT id_ticket  FROM ticket INNER JOIN vendeur ON ticket.id_vendeur = vendeur.id_vendeur WHERE
nom_vendeur = 'Durand' AND prenom_vendeur = 'Sophie');

UPDATE produit_ticket SET quantite = quantite + 3 WHERE id_ticket IN(@ticket);

-- 2 Diminuer le montant de tous les produits de type meuble de 10 %,

-- Version 1 : on connait l'ID
UPDATE produit SET tarif = tarif - (tarif /10) WHERE id_categorie = 4;

-- Version 2 : requête imbriquée
UPDATE produit SET tarif = tarif - (tarif / 10) WHERE id_categorie = 
(SELECT id_categorie FROM categorie WHERE nom_categorie = 'Meubles');

-- 3 Ajouter 2 jours à tous les tickets dont la date est supérieure au 1 janvier 2024.
--  Version 1 : fonction DATE_ADD
UPDATE ticket SET date_creation = DATE_ADD(date_creation, INTERVAL 2 DAY)  WHERE date_creation > '2024-01-01';

-- Version 2 fonction ADDDATE
UPDATE ticket SET date_creation = ADDDATE(date_creation, INTERVAL 2 DAY)  WHERE date_creation > '2024-01-01';

-- Version 3 : avec INTERVAL + 2 DAY
UPDATE ticket SET date_creation = date_creation + INTERVAL 2 DAY  WHERE date_creation > '2024-01-01';