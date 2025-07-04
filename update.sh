#!/bin/bash
cd $1
source .resolver.sh >> /var/log/.ekran/update_log
./update.sh $@