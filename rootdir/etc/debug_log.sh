#!/bin/sh

_date=`date +%F_%H-%M-%S`

/system/bin/logcat | tee /data/logcat_${_date}.txt
