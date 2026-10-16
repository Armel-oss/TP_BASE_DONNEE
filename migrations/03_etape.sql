CREATE TABLE commande (
    id SERIAL PRIMARY KEY,
    date_commande TIMESTAMP

);

CREATE TABLE commande_plat (
    id SERIAL PRIMARY KEY,
    id_commande INT REFERENCES commande(id),
    id_plat INT REFERENCES carte_plat(id),
    quantite INT NOT NULL
);

INSERT INTO commande (date_commande) VALUES
(NOW());

INSERT INTO commande_plat (id_commande, id_plat, quantite) VALUES 
(1, 1, 2),
(1, 2, 1),
(1, 3, 3),
(1, 4, 1),
(1, 5, 2);

-- la quantite est place dans la table commande_plat car un plat peut etre commande plusieurs fois dans une meme commande

