#!/bin/bash

# ssd
/usr/sbin/smartctl -a /dev/sda \
    | grep -v "Local Time is:" \
    | grep -v Total_LBAs_Written \
    | grep -v Power_On_Hours \
    | grep -v Airflow_Temperature_Cel \
    > sda.log

# hdd 5400
/usr/sbin/smartctl -a /dev/sdb \
    | grep -v "Local Time is:" \
    | grep -v Temperature_Celsius \
    | grep -v Power_On_Hours \
    > sdb.log

git add .
git commit -m "save"
git push origin master

