#!/bin/bash
#
# Scripts in this directory are run during the build process.
# each script will be uploaded to /tmp on your build droplet, 
# given execute permissions and run.  The cleanup process will
# remove the scripts from your build system after they have run
# if you use the build_image task.
#
#echo "HELLO WORLD"

# RStudio Server
#export VERSION="1.4.1717"
#wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-${VERSION}-amd64.deb
#gdebi rstudio-server-${VERSION}-amd64.deb
#rm rstudio-server-${VERSION}-amd64.deb


# Setting firewall rules
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow http
#ufw allow https
ufw --force enable
