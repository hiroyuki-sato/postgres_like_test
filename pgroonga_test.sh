#!/bin/sh 

export PATH="/usr/pgsql-9.5/bin:$PATH"

sudo -u postgres psql groonga_test < pgroonga_setup.sql 
sudo -u postgres psql groonga_test < create_pgroonga.sql
sudo -u postgres psql groonga_test < query_pgroonga.sql
