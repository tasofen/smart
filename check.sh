#!/bin/bash

# nvme
/usr/sbin/smartctl -a /dev/nvme0 \
    | grep -v 'Local Time is:' \
    | grep -v 'Temperature:' \
    | grep -v 'Data Units Read:' \
    | grep -v 'Data Units Written:' \
    | grep -v 'Power On Hours:' \
    | grep -v 'Host Read Commands:' \
    | grep -v 'Host Write Commands:' \
    | grep -v 'Controller Busy Time:' \
    | grep -v 'Power Cycles:' \
    > nvme.log

git add .
git commit -m "notebook"
git push origin notebook
