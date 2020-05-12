#!/bin/bash 
#En supposant que tu fait le clonage dans votre répertoire personnelle.
#git clone  https://github.com/HamzaDardouri/SecureLogin.git
#Pour faire le déploiement:
sudo cp -r  'SecureLogin'  '/var/www/html/'
chmod +x  'deployer2.sh' | scp -r -p  'deployer2.sh'  'useradm'@'192.168.56.23':~
echo "Successful"
exit

