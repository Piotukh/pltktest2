#!/bin/bash
mkdir -p /opt/hellthrash/periodic/
find /opt/hellthrash/images/ -maxdepth 1 -type f -iname '*.jpeg' -cmin -60 -size +400k > /opt/hellthrash/periodic/run_"`date +"%T"`".txt
