-- Mettre à jour le nom du vendeur 2 par 'Albert',
UPDATE vendeur SET nom_vendeur = 'Albert' WHERE id_vendeur = 2;

-- Augmenter le tarif de  1 € pour tous les produits dont le tarif est inférieur à 2 €,
UPDATE produit SET tarif = tarif + 1 WHERE tarif < 2;

-- Modifier le vendeur 2 des tickets de caisse, remplacer le par le vendeur 5,
UPDATE ticket SET id_vendeur = 5 WHERE id_vendeur = 2;

-- Mettre à jour le nom des categories qui ont un nom plus petit que C par nouveau.
UPDATE categorie SET nom_categorie = 'nouveau' WHERE nom_categorie < 'C';