#!/usr/bin/env bash


set -euo pipefail

echo "=== SysInfo Report ==="
echo "User: $(whoami)"
echo "Date: $(date --utc +"%Y-%m-%d %H:%M:%S %Z")"
echo
echo "---- Uptime & Load ----"
uptime
echo
echo "---- Disk Usage (human-readable) ----"
df -h --output=source,fstype,size,used,avail,pcent,target | sed 's/^/  /'
echo
echo "---- Top 5 Largest Files/Dirs in / (summary) ----"
du -xh / 2>/dev/null | sort -rh | head -n 5 || true
echo
echo "---- Memory Usage ----"
free -h
echo
echo "---- Running Docker Containers (if docker present) ----"
if command -v docker >/dev/null 2>&1; then
  docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"
else
  echo "  docker: not installed or not in PATH"
fi
echo
echo "=== End of Report ==="
