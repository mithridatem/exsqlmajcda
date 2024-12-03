-- 1 Supprimer la categorie 'Électronique',
DELETE FROM categorie WHERE nom_categorie = 'Électronique';

-- 2 Supprimer la categorie 'Jouets',

-- supprimer les enregistrements dans produit_ticket
DELETE FROM produit_ticket WHERE id_produit = 10;

-- suppimmer les enregistrements dans produit
DELETE FROM produit WHERE id_categorie = 5;

-- supprimer la categorie 
DELETE FROM categorie WHERE nom_categorie = 'Jouets';

-- 3 Supprimer le vendeur 1,

-- supprimer les enrgistrements dans produit_ticket (id_ticket)
DELETE FROM produit_ticket WHERE id_ticket IN(1);

-- supprimer les tickets de caisse
DELETE FROM ticket WHERE id_vendeur = 1;

-- supprimer le vendeur
DELETE FROM vendeur WHERE id_vendeur = 1; 

-- 4 Supprimer tous les tickets qui ont une date inferieure au 1 janvier 2024,

-- supprimer les enregistrements de produit_ticket
DELETE FROM produit_ticket WHERE id_ticket IN(7,3);

-- supprimer les tickets
DELETE FROM ticket WHERE date_creation = '2024-01-01';

-- 5 Supprimer tous les produits de la table produit_ticket qui ont une quantite supérieure à 9.
DELETE FROM produit_ticket WHERE quantite > 9;