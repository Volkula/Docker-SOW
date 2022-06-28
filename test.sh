#!/bin/bash
docker exec -it client bash /opt/repo/yum.sh
sleep 0.2
cat << EOF 
###################################
Test installed custom rpm package
###################################
EOF
sleep 0.2
docker exec -it client tz
