#!/bin/bash
DIR=${PWD##*/}
rm -rv _site/
jekyll b
rm -rv _site/build.sh
#scp -rv _site/* www-data@isss.nine.ch:~/$DIR
echo $DIR
lftp -u www-data -e "mirror -R -c -e -n --ignore-time  _site $DIR; bye" sftp://isss.nine.ch
