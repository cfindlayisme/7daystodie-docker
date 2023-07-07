# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

FROM gitea.findlayis.me/chuck/steamcmd:latest

# Game install
RUN /steam/steamcmd.sh +force_install_dir /7daystodie +login anonymous +app_update 294420 +quit

CMD /start.sh