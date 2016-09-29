FROM mongo

RUN apt-get -qq update
RUN apt-get install -y wget unzip

#all these files can be found here: http://www.geonames.org/
RUN wget http://download.geonames.org/export/dump/allCountries.zip && unzip allCountries.zip && rm allCountries.zip

RUN wget http://download.geonames.org/export/dump/admin1CodesASCII.txt

RUN wget http://download.geonames.org/export/dump/admin2Codes.txt

COPY ./mongo_script.js /mongo_script.js

COPY ./mongo_imports.sh /mongo_imports.sh

CMD ./mongo_imports.sh
