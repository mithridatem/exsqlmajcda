USE livre;

-- Modifier la colonne titre (table livre), la passer en unique,
ALTER TABLE livre
MODIFY COLUMN titre VARCHAR(50) UNIQUE NOT NULL;

-- Tester d'ajouter des livres qui possède le même titre.
INSERT INTO livre(titre, `description`, date_sortie, nbr_page)
VALUES('Le Mystère de la Forêt', 
'Un groupe d\'amis découvre un secret ancien caché dans une forêt enchantée.',
'2023-01-01', 100);

-- Modifier la colonne nom_genre (table genre), la passer en unique,
ALTER TABLE genre
MODIFY COLUMN nom_genre VARCHAR(50) UNIQUE NOT NULL;

-- Ajouter une table auteur qui va contenir : id, nom, prénom,
CREATE TABLE auteur(
id_auteur INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_auteur VARCHAR(50) NOT NULL,
prenom_auteur VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

-- Ajouter une colonne id_auteur (table livre) et sa contrainte foreign key,
ALTER TABLE livre
ADD COLUMN id_auteur INT,
ADD CONSTRAINT fk_rediger_auteur
FOREIGN KEY(id_auteur)
REFERENCES auteur(id_auteur);

-- Créer 5 enregistrements dans la table auteur,
INSERT INTO auteur(prenom_auteur, nom_auteur)
VALUES('Victor', 'Hugo'),
('Jane', 'Austen'),
('Gabriel', 'Garcia Marquez'),
('Agatha','Christie'),
('J.K.','Rowling');

-- Créer 5 enregistrements dans la table livre qui inclus une référence à l'auteur 
-- (valeur de la clé primaire id_auteur).
INSERT INTO livre(titre, `description`, date_sortie, id_auteur, nbr_page) VALUES
('Le Château Hanté','Un détective enquête sur des phénomènes paranormaux dans un château hanté.', '2024-04-01', 1, 100),
('Les Aventuriers de l\'Espace','Un groupe d\'astronautes explore des planètes inconnues et rencontre des extraterrestres.','2024-05-01',2, 300),
('Le Secret de l\'Alchimiste','Un jeune apprenti découvre les secrets de l\'alchimie et part en quête de la pierre philosophale.','2024-06-01',3, 400),
('La Légende du Roi Arthur','Les aventures du roi Arthur et des chevaliers de la Table Ronde.','2024-07-01',2, 100),
('Le Monde des Rêves','Un enfant découvre un monde magique où les rêves deviennent réalité.','2024-08-01',5, 450);