#!/bin/bash
baseUrl=${baseUrl:-"github.com/Bayer-Group"}
# baseUrl="github.com/Bayer-Group" #add your default base URL here which would be used throught the project as the domain in the graph triples  
rootDir=${PWD}
if [ -d "/fuseki/databases" ] 
then
    echo "Database already initialized. Removing old lock and exit"
    rm /fuseki/system/tdb.lock
    rm /fuseki/databases/cmc-dataset/tdb.lock
    exit 0
fi

if [ "$baseUrl" != "bayer.com"  ] 
then
    cd /staging/graphs/metadata/
    sed -i "s|bayer.com|${baseUrl}|g" *.ttl
    cd "${rootDir}" || exit
fi

echo "Starting initializing database."
mkdir /fuseki/databases

echo "Start uploading metadata graphs.
###################################"
./tdbloader --graph https://${baseUrl}/pid_ontology/12/OpenSource                     --loc /fuseki/databases/cmc-dataset /staging/graphs/metadata/pid_ontology_12__OpenSource.ttl
./tdbloader --graph https://${baseUrl}/kge/triplestores                               --loc /fuseki/databases/cmc-dataset /staging/graphs/metadata/triplestores.ttl
./tdbloader --graph https://${baseUrl}/kge/triplestoreSystems                         --loc /fuseki/databases/cmc-dataset /staging/graphs/metadata/triplestoreSystems.ttl
./tdbloader --graph https://${baseUrl}/kge/users                         --loc /fuseki/databases/cmc-dataset /staging/graphs/metadata/kge_users.ttl
