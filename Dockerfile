FROM mongo

#all these files can be found here: http://www.geonames.org/
COPY data/admin1CodesASCII.txt admin1CodesASCII.txt

COPY data/admin2Codes.txt admin2Codes.txt

COPY data/allCountries.txt allCountries.txt

COPY ./mongo_script.js /mongo_script.js

COPY ./mongo_imports.sh /mongo_imports.sh

CMD ./mongo_imports.sh
