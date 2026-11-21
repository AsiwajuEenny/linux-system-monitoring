A lightweight Bash utility that collects core Linux host diagnostics-user identity, hostname, timestamp, disk utilization, and memory usage-and exports a formatted text report[cite: 4, 5].

```bash
chmod +x system-report.sh
./system-report.sh | tee reports/sample-report.txt
