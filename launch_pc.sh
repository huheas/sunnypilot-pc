#!/bin/bash
sudo chmod -R 777 /dev/bus/usb/*
export BYD_RADAR=1
OP_DIR=$(dirname "$(readlink -f "$0")")
export FINGERPRINT="BYD_HAN_EV_20"
export PARAMS_ROOT="$OP_DIR/params"
export LOG_ROOT="$OP_DIR/.comma"

cd "$OP_DIR" &&
source .venv/bin/activate &&
#USE_WEBCAM=1 ROAD_CAM=0 system/manager/manager.py
USE_WEBCAM=1 ROAD_CAM=0 system/manager/manager.py
