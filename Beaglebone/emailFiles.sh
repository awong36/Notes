#!/bin/bash
cp /project/cycler5.0/system/totalCycle.csv /project/emailLog/outbox &
cp /project/cycler5.0/system/error.csv /project/emailLog/outbox &
cp /project/cycler5.0/log/errorlog.csv /project/emailLog/outbox &
python /project/emailLog/emailFile.py
