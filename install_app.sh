#!/bin/bash
echo ""
echo "Creating files-folder and adding settings.php..."
mkdir -p application/sites/default
cp application/sites/default/default.settings.php application/sites/default/settings.php
mkdir application/sites/default/files
chmod -R 777 application/sites/default/files
chmod 777 application/sites/default/settings.php

echo ""
echo "Installing drupal with installation-profile..."
cd application/profiles/pxlp_drupal
drush site-install pxlp_drupal --account-name=admin --account-pass=admin --site-mail=pixelpiloten@gmail.com --site-name=pxlp_drupal --db-url=mysql://root:password@127.0.0.1/drupal -y