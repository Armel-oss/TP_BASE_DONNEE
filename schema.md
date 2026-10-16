# 01_etape
- carte_plat(**id**, nom_plat, categorie,prix)

# 02_etape
- carte_plat(**id**,nom_plat,#id_categorie,prix)
- categorie_plat(**id**,nom_categorie)

# 03_etape
- commande (**id**,date_commande)
- commande_plat (**id**,#id_commande,#id_plat,quantite) 

# 04_etape
- client(**id**,nom_client,telephone)
- commande (**id**,date_commande,#id_client)

# 05_etape
- serveur(**id**,nom_serveur,prenom_serveur)
- table_salle(**id**,numero_table)
- commande (**id**,date_commande,#id_client,#id_serveur,#id_table)
