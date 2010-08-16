#!/bin/sh

path_root='/opt/RoR';

apt-get install -y curl gzip tar 


cd "$path_root"
cd files

#Core do ruby
curl http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz > ruby.tar.gz
tar zxvf ruby.tar.gz
mv ruby-1.8.7 ruby

echo "Descompactado ruby"

#Zlib
curl http://zlib.net/zlib-1.2.5.tar.gz > zlib.tar.gz
tar zxvf zlib.tar.gz
mv zlib-1.2.5 zlib

echo "Descompactado zlib"

#Ruby gems
wget https://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz --no-check-certificate
tar zxvf rubygems-1.3.7.tgz
mv rubygems-1.3.7 rubygems

echo "Descompactado rubygems"

#Ruby-zlib 
curl http://www.blue.sky.or.jp/atelier/ruby/ruby-zlib-0.6.0.tar.gz > ruby-zlib.tar.gz
tar zxvf ruby-zlib.tar.gz
mv ruby-zlib-0.6.0 ruby-zlib

echo "Descompactado ruby-zlib"

#Ruby enterprise
wget http://rubyforge.org/frs/download.php/71096/ruby-enterprise-1.8.7-2010.02.tar.gz
tar zxvf ruby-enterprise-1.8.7-2010.02.tar.gz
mv ruby-enterprise-1.8.7-2010.02 ruby-enterprise

echo "Descompactado ruby-enterprise"

#Freetype
curl http://nongnu.askapache.com/freetype/freetype-2.3.9.tar.gz > freetype.tar.gz
tar zxvf freetype.tar.gz
mv freetype-2.3.9 freetype

echo "Descompactado freetype"

#Jpegsrc
curl ftp://ftp.aai.ee/pub/unix/jpegsrc.v6b.tar.gz > jpegsrc.tar.gz
tar zxvf jpegsrc.tar.gz
mv jpeg-6* jpegsrc

echo "Descompactado jpegsrc"


curl ftp://ftp.remotesensing.org/libtiff/tiff-3.9.1.tar.gz > tiff.tar.gz
tar zxvf tiff.tar.gz
mv tiff-3.9.1 tiff

echo "Descompactado tiff"


wget http://downloads.sourceforge.net/project/lcms/lcms/2.0/lcms2-2.0a.tar.gz?r=&ts=1281997088&mirror=ufpr
tar zxvf lcms2-2.0a.tar.gz
mv lcms-2.0 lcms

echo "Descompactado lcms"

wget http://downloads.sourceforge.net/project/ghostscript/GPL%20Ghostscript/8.71/ghostscript-8.71.tar.gz
tar zxvf ghostscript-8.71.tar.gz
mv ghostscript-8.71 ghostscript

echo "Descompactado lcms"

curl ftp://ftp.imagemagick.net/pub/ImageMagick/delegates/ghostscript-fonts-std-8.11.tar.gz > ghostscript-fonts.tar.gz
tar zxvf ghostscript-fonts.tar.gz

echo "Descompactado ghostscript-fonts"

wget ftp://ftp.fifi.org/pub/ImageMagick/ImageMagick.tar.gz
tar zxvf ImageMagick.tar.gz
mv ImageMagick-* image_magick

echo "Descompactado ImageMagick"

curl ftp://ftp.ru/pub/sunfreeware/SOURCES/httpd-2.2.9.tar.gz > httpd.tar.gz
tar zxvf httpd.tar.gz
mv httpd-2.2.9 httpd

echo "Descompactado httpd"