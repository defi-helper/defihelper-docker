#!/bin/bash

echo "SELECT 'CREATE DATABASE defihelper-backend' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper-backend')\gexec" | psql -U development
echo "SELECT 'CREATE DATABASE defihelper-scan' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'defihelper-scan')\gexec" | psql -U development
