
#!/usr/bin/env bash
set -euo pipefail
echo "========================================"
echo "Linux System Monitoring Report"
echo "========================================"
echo "User:    $(whoami)"
echo "Hostname: $(hostname)"
echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S %Z')"
echo ""
echo "--- Memory Usage ---"
free -h
