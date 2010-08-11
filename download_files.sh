#!/bin/sh

cd files

#Core do ruby
curl http://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz > ruby.tar.gz
tar zxvf ruby.tar.gz
mv ruby-1.8.7 ruby

#Zlib
curl http://zlib.net/zlib-1.2.5.tar.gz > zlib.tar.gz
tar zxvf zlib.tar.gz
mv zlib-1.2.5 zlib

#Ruby gems
curl https://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz > rubygems.tgz
tar zxvf rubygems.tgz
mv rubygems-1.3.7 rubygems

#Ruby-zlib 
curl http://www.blue.sky.or.jp/atelier/ruby/ruby-zlib-0.6.0.tar.gz > ruby-zlib.tar.gz
tar zxvf ruby-zlib.tar.gz
mv ruby-zlib-0.6.0 ruby-zlib

#Ruby enterprise
curl http://rubyforge.org/frs/download.php/71096/ruby-enterprise-1.8.7-2010.02.tar.gz > ruby-enterprise.tar.gz
tar zxvf ruby-enterprise.tar.gz
mv ruby-enterprise-1.8.7-2010.02 ruby-enterprise

#Freetype
curl http://nongnu.askapache.com/freetype/freetype-2.3.9.tar.gz > freetype.tar.gz
tar zxvf freetype.tar.gz
mv freetype-2.3.9 freetype

#Jpegsrc
curl ftp://ftp.aai.ee/pub/unix/jpegsrc.v6b.tar.gz > jpegsrc.tar.gz
tar zxvf jpegsrc.tar.gz
mv jpeg-6* jpegsrc


curl ftp://ftp.remotesensing.org/libtiff/tiff-3.9.1.tar.gz > tiff.tar.gz
tar zxvf tiff.tar.gz
mv tiff-3.9.1 tiff


curl http://www.littlecms.com/lcms-1.17.tar.gz > lcms.tar.gz
tar zxvf lcms.tar.gz
mv lcms-1.17 lcms

curl http://downloads.sourceforge.net/project/ghostscript/GPL%20Ghostscript/8.71/ghostscript-8.71.tar.gz > ghostscript.tar.gz
tar zxvf ghostscript.tar.gz
mv ghostscript-8.71 ghostscript


curl ftp://ftp.imagemagick.net/pub/ImageMagick/delegates/ghostscript-fonts-std-8.11.tar.gz > ghostscript-fonts.tar.gz
tar zxvf ghostscript-fonts.tar.gz
mv ghostscript-fonts-std-8.11 ghostscript-fonts


curl ftp://ftp.fifi.org/pub/ImageMagick/ImageMagick.tar.gz > ImageMagick.tar.gz
tar zxvf ImageMagick.tar.gz

curl ftp://ftp.ru/pub/sunfreeware/SOURCES/httpd-2.2.9.tar.gz > httpd.tar.gz
tar zxvf httpd.tar.gz
mv httpd-2.2.9 httpd

