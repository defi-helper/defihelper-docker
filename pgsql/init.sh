#!/bin/bash

echo "SELECT 'CREATE DATABASE defihelper_backend' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper-backend')\gexec" | psql -U development
echo "SELECT 'CREATE DATABASE defihelper_scanner' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper-scanner')\gexec" | psql -U development
