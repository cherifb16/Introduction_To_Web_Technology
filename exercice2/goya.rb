# Lancer un programme CGI pour recevoir et renvoyer des données
require 'cgi'
cgi = CGI.new
# Après avoir reçu des données, renvoyer une réponse au format HTML
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Récupérer les données de "goya" qui est la marque d'information
  #par la description cgi['goya'] et l'assigne à une variable locale
  get = cgi['goya']
  # Renvoyer la réponse en HTML
  "<html>
    <body>
      <p>Les informations 'The size of bitter gourd' et de l'acheteur sont les suivantes</p>
      String：#{get}
    </body>
  </html>"
}
