#!/bin/bash

make M=drivers/nvme/ clean
make M=drivers/nvme/ modules

HOST=drivers/nvme/host
TARGET=drivers/nvme/target
HOST_DEST=/lib/modules/`uname -r`/kernel/drivers/nvme/host/
TARGET_DEST=/lib/modules/`uname -r`/kernel/drivers/nvme/target/

cp ${HOST}/*.ko ${HOST_DEST}/
cp ${TARGET}/*.ko ${TARGET_DEST}/
ls -lrth $HOST_DEST $TARGET_DEST/ 
