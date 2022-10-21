# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

FROM debian:buster-slim

RUN \
    apt update && \
    apt install -y screen lib32gcc1 ca-certificates

ADD http://media.steampowered.com/client/steamcmd_linux.tar.gz /steam/steamcmd_linux.tar.gz

# Install is done in this block
RUN \
    cd /steam && \
    tar -xvzf steamcmd_linux.tar.gz && \
    rm /steam/steamcmd_linux.tar.gz && \
    ./steamcmd.sh +force_install_dir /7daystodie +login anonymous +app_update 294420 +quit

CMD /7daystodie/7DaysToDieServer.x86_64 -logfile /config/serverlog.txt -quit -nographics -dedicated -configfile=/config/serverconfig.xml