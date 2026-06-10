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

#echo "Hostname: $HOSTNAME"  
#echo "Current Time: $CURRENT_TIME"
#echo "Uptime: $UPTIME"
#echo "Memory Usage: ${MEMORY_USAGE}%"
#echo "Disk Usage: ${DISK_USAGE}%"
#echo "Docker Status: $DOCKER_STATUS"
#echo "Nginx Status: $NGINX_STATUS"

cat <<EOF > ../website/data/metrics.json
{
  "hostname": "$HOSTNAME",
  "Current Time": "$CURRENT_TIME",
  "Uptime": "$UPTIME",
  "memory": $MEMORY_USAGE,
  "disk": $DISK_USAGE,
  "docker": "$DOCKER_STATUS",
  "nginx": "$NGINX_STATUS"
}
EOF