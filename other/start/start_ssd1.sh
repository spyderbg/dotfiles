#!/bin/bash

TMP_DIR="/home/spyder/chia_tmp1"
DST_DIR="/media/spyder/hdd1"
LOG_FILE="$DST_DIR/$(date +%s).log"

# rm -rf "$TMP_DIR"

time /usr/lib/chia-blockchain/resources/app.asar.unpacked/daemon/chia plots create -k32 -n1 -t"$TMP_DIR" -2"$TMP_DIR" -d"$DST_DIR" -b3390 -u128 -r4 -cxch1vvqfta7v7q6tcw9ujq7zrfqm7t2me0wuzxak9f2ra7x4tc8g9vcqkv88y0


