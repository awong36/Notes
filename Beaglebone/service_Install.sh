#!/bin/bash
#defined file paths
CURRENT_DIR=$pwd
SCRIPT_DIR=$(dirname $0)
SERVICE=cycler
now=$(date +"%%Y-%m-%d_%H-%M-%N")

echo $SCRIPT_DIR
if [ -e $SCRIPT_DIR/$SERVICE.service ]; then
	echo "Enable services..."
	chmod 755 $SCRIPT_DIR/main.py
	dos2unix $SCRIPT_DIR/main.py
	dos2unix $SCRIPT_DIR/$SERVICE.service
	cp $SCRIPT_DIR/$SERVICE.service /lib/systemd/system/
	systemctl daemon-reload
	systemctl enable $SERVICE.service
	systemctl start $SERVICE.service
else
	echo "No main or service found"
fi