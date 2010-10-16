apt-get update
apt-get install -y zabbix-agent
apt-cache search zabbix
apt-get install -y openssh-server
apt-get install -y ruby mysql-client-5.1 mysql-server-5.1 nginx
wget http://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz
tar xvzf rubygems-1.3.7.tgz
cd rubygems-1.3.7
ruby setup.rb
update_rubygems
nginx
gem install rails -v=2.3.5
gem install rails -v=3.0.0
apt-get install sendmail
gem install mysql paperclip will_paginate
gem install mkmf
apt-get install -y libdbd-mysql-ruby1.8
apt-get install -y libmysql-ruby
apt-get install -y libmysqlclient12-dev
apt-get install -y libmysqlclient16 libmysqlclient16-dev
apt-get install -y sqlite3-devel
apt-get install -y libsqlite3-ruby ImageMagick librmagick librmagick-ruby
apt-get install -y imagemagick librmagick-ruby  libgraphicsmagick++3 libgraphicsmagick1-dev libgraphicsmagick3 graphicsmagick libmagick++-dev
gem install passenger
passenger-install-nginx-module
apt-get install -y build-essential libopenssl-ruby  libssl-dev zlib1g-dev
passenger-install-nginx-module
