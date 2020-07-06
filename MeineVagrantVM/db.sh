sudo apt-get update #neuste Version für Paket
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password Admin123' #Passwort setzen
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password Admin123'

sudo apt-get install -y mysql-server #Mysql-server wird installiert

sudo sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf #(Connect auf DB das sie überall erreichbar sind)

mysql -uroot -pAdmin123 <<%EOF%            
        Create User 'root'@'192.168.10.101' IDENTIFIED BY 'Admin123' ;
        GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.10.101' ;
        FLUSH PRIVILEGES;

%EOF%

sudo service mysql restart

sudo apt-get install ufw
sudo ufw --force enable
sudo ufw allow 22/tcp
sudo ufw allow from 192.168.10.101 to any port 3306