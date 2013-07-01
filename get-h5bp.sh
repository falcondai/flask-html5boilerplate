#!/bin/bash

# download latest html5-boilerplate
wget https://github.com/h5bp/html5-boilerplate/archive/master.zip -O h5bp-master.zip

# inflate h5bp
unzip h5bp-master.zip
mkdir main/static
mv html5-boilerplate-master/* main/static/
rm -rf html5-boilerplate-master

# move index.html into templates/
mkdir main/templates
mv main/static/index.html main/templates/

# setup a virtualenv at venv/
virtualenv venv/

# activate and prepare virtualenv
source venv/bin/activate
pip install flask

# clean up
rm h5bp-master.zip
