CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom_client VARCHAR(50),
    telephone VARCHAR(15)
);

INSERT INTO client (nom_client,telephone) VALUES
('RAKOTO','0342565525'),
('RABE','0389645689'),
('RASOA','0332525828');

ALTER TABLE commande add id_client INT REFERENCES client(id_client);
UPDATE commande SET id_client = 1 WHERE id = 1;

INSERT INTO commande (date_commande,id_client) VALUES
(NOW(),NULL);

INSERT INTO commande_plat (id_commande, id_plat,quantite) VALUES 
(2, 1, 2),
(2, 2, 1),
(2, 3, 3);

-- Le cle etranger n'est pas null car si c'est null alors on ne peut pas ajouter des cliens passger a des commandes




