#!/usr/bin/env bash
if [ "$EUID" -eq 0 ]
then
  if [ ! -d /usr/local/servinit ]
    then mkdir -p /usr/local/servinit
  fi
  cp -r ./bash /usr/local/servinit
  cp -r ./messages /usr/local/servinit
  cp ./servinit.service /etc/systemd/system
  chmod +x /usr/local/servinit/bash/*
  echo "Installed necessary files to the 'proper' directories. Starting service."
  systemctl daemon-reload
  systemctl enable servinit 2>>./errors.log
  systemctl start servinit 2>>./errors.log
  if [ $? -eq 0 ]
  then
    echo "The service has been started and enabled. Check the /var/log/servinit directory for logs."
  elif [ $? -eq 1 ]
  then
    echo "Servinit service not properly started. Please run 'systemctl status servinit' to investigate."
  fi
else
  echo "Not running as 'root' user! Please run as 'root' to properly start and install this service."
fi
