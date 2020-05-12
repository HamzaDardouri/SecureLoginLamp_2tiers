#!/bin/bash 
#En supposant que tu fait le clonage dans votre répertoire personnelledu machine Apache_PHP
#Pour faire le déploiement:
sudo cp -r  'SecureLoginLamp_2tiers'  '/var/www/html/'
chmod +x  'deployer2.sh' | scp -r -p  'deployer2.sh'  'useradm'@'192.168.56.23':~
echo "Successful"
exit

