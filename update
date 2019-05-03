#!/bin/bash

# Advanced update script

# Stop on error
set -e

#Update functions

update(){
clear
echo "Start fully upgrade the system..."
sudo apt-get update -yy
sudo apt-get dist-upgrade -yy
}

clean(){
echo "Cleaning up..."
sudo apt-get autoremove -yy
sudo apt-get autoclean
}

leave(){
clear
echo "----------------"
echo "Update Complete!"
echo "----------------"
exit
}

#Help function
update-help(){

cat <<-END

Update is a tool to automate update and clean a system. (Debian based)

Commands:
  update = full system update

  Running update with no options will update the apt cache and
  perform a full distrubution update automaticly

  update --clean = full system update with cleaning

  update --help = show this help page
END
}

# Het programma
echo "Update -- Debian/Ubuntu Update Tool (version 1.0)"

if [ "$1" == "--clean" ]
then
  clear
  update
  clean
  leave
fi

if [ "$1" == "--help" ]
then
  clear
  update-help
exit
fi

#Check valid input
if [ -n "$1" ]
then
  clear
  echo "update error. Invalid argument. Try 'update --help' for more info" >&2
exit 1
fi

clear
update
leave
