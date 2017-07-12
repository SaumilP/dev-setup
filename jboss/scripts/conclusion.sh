#!/usr/bin/env bash

# Read installation parameters from config.cfg file.
if [ -f /vagrant/vagrant/config.cfg ]; then
  source /vagrant/vagrant/config.cfg
else
  echo "ERROR: file config.cfg not found. Exiting."
  exit 1
fi

echo "
Your WildFly server can be accessed on you local machine:
  Host: localhost
  Port: 8080
  Username: $WILDFLY_USER
  Password: $WILDFLY_PASS
"