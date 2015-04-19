#!/bin/bash
DIR=${PWD##*/}
rm -rv _site/
jekyll b
rm -rv _site/build.sh
scp -rv _site/* www-data@isss.nine.ch:~/$DIR
