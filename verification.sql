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
