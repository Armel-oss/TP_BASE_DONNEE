CREATE TABLE categorie_plat(
    id SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(255) NOT NULL
);

INSERT INTO categorie_plat (nom_categorie) VALUES
('Plat Malagasy'),
('Plat Chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE carte_plat add id_categorie INT REFERENCES categorie_plat(id);
UPDATE carte_plat SET id_categorie = 1 WHERE categorie = 'Plat Malagasy';
UPDATE carte_plat SET id_categorie = 2 WHERE categorie = 'Plat Chinois';
UPDATE carte_plat SET id_categorie = 3 WHERE categorie = 'Soupe';
UPDATE carte_plat SET id_categorie = 4 WHERE categorie = 'Dessert et goûter';
UPDATE carte_plat SET id_categorie = 5 WHERE categorie = 'Boisson';


-- Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ?
-- car on ne peut pas avoir le nombre de plats par categorie.ABORT
-- Exemple : si quelqu'un ecrit 'Plat Malagasy' avec un minuscule ou 'plat malagasy' avec un espace, cela sera considere comme une categorie differente.
