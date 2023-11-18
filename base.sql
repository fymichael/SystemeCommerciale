CREATE DATABASE system_commerce;

\c system_commerce;

CREATE SEQUENCE seq_category;
CREATE TABLE category (
    id_category int PRIMARY KEY DEFAULT nextval('seq_category') NOT NULL,
    code VARCHAR(30),
    designation VARCHAR(100),
    description VARCHAR(1000),
    status INTEGER
);

CREATE SEQUENCE seq_article;
CREATE TABLE article (
    id_article int PRIMARY KEY DEFAULT nextval('seq_article') NOT NULL,
    code VARCHAR(30),
    description VARCHAR(1000),
    designation VARCHAR(100),
    id_category INTEGER,
    tva DOUBLE PRECISION,
    status INTEGER,
    FOREIGN KEY(id_category) REFERENCES category(id_category)
);


-- Insertion des données de test dans la table 'category'
ALTER SEQUENCE seq_category START WITH 11;
INSERT INTO category (code, designation, description, status) VALUES
    ('CAT001', 'Électronique', 'Derniers gadgets et articles électroniques', 1),
    ('CAT002', 'Vêtements', 'Vêtements à la mode pour toutes les saisons', 1),
    ('CAT003', 'Maison et Jardin', 'Meubles, décoration et jardinage', 1),
    ('CAT004', 'Livres', 'Best-sellers et littérature classique', 1),
    ('CAT005', 'Sports', 'Équipements pour différents sports', 1),
    ('CAT006', 'Beauté', 'Soins de la peau et produits de beauté', 1),
    ('CAT007', 'Jouets', 'Jouets et jeux pour tous les âges', 1),
    ('CAT008', 'Automobile', 'Accessoires et pièces pour voitures', 1),
    ('CAT009', 'Appareils électroménagers', 'Appareils électroménagers et électroniques', 1),
    ('CAT010', 'Alimentation', 'Produits alimentaires frais et emballés', 1);


-- Insertion des données de test dans la table 'article'
ALTER SEQUENCE seq_article START WITH 11;
INSERT INTO article (code, description, designation, id_category, tva, status) VALUES
    ('ART001', 'Ordinateur portable performant avec SSD', 'Ordinateur portable', 1, 20.0, 1),
    ('ART003', 'Table à manger en bois avec 6 chaises', 'Ensemble de table à manger', 3, 5.0, 1),
    ('ART004', 'Roman policier - Le Jardin Secret', 'Le Jardin Secret', 4, 0.0, 1),
    ('ART005', 'Ensemble de basketball et panier pour enfants', 'Ensemble de basketball pour enfants', 5, 5.0, 1),
    ('ART006', 'Kit de soins anti-âge', 'Kit anti-âge', 6, 20.0, 1),
    ('ART007', 'Poste de police LEGO City', 'Poste de police LEGO', 7, 5.0, 1),
    ('ART008', 'Housses de siège de voiture pour toutes les saisons', 'Housses toutes saisons', 8, 10.0, 1),
    ('ART009', 'Réfrigérateur intelligent avec écran tactile', 'Réfrigérateur intelligent', 9, 20.0, 1),
    ('ART010', 'Lot de fruits et légumes biologiques', 'Produits biologiques', 10, 0.0, 1);
