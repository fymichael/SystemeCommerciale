CREATE DATABASE system_commerce;

\c system_commerce;

CREATE SEQUENCE seq_service;
CREATE TABLE service (
    id_service INTEGER DEFAULT nextval('seq_service'),
    service VARCHAR(50),
    fonction VARCHAR(50),
    creation_date DATE,
    status INTEGER,
    PRIMARY KEY(id_service)
);

CREATE SEQUENCE seq_utilisateur;
CREATE TABLE utilisateur (
    id_utilisateur INTEGER DEFAULT nextval('seq_utilisateur'),
    id_service INTEGER,
    username VARCHAR(50),
    password VARCHAR(20),
    mail VARCHAR(50),
    admin BOOLEAN,
    photo VARCHAR(50),
    status INTEGER,
    PRIMARY KEY(id_utilisateur),
    FOREIGN KEY(id_service) REFERENCES service(id_service)
);

ALTER SEQUENCE seq_service RESTART WITH 1;
INSERT INTO service(service, fonction, creation_date, status ) VALUES ('Administration', 'Responsable de l''administration du societe', '2022-01-01', 1);
INSERT INTO service(service, fonction, creation_date, status ) VALUES ('Ressources humaines', 'Responsable des ressources humaines', '2022-01-01', 1);
INSERT INTO service(service, fonction, creation_date, status ) VALUES ('Production', 'Responsable des productions du societe', '2022-01-01', 1);
INSERT INTO service(service, fonction, creation_date, status ) VALUES ('Approvisionnement', 'Responsable des achats du societe', '2022-01-01', 1);
INSERT INTO service(service, fonction, creation_date, status ) VALUES ('Finance', 'Responsable du finance du societe', '2022-01-01', 1);

ALTER SEQUENCE seq_utilisateur RESTART WITH 1;
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (1, 'INSSA Chalman', 'chalman', 'inssa.chalman@gmail.com', 1, true, 'chalman.png');
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (4, 'To MAMIARILAZA', 'to', 'mamiarilaza.to@gmail.com', 1, true, 'to.png');
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (3, 'Fy Michael', 'fy', 'fy.michael@gmail.com', 1, true, 'fy.png');
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (3, 'Finoana RAKOTO', 'finoana', 'finoanaRAKOTO@gmail.com', 1, false, 'finoana.png');
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (3, 'Solo RATSIVAHINY', 'solo', 'soloRATSIVAHINY@gmail.com', 1, false, 'solo.png');
INSERT INTO utilisateur(id_service, username, password, mail, status, admin, photo ) VALUES (5, 'Mialy RIANTSOA', 'mialy', 'mialy.RIANTSOA@gmail.com', 1, true, 'mialy.png');

CREATE SEQUENCE seq_category;
CREATE TABLE category (
    id_category int PRIMARY KEY DEFAULT nextval('seq_category') NOT NULL,
    code VARCHAR(30),
    designation VARCHAR(100),
    description VARCHAR(1000),
    status INTEGER
);

CREATE SEQUENCE seq_unity;
CREATE TABLE unity (
    id_unity int PRIMARY KEY DEFAULT nextval('seq_unity') NOT NULL,
    name VARCHAR(50)
);

CREATE SEQUENCE seq_article;
CREATE TABLE article (
    id_article int PRIMARY KEY DEFAULT nextval('seq_article') NOT NULL,
    code VARCHAR(30),
    description VARCHAR(1000),
    designation VARCHAR(100),
    id_category INTEGER,
    tva DOUBLE PRECISION,
    id_unity int,
    status INTEGER,
    FOREIGN KEY(id_category) REFERENCES category(id_category),
    FOREIGN KEY(id_unity) REFERENCES unity(id_unity)
);


-- Insertion des donnees de test dans la table unity
INSERT INTO unity(name) VALUES 
    ('Kg'),
    ('Litres'),
    ('Piece');

-- Insertion des données de test dans la table 'category'
ALTER SEQUENCE seq_category START WITH 11;
INSERT INTO category (code, designation, description, status) VALUES
    ('CAT001', 'Electronique', 'Derniers gadgets et articles electroniques', 1),
    ('CAT002', 'Vetements', 'Vetements a la mode pour toutes les saisons', 1),
    ('CAT003', 'Maison et Jardin', 'Meubles, decoration et jardinage', 1),
    ('CAT004', 'Livres', 'Best-sellers et litterature classique', 1),
    ('CAT005', 'Sports', 'Equipements pour differents sports', 1),
    ('CAT006', 'Beaute', 'Soins de la peau et produits de beaute', 1),
    ('CAT007', 'Jouets', 'Jouets et jeux pour tous les ages', 1),
    ('CAT008', 'Automobile', 'Accessoires et pieces pour voitures', 1),
    ('CAT009', 'Appareils electromenagers', 'Appareils electromenagers et electroniques', 1),
    ('CAT010', 'Alimentation', 'Produits alimentaires frais et emballes', 1);



