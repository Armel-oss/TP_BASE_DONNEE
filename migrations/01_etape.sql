CREATE TABLE carte_plat (
    id SERIAL PRIMARY KEY,
    nom_plat VARCHAR(255) NOT NULL,
    categorie VARCHAR(255) NOT NULL,
    prix INT NOT NULL
);

INSERT INTO carte_plat (nom_plat, categorie, prix) VALUES
('Romazava','Plat Malagasy',7000),
('Ravitoto sy henakisoa','Plat Malagasy',8000),
('Akoho sy voanio','Plat Malagasy',8500),
('Mi sao','Plat Chinois',6000),
('Soupe chinoise','Soupe',5000),
('Mofo gasy (les 4)','Dessert et goûter',1000),
('Ranon ampango','Boisson', 500);

-- Pour le prix j'ai choisi INT car le prix reste un entier
-- je choisi id comme identifiant

