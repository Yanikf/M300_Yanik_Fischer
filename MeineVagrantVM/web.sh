sudo apt-get update #neuste Version für Paket
sudo apt-get -y install debconf-utils apache2 nmap #download von apache2
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password Admin123' #Passwort setzen
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password Admin123'
sudo apt-get -y install php libapache2-mod-php php-curl php-cli php-mysql php-gd mysql-client  #Verschiedene Mods insallieren
sudo mkdir /usr/share/adminer #Neus Verzeichnis
sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
sudo a2enconf adminer.conf 
sudo service apache2 restart 
echo -e '127.0.0.1 localhost web01\n192.168.10.100 db01' > /etc/hosts

sudo apt-get install ufw #firewall installieren
sudo ufw --force enable #firewall aktivieren
sudo ufw allow 80/tcp #fw rule erstellen
sudo ufw allow 22/tcp