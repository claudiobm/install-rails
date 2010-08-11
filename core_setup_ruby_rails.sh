#!/bin/sh
cd /opt/
mkdir RoR
cd /opt/RoR

apt-get update
aptitude update

#Lib para desenvolvimento
apt-get install -y build-essential

#Libs para tratar imagens e dev
apt-get install -y libperl-dev gcc libjpeg62-dev libbz2-dev libtiff4-dev libwmf-dev libz-dev libpng12-dev libx11-dev libxt-dev libxext-dev libxml2-dev libfreetype6-dev liblcms1-dev libexif-dev perl libjasper-dev libltdl3-dev graphviz gs-gpl pkg-config

#Instalando Mysql-server
apt-get install -y mysql-server
apt-get install -y libmysqlclient*

#Ruby Core
cd /opt/RoR/files
cd ruby
./configure
make
make install

#Instalando o Core do Zlib(Biblioteca de compressao)
cd /opt/RoR/files
cd zlib
./configure && make && make install

#Instalando alguns componentes do zlib
apt-get install -y libzlib-ruby zlib-bin zlibc ruby1.8-dev

#Rubygems Core
cd /opt/RoR/files
cd rubygems
ruby setup.rb 

gem update --system
gem update


#Componente do zlib para ruby
cd /opt/RoR/files
cd ruby-zlib
ruby extconf.rb && make && make install


#Atualizando Gems
gem update --system
gem update

#Instalando Rails(Framework)
gem install rails --include-dependencies

#Mysql lib
sudo apt-get install -y mysql-client mysql-admin mysql-query-browser libmysqlclient15-dev

#Instalando a gem de acesso ao  mysql
gem install mysql

#Atualizando lib mysql
apt-get install -y libmysql-ruby

#Ruby-Enterprise Core
cd /opt/RoR/files
cd ruby-enterprise
./installer

#Instalando componentes do SVN
apt-get install -y cvs2svn esvn git-svn libsvn-dev svn-load websvn svn-load libsvn-ruby

#Certificando se esta tudo instalado
apt-get install -y ruby1.8 ri1.8 rdoc1.8 rake irb1.8

#Criando links para acesso ao bin
sudo ln -s /usr/bin/ruby1.8 /usr/bin/ruby
sudo ln -s /usr/bin/ri1.8 /usr/bin/ri
sudo ln -s /usr/bin/rdoc1.8 /usr/bin/rdoc
sudo ln -s /usr/bin/irb1.8 /usr/bin/irb
sudo ln -s /usr/bin/gem1.8 /usr/bin/gem


cd /opt/RoR/
#Path library
export LD_LIBRARY_PATH=/usr/local/lib

apt-get update
gem install fastthread
apt-get install -y libruby1.8
apt-get install -y irb1.8 libopenssl-ruby1.8 libreadline-ruby1.8 libruby1.8 rdoc1.8 ri1.8 ruby1.8

#PHP
apt-get install -y php5 libapache2-mod-php5

#Will paginate
gem install will_paginate

#Openssl
apt-get install -y openssl libopenssl-ruby libapr1-dev apache2-prefork-dev libaprutil1-dev
cd /opt/RoR/ruby-1.8*/ext/openssl
ruby extconf.rb && make && make install

chmod 777 /usr/local/lib/ruby/gems/1.8/gems/passenger-*/ext/apache2/mod_passenger.so

passenger-install-apache2-module

#Adicionando no final do profile
# export GEM_HOME=/usr/lib/ruby/gems/1.8/gems:/usr/lib/ruby/gems em /etc/profile
# export GEM_PATH=/usr/lib/ruby/gems/1.8/gems:/usr/lib/ruby/gems em

# ln -s /usr/local/lib/ruby/gems /usr/lib/ruby/gems
# 
# mv /var/lib/gems /var/lib/gems_old
# ln -s /usr/local/lib/ruby/gems /var/lib/gems

#Script Console
cd /opt/RoR/ruby/ext/readline
ruby extconf.rb && make && make install