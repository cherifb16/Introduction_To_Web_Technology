# Utiliser la bibliothèque pg
require 'pg'
# Connexion à goyaDB depuis ruby par PG::connect(dbname: "goya")
# Stocker les informations de connexion dans une variable nommée connexion
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  # Manipuler PostgreSQL en utilisant la variable de connexion
  # "select date, weight, give_for from crops;"
  # Exécuter directement l'instruction SQL et stocker le résultat dans la variable de résultat.
  result = connection.exec("select date, weight, give_for from crops;")
  # Traiter chaque ligne retirée
  result.each do |record|
      # Prenez chaque ligne et mettez-la sur le terminal
      puts "Size of bitter gourd: #{record["weight"]} Sold to: #{record["give_for"]}"
  end
ensure
  # Si vous rencontrez des erreurs,
  # Arrêtez la connexion à la base de données avec .finish
  connection.finish
end
