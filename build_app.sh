#!/bin/bash
echo "Preparing for application..."
rm -rf vendor_temp
rm -rf build_temp

echo ""
echo "Moving application to a temporary folder..."
mv application application_temp

echo ""
echo "Downloading drupal..."
drush make -y --working-copy drupal_core.make application

echo ""
echo "Moving pxlp_drupal profile to application-folder..."
mv application_temp/profiles/pxlp_drupal application/profiles/pxlp_drupal

echo ""
echo "Downloading drupal contrib dependencies..."
cd application/profiles/pxlp_drupal
drush make -y --no-core --contrib-destination=. --working-copy pxlp_drupal.make

echo ""
echo "Cleaning up..."
cd ../../..
rm -rf application_temp
rm -rf application/sites/all