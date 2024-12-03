USE livre;

-- ajouter attribut date_sortie dans la table livre
ALTER TABLE livre
ADD COLUMN date_sortie DATE NOT NULL;

-- Ajouter les enregistrements
INSERT INTO livre(titre, `description`, date_sortie, nbr_page)
VALUES('Le Mystère de la Forêt', 'Un groupe d\'amis découvre un secret ancien caché dans une forêt enchantée.', '2023-01-01', 0),
('Les Secrets de l\'Océan', 'Une jeune biologiste marine explore les profondeurs de l\'océan et découvre une civilisation perdue.','2023-03-01', 0),
('L\'Énigme du Pharaon Résumé','Un archéologue tente de résoudre les mystères d\'une ancienne pyramide égyptienne', '2023-01-01', 0),
('La Quête du Chevalier','Un chevalier part en quête pour sauver son royaume d\'une menace imminente.','2023-04-01', 0),
('Le Voyage Interstellaire','Un équipage spatial part à la découverte de nouvelles planètes et formes de vie.','2024-05-06', 0),
('Les Chroniques du Temps','Un scientifique invente une machine à voyager dans le temps et explore différentes époques.','2023-06-01', 0),
('La Cité Perdue','Une équipe d\'explorateurs découvre une cité ancienne cachée dans la jungle.','2023-07-01', 0),
('Le Trésor des Pirates','Un jeune garçon trouve une carte au trésor et part à l\'aventure pour le trouver.','2023-08-01', 0),
('L\'Île Mystérieuse','Un groupe de naufragés découvre une île pleine de mystères et de dangers.','2023-09-01', 0),
('Les Gardiens de la Galaxie','Une équipe de super-héros protège la galaxie contre des menaces interstellaires.','2023-10-01', 0); 

INSERT INTO genre(libele)
VALUES ('fanstastique'), ('science-fiction'), ('polar'), ('drame'), ('roman');

INSERT INTO livre_genre(id_livre,id_genre)
VALUES(1,1),(1,2),
(2,3),(2,5),
(3,4),(3,2),
(4,3),(4,5),
(5,1),(5,2),
(6,3),(6,4),
(7,2),(7,1),
(8,4),(8,5),
(9,1),(9,3),
(10,5),(10,4);