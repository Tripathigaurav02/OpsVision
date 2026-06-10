#!/bin/bash

HOSTNAME=$(hostname)
CURRENT_TIME=$(date)
UPTIME=$(uptime -p)
#CPU=$(top)
MEMORY_USAGE=$(free -h)
DISK_USAGE=$(df -h)
DOCKER_STATUS=$(systemctl is-active docker)
NGINX_STATUS=$(systemctl is-active nginx)

echo "Hostname: $HOSTNAME"
echo "Current Time: $CURRENT_TIME"
echo "Uptime: $UPTIME"

echo ""
echo "Memory Usage:"
echo "$MEMORY_USAGE"

echo ""
echo "Disk Usage:"
echo "$DISK_USAGE"

echo ""
echo "Docker Status: $DOCKER_STATUS"
echo "Nginx Status: $NGINX_STATUS"
