FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt-get update
RUN apt-get install -y mongodb-org-shell
RUN apt-get install -y mongodb-org-tools

#all these files can be found here: http://www.geonames.org/
COPY data/admin1CodesASCII.txt admin1CodesASCII.txt

COPY data/admin2Codes.txt admin2Codes.txt

COPY data/allCountries.txt allCountries.txt

COPY ./mongo_script.js /mongo_script.js

COPY ./mongo_imports.sh /mongo_imports.sh

CMD ./mongo_imports.sh
