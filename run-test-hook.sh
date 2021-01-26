#!/usr/bin/env bash


if [ `grep -r '| raw' client/templates/* | grep -v 'assetSource' | wc -l` -gt 1 ]
then
  echo "Raw in directory"
  exit 1
else
  exit 0
fi