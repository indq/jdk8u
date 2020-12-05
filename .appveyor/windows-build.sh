#!/usr/bin/bash

export TMP=C:\\Temp TEMP=C:\\Temp PATH="/bin:$PATH"
cd /cygdrive/c/projects
wget http://download.savannah.gnu.org/releases/freetype/freetype-2.10.4.tar.gz
tar -xzf freetype-2.10.4.tar.gz
cd /cygdrive/c/projects/jdk8u
git submodule update --init
bash ./configure --with-target-bits=64 --with-toolchain-version=2010 --with-freetype-src=/cygdrive/c/projects/freetype-2.10.4 --with-debug-level=release
make images
