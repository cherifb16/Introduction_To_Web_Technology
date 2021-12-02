# Lancer un programme CGI pour recevoir et renvoyer des données
require 'cgi'
cgi = CGI.new
# Après avoir reçu des données, renvoyer une réponse au format HTML
cgi.out("type" => "text/html", "charset" => "UTF-8") {
# Récupérer les données reçues cgi ['input'] et les assigner à la variable locale
# Récupérer les informations du marqueur 'input'.
get = cgi['input']
# Renvoyer la réponse en HTML
"<html>
  <body>
    <p>La chaîne reçue est la suivante</p>
    <p>Chaîne：#{get}</p>
  </body>
</html>"
}
