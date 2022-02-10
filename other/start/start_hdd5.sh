#!/bin/bash

HDD_NUM="5"
TMP_DIR="/media/spyder/hdd$HDD_NUM/chia$(date +%s)"
TMP2_DIR="~/ssd/chia$(date +%s)"
DST_DIR="/media/spyder/hdd$HDD_NUM"

time /usr/lib/chia-blockchain/resources/app.asar.unpacked/daemon/chia --passphrase-file <(echo -n "P@cko7689") plots create -k32 -n1 -t"$TMP_DIR" -2"$TMP2_DIR" -d"$DST_DIR" -b3390 -u128 -r4 -cxch1vvqfta7v7q6tcw9ujq7zrfqm7t2me0wuzxak9f2ra7x4tc8g9vcqkv88y0

