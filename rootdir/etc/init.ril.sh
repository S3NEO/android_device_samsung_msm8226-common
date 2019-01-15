#!/bin/sh

echo "doing work" | >> /data/log.txt
stat /data/user_de/0/com.android.providers.telephony/shared_prefs | >> /data/log.txt
rm -rf /data/user_de/0/com.android.providers.telephony/shared_prefs
echo "finished doing work" | >> /data/log.txt
stat /data/user_de/0/com.android.providers.telephony/shared_prefs | >> /data/log.txt
