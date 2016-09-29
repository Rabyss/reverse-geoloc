#!/bin/sh

mkdir -p data
wget http://download.geonames.org/export/dump/allCountries.zip && unzip allCountries.zip && rm allCountries.zip && mv allCountries.txt data/
wget http://download.geonames.org/export/dump/admin1CodesASCII.txt && mv admin1CodesASCII.txt data/
wget http://download.geonames.org/export/dump/admin2Codes.txt && mv admin2Codes.txt data/
