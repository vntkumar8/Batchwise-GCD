#!/bin/bash
# works on ubuntu (apt-based package manager)

sudo apt-get install m4 g++ make
wget https://factorable.net/fastgcd-1.0.tar.gz
tar zxvf fastgcd-1.0.tar.gz
cd fastgcd


# Get number of CPU cores
OUTPUT=$(cat /proc/cpuinfo | grep processor | wc -l)

# Modify number of CPU cores in sourcecode 
sed "31s/4/$OUTPUT/" fastgcd.c > temp
rm fastgcd.c
mv temp fastgcd.c

# install and build the fastgcd executable
./install.sh

if [ -f ./fastgcd ]; 
    then 
        echo ''
        echo '=========================================='
        echo '    INSTALLATION PROCESS COMPLETED        '
        echo '==========================================' 
    else 
         echo ''
         echo "INSTALLATION NOT SUCESSFULL"; 
fi
