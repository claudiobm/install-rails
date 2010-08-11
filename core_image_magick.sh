#!/bin/sh

#Imagemagick packages
cd /opt/RoR/files
cd freetype
./configure --prefix=/usr/local
make
sudo make install
cd /usr/local/src

apt-get install -y libpng*

cd /opt/RoR/files
cd jpegsrc
ln -s `which glibtool` ./libtool
# export MACOSX_DEPLOYMENT_TARGET=10.6
./configure --enable-shared --prefix=/usr/local
make
sudo make install
cd /usr/local/src

cd /opt/RoR/files
cd tiff
./configure --prefix=/usr/local
make
sudo make install
cd /usr/local/src

apt-get install -y libwmf*

cd /opt/RoR/files
cd lcms
make clean
./configure
make
sudo make install
cd /usr/local/src

cd /opt/RoR/files
cd ghostscript
./configure  --prefix=/usr/local
make
sudo make install
cd /usr/local/src

cd /opt/RoR/files
tar zxvf ghostscript-fonts.tar.gz
sudo mv fonts /usr/local/share/ghostscript

# Image Magick
cd /opt/RoR/files
cd `ls | grep ImageMagick-`
export CPPFLAGS=-I/usr/local/include
export LDFLAGS=-L/usr/local/lib
./configure --prefix=/usr/local --disable-static --with-modules --without-perl --without-magick-plus-plus --with-quantum-depth=8 --with-gs-font-dir=/usr/local/share/ghostscript/fonts --disable-openmp
make
sudo make install
cd /usr/local/src

# RMagick
sudo gem install rmagick

#Script Console
cd /opt/RoR/ruby/ext/readline
ruby extconf.rb && make && make install