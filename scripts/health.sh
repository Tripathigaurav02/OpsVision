#!/bin/bash

HOSTNAME=$(hostname)
CURRENT_TIME=$(date)
UPTIME=$(uptime -p)
#CPU=$(top)
MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%d\n", $3/$2*100}'
)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%'
)
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
