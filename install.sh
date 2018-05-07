#!/bin/bash
# wget https://raw.githubusercontent.com/sauvank/install_new_ubuntu/master/install.sh && chmod +x install.sh && ./install.sh

sudo apt-get update -y &&
sudo apt-get  upgrade -y &&

echo "Install Git" && 
sudo apt-get install git -y&&

echo "Install Curl" &&
sudo apt-get install curl -y &&

echo -e "Install PHP 7.2" &&
sudo add-apt-repository ppa:ondrej/php && 
sudo apt update &&
sudo apt install -y php7.2 &&


echo -e "Install PHP modules" &&
sudo apt install  -y php-xmlrpc php-intl php-curl php-gd php-json php-mbstring php-xml &&



echo -e "Install Apache 2" &&
sudo apt install -y  apache2 libapache2-mod-php7.2 && 

echo -e "Active modules rewrite and proxy_http Apache 2" &&
sudo a2enmod rewrite &&
sudo a2enmod proxy proxy_http &&



echo -e "Install MySQL" &&
sudo apt install -y  libapache2-mod-php php-mysql mysql-server &&



echo -e "Install MyphpmyadminSQL" &&
sudo apt install -y  phpmyadmin &&


echo -e "Install Composer" && 
curl -sS https://getcomposer.org/installer | php && 
sudo mv composer.phar /usr/local/bin/composer.phar &&

echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.bashrc && 
. ~/.bashrc &&


echo -e "FINISH" &&
echo -e "http://localhost/" &&
echo -e "http://localhost/phpmyadmin" &&
echo -e "login    : phpmyadmin" &&
echo -e "password : root (your passwrod set pending install )" &&



echo -e "Install ZSH" &&
sudo apt -y install zsh &&
echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.zshrc && 
echo "exec zsh" >> ~/.bashrc
source ~/.zshrc
chsh -s `which zsh`
. ~/.zshrc

echo -e "Install Oh My Zsh" &&
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"




