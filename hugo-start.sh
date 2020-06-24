#!/bin/bash
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`
OUTPUTPATH=$APP_PATH

# Start Hugo dev server
echo "Start HUGO dev server"
cd $SCRIPTPATH/app-source
exec hugo server -D -v -p 1970 --bind=$(ifconfig eth0 | grep inet | cut -d ' ' -f 10)