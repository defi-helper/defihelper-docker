#!/bin/bash

echo "SELECT 'CREATE DATABASE defihelper_backend' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper_backend')\gexec" | psql -U development
echo "SELECT 'CREATE DATABASE defihelper_scanner' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper_scanner')\gexec" | psql -U development
echo "SELECT 'CREATE DATABASE defihelper_adapters' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper_adapters')\gexec" | psql -U development
psql -U development -d defihelper_adapters < /db.backup/adapters.sql