-- Insertion des données de test dans la table 'article'
ALTER SEQUENCE seq_article RESTART WITH 1;
INSERT INTO article (code, description, designation, id_category, tva, id_unity, status) VALUES
    ('ART001', 'Ordinateur portable performant avec SSD', 'Ordinateur portable', 1, 20.0, 3, 1),
    ('ART003', 'Table a manger en bois avec 6 chaises', 'Ensemble de table a manger', 3, 5.0, 3, 1),
    ('ART004', 'Roman policier - Le Jardin Secret', 'Le Jardin Secret', 4, 0.0, 3, 1),
    ('ART005', 'Ensemble de basketball et panier pour enfants', 'Ensemble de basketball pour enfants', 5, 5.0, 3, 1),
    ('ART006', 'Kit de soins anti-age', 'Kit anti-age', 6, 20.0, 3, 1),
    ('ART007', 'Poste de police LEGO City', 'Poste de police LEGO', 7, 5.0, 3, 1),
    ('ART008', 'Housses de siege de voiture pour toutes les saisons', 'Housses toutes saisons', 8, 10.0, 3, 1),
    ('ART009', 'Refrigerateur intelligent avec ecran tactile', 'Refrigerateur intelligent', 9, 20.0, 3, 1),
    ('ART010', 'Lot de fruits et legumes biologiques', 'Produits biologiques', 10, 0.0, 3, 1);

-- TABLE REQUIS POUR LE DEMANDE D'ACHAT

CREATE SEQUENCE seq_purchase_request;
CREATE TABLE purchase_request (
    id_purchase_request INTEGER DEFAULT nextval('seq_purchase_request'),
    sending_date DATE,
    id_utilisateur INTEGER,
    id_service INTEGER,
    title VARCHAR(50),
    description VARCHAR(200),
    status INTEGER,
    PRIMARY KEY(id_purchase_request),
    FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY(id_service) REFERENCES service(id_service)
);

CREATE SEQUENCE seq_article_quantity;
CREATE TABLE article_quantity (
    id_article_quantity INTEGER DEFAULT nextval('seq_article_quantity'),
    id_purchase_request INTEGER,
    id_article INTEGER,
    quantity DECIMAL(8, 2),
    id_purchase_order INTEGER,      -- A reviser lorsqu'on arrive dans le purchase order
    amount DECIMAL(10, 2),          -- En attente du purchase order
    status INTEGER,
    PRIMARY KEY(id_article_quantity),
    FOREIGN KEY(id_purchase_request) REFERENCES purchase_request(id_purchase_request),
    FOREIGN KEY(id_article) REFERENCES article(id_article)
);

ALTER SEQUENCE seq_purchase_request RESTART WITH 1;
INSERT INTO purchase_request (sending_date, id_utilisateur, id_service, title, description, status) VALUES 
('2023-11-18', 1, 1, 'Besoin mensuel du departement', 'Comme pour chaque mois, nous avons besoins de ces bien.', 1),
('2023-11-18', 3, 3, 'Achat de matiere premiere', 'La production d''huile a augmente et nous avons besoins de plus d''arachide.', 1);

INSERT INTO article_quantity (id_purchase_request, id_article, quantity, id_purchase_order, amount, status) VALUES
(1, 1, 2, NULL, 0, 1),
(1, 5, 5, NULL, 0, 1),
(2, 2, 1, NULL, 0, 1),
(2, 9, 10, NULL, 0, 1),
(2, 8, 2, NULL, 0, 1);

--- FOURNISSEURS ---
create sequence seq_supplier;
create table supplier(
    id_supplier integer primary key DEFAULT nextval('seq_supplier'),
    name_supplier varchar(30),
    responsable_contact varchar(15),
    email varchar(50),
    adress varchar(20),
    category_product TEXT,
    status integer
 );
alter sequence seq_supplier start with 1;
insert into supplier (name_supplier, responsable_contact, email, adress, category_product,status) values 
('Score','+261342665394', 'score.mgr@gmail.com','Akoor digue','Alimentation, sport , jouets',1),
('Disconord','+261325167354', 'leaderprice.mgr@gmail.com','Ivandry', 'Meuble , fournitures de bureau' ,1),
('Rasetta','+261325467374', 'rasetta.mgr@gmail.com','Ankorondrano','Automobile, pieces automobiles ',1);