#!/bin/bash
echo "Run this script in sudo"
sudo apt-get update
sudo apt-get upgrade

#sudo apt-get install vlc
sudo apt-get install git --assume-yes
sudo apt-get install apache2 --assume-yes
sudo apt-get install php-curl --assume-yes
sudo apt install mysql-server --assume-yes
sudo apt-get install --assume-yes -y php7.2 libapache2-mod-php7.2 php7.2-cli php7.2-common php7.2-mbstring php7.2-gd php7.2-intl php7.2-xml php7.2-mysql php7.2-mcrypt php7.2-zip
sudo apt-get install phpmyadmin --assume-yes

sudo chown $USER /etc/apache2/apache2.conf
echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo chown root /etc/apache2/apache2.conf
sudo /etc/init.d/apache2 restart

#install jdownloader
#mkdir ./tmp
#cd ./tmp
#wget -O jdownloader.sh https://github.com/sauvank/jdownloader/blob/master/JD2Setup_x64.sh?raw=true
#sudo chmod 755 jdownloader.sh
#./jdownloader.sh
#cd .. && rm -r tmp/


sudo a2enmod rewrite

 sudo a2enmod proxy




 sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt --depth=1
 apt-get install apticron --assume-yes
 apt-get install fail2ban --assume-yes
 apt-get install rkhunter --assume-yes




#generate key ssh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
ssh-add ~/.ssh/id_rsa

#install google chrome
#sudo apt-get install libxss1 libappindicator1 libindicator7
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb

# install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer.phar
echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.zshrc

#install zsh
sudo apt-get install zsh --assume-yes
#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo 'alias ww="cd /var/www/html"' >> ~/.zshrc
echo 'alias site="cd /etc/apache2/sites-available/"' >> ~/.zshrc
echo 'alias log="cd /var/log/apache2"' >> ~/.zshrc
echo 'alias lets="/opt/letsencrypt/./letsencrypt-auto"'>> ~/.zshrc



echo "exec zsh" >> ~/.bashrc
source ~/.zshrc
chsh -s `which zsh`
. ~/.zshrc
