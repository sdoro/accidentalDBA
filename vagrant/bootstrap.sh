#!/usr/bin/env bash

# setup apt-get to pull from apt.postgresql.org
echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

# update apt
apt-get update

#add pgbadger PPA
apt-get -y -q install python-software-properties
apt-add-repository -y ppa:pgbadger/stable

# update apt
apt-get update
apt-get -y -q install pgdg-keyring

# install postgresql and a bunch of accessories
apt-get -y -q install postgresql-9.2
apt-get -y -q install postgresql-server-dev-9.2
apt-get -y -q install postgresql-contrib-9.2
apt-get -y -q install postgresql-plpython-9.2
apt-get -y -q install pgbouncer
apt-get -y -q install libtext-csv-perl
apt-get -y -q install pgbadger

# install alternate editor and tmux
apt-get -y -q install joe
apt-get -y -q install tmux

# install stuff
apt-get -y -q install vim
apt-get -y -q install git-core
apt-get -y -q install mc 

/setup/dbprep.sh

echo ''
echo 'vagrant loaded and ready for tutorial'
echo 'version 0.3 of AccidentalDBA environment'

exit 0




