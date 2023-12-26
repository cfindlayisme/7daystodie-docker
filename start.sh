#!/bin/bash
# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

/steam/steamcmd.sh +force_install_dir /7daystodie +login anonymous +app_update 294420 +quit

/7daystodie/7DaysToDieServer.x86_64 -logfile /config/serverlog.txt -quit -nographics -dedicated -configfile=/config/serverconfig.xml