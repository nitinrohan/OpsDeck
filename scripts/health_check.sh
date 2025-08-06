#!/bin/bash

# ----------- SYSTEM HEALTH CHECK SCRIPT -----------

# Timestamp
echo "Health Check - $(date)" >> reports/health_log.txt

# Ping Google DNS to test network
echo "Checking internet connection..." >> reports/health_log.txt
ping -c 2 8.8.8.8 &> /dev/null
if [ $? -eq 0 ]; then
  echo "✅ Network status: UP" >> reports/health_log.txt
else
  echo "❌ Network status: DOWN" >> reports/health_log.txt
fi

# PostgreSQL Connection Test
echo "Checking PostgreSQL connection..." >> reports/health_log.txt

# Replace with your credentials
PGUSER="testuser"
PGPASSWORD="Rohan@2002"
PGHOST="localhost"
PGPORT="5432"
PGDB="testdb"


PGPASSWORD=$PGPASSWORD psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDB -c '\l' &> /dev/null

if [ $? -eq 0 ]; then
  echo "✅ PostgreSQL status: REACHABLE" >> reports/health_log.txt
else
  echo "❌ PostgreSQL status: UNREACHABLE" >> reports/health_log.txt
fi

# Add a separator
echo "--------------------------------------------" >> reports/health_log.txt
