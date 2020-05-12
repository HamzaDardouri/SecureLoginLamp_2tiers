# SecureLoginLamp_2tiers
It' for test Lamp_2tiers

Tou d'abord,On ouvre les 2 machines (Apache+PHP) et (Mysql),Connectez-vous sur les 2 machines.
Notre configuration au niveau adresses IP est la suivante:
VM(Apache+PHP):192.168.56.21
VM(Mysql):192.168.56.23

Après,tu dois cloner ce projet sur votre machine serveur (Apache+PHP) en utilisant cette commande:

git clone https://github.com/HamzaDardouri/SecureLoginLamp_2tiers.git

Puis,tu dois déplacer les 2 fichiers .sh (bash script file) sur votre dossier personnelle ~ ou /home/<nom_user> 

mv  ~/SecureLoginLamp_2tiers/deployer.sh   ~/SecureLoginLamp_2tiers/deployer2.sh   ~/

On passe vers l'execution:
Rendre le fichier deployer.sh exécutable à travers cette commande (votre répertoire personnelle sur la machine (Apache+PHP)):
chmod +x deployer.sh

Enfin, Exécutez cette fichier à travers cette commande:

./deployer.sh

Pour tester :ouvrez ton navigateur et saisissez cette lien:
http://192.168.56.21/SecureLogin
Tapez comme login username soit test ou hamza et comme mot de passe soit 123456 ou hamza.

Pour que tu puisse ajouter plusieurs utilisateurs, connectez vous sur votre VM(Mysql) et entrez comme devops:
mysql -u devops -p
Mot de passe:devops
use login;
Pour inserer, voilà un exemple du requete d'insertion pour un nouveau utilisateur.
insert into accounts (id,username,password,email) values (3,'aaaaaa','aaaaaaaa','aaaa@aaaa.com');

Tu peut créer une infinité des utulisateurs.

#Profitez-en.
Merci pour votre lecture à la fin du page.
Aurevoir.


