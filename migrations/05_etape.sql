CREATE TABLE serveur (
    id_serveur SERIAL PRIMARY KEY,
    nom_serveur VARCHAR(50) NOT NULL,
    prenom_serveur VARCHAR(50) NOT NULL
);

INSERT INTO serveur (nom_serveur, prenom_serveur) VALUES
('Njaka','Rakoto'),
('Lalao','Rasoa');

CREATE TABLE table_salle (
    id SERIAL PRIMARY KEY,
    numero_table INT NOT NULL
);

INSERT INTO table_salle (numero_table) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

ALTER TABLE commande ADD id_serveur INT REFERENCES serveur(id_serveur);
ALTER TABLE commande ADD id_table INT REFERENCES table_salle(id);
UPDATE commande SET id_serveur = 1 WHERE id = 1;
UPDATE commande SET id_table = 1 WHERE id = 1;
UPDATE commande SET id_serveur = 2 WHERE id = 2;
UPDATE commande SET id_table = 2 WHERE id = 2;

-- Une table de la salle et une commande sont deux chose differente : car une table peut avoir 2 clients a la fois mais un commande n'as qu'un seule client