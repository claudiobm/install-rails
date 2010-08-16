#!/bin/sh
mkdir "/opt/RoR"
mkdir "/opt/files"

sh download_files.sh
sh core_setup_ruby_rails.sh
sh core_image_magick.sh
sh core_webserver.sh
