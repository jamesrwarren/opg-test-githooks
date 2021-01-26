#!/usr/bin/env bash

if [ `grep -r '| raw' client/templates/* | grep -v 'assetSource' | wc -l` -gt 0 ]
then
  echo "Raw in directory"
  exit 1
else
  echo "No raw in directory"
  exit 0
fi