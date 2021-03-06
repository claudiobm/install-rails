#!/bin/sh

#Apache
cd /opt/RoR
cd httpd
./configure
make
make install

#Algumas libs para Apache e PHP
apt-get install -y apache2-mpm-worker
apt-get install -y libapache2-mod-ruby libapache-ruby1.8 apache2-utils php5 apache2-prefork-dev apache2-common
apt-get install -y libapache2-mod-vhost-hash-alias

#Instalando componentes Apache
apt-get install -y libapache2-svn libapache2-mod-php5	apache2-mpm-prefork

#Gem do mongrel
gem install mongrel

#Adicionando os modulos do apache
a2enmod ssl && a2enmod rewrite && a2enmod suexec && a2enmod include
a2enmod proxy_balancer && a2enmod proxy && a2enmod proxy_connect && a2enmod proxy_http

#Passenger libs
echo "deb http://apt.brightbox.net hardy main" > /etc/apt/sources.list.d/brightbox.list
echo "deb http://apt.brightbox.net/ hardy rubyee" > /etc/apt/sources.list.d/brightbox-rubyee.list
wget -q -O - http://apt.brightbox.net/release.asc | apt-key add -

#Passenger
gem install passenger

apt-get install -y libapache2-mod-passenger rubygems