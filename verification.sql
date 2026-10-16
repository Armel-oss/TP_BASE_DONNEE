-- 01_etape
-- affichier les plats du plus chers au moins cher
SELECT * FROM carte_plat ORDER BY prix DESC;

-- 02_etape
-- nombre de plats par categorie
SELECT categ.nom_categorie,COUNT(*) as nombre_plats
FROM carte_plat as c
JOIN categorie_plat as categ
ON c.id_categorie = categ.id
GROUP BY categ.id
ORDER BY nombre_plats DESC;

-- 03_etape
-- montant total d'une commande
SELECT SUM(cp.prix * cpl.quantite) as montant_total
FROM carte_plat as cp
JOIN commande_plat as cpl
ON cp.id = cpl.id_plat
JOIN commande as c
ON c.id = cpl.id_commande
GROUP BY c.id
ORDER BY montant_total DESC;

-- 04_etape
-- liste des commandes avec le nom du client, en affichant « client de passage » quand il n'y en a pas
SELECT c.id AS commande_id, COALESCE(clt.nom_client , 'client de passage') AS client_nom 
FROM commande as c
LEFT JOIN client as clt
ON c.id_client = clt.id_client;

-- 05_etape
-- nombre de commandes et chiffre d'affaires par serveur
SELECT s.nom_serveur, COUNT(c.id) AS nombre_commandes, SUM(cp.prix * cpl.quantite) AS chiffre_affaires
FROM serveur AS s
LEFT JOIN commande AS c ON s.id_serveur = c.id_serveur
LEFT JOIN commande_plat AS cpl ON c.id = cpl.id_commande
LEFT JOIN carte_plat AS cp ON cpl.id_plat = cp.id
GROUP BY s.id_serveur
ORDER BY chiffre_affaires DESC;

