#!/usr/bin/env bash

while getopts d: option
do
case "${option}"
in
d) DIRECTORY=${OPTARG};;
esac
done

if [ `grep -r 'raw' client/templates/* | grep -v 'assetSource' | wc -l` -gt 1 ]
then
  echo "Instances of raw in ${DIRECTORY}. Please remove"
  exit 1
else
  exit 0
fi