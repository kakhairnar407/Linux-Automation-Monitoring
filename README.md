**Linux Automation & Monitoring**

Bash · Cron · Amazon Linux EC2 · DevOps Operations

Automated Linux infrastructure monitoring suite that replaced manual daily checks — running health checks every hour, log monitoring every 30 minutes, and log cleanup weekly, with zero human intervention required.


The Problem It Solves
Manual Linux monitoring is slow, in consistent, and breaks at 3 AM when no one is watching.
This project automates the 3 most critical daily ops tasks — system health, log error detection, and log cleanup — and schedules them to run continuously on an Amazon Linux EC2 instance using cron jobs.
Result: overnight infrastructure monitoring with zero on-call trigger required.

Scripts
1. health_check.sh — System Health Monitor
Monitors CPU usage, memory consumption, and disk usage every hour.
Logs all metrics to ~/linux-automation/logs/health_check.log for trend tracking.
Cron schedule: Every hour 0 * * * *

2. log_monitor.sh — Error Log Scanner
Scans system logs for errors every 30 minutes.
Filters out known irrelevant warnings (e.g. RETBleed) to reduce noise.
Logs only actionable errors to ~/linux-automation/logs/log_monitor.log.
Cron schedule: Every 30 minutes */30 * * * *

3. cleanup_logs.sh — Automated Log Cleanup
Deletes logs older than 7 days to prevent disk bloat.
Records every cleanup operation for audit trail.
Cron schedule: Weekly — Sundays at 2 AM 0 2 * * 0

Project Structure
linux-automation/
├── scripts/
│   ├── health_check.sh
│   ├── log_monitor.sh
│   └── cleanup_logs.sh
└── logs/
    ├── health_check.log
    ├── log_monitor.log
    └── cleanup.log

How to Run
bash# Clone the repo
git clone https://github.com/kakhairnar407/Linux-Automation-Monitoring.git
cd Linux-Automation-Monitoring

# Give execute permission
chmod +x scripts/*.sh

# Run manually
./scripts/health_check.sh
./scripts/log_monitor.sh
./scripts/cleanup_logs.sh

# Set up cron jobs
crontab -e
# Add:
# 0 * * * * ~/linux-automation/scripts/health_check.sh
# */30 * * * * ~/linux-automation/scripts/log_monitor.sh
# 0 2 * * 0 ~/linux-automation/scripts/cleanup_logs.sh

Environment

OS: Amazon Linux EC2

Shell: Bash

Scheduler: Cron

Deployed on: AWS EC2 instance


Skills Demonstrated
Area DetailBash Scripting Health checks, log filtering, automated cleanup Cron Scheduling Hourly, 30-min, and weekly automated executionLog Management Error capture, noise filtering, retention policy AWS EC2 Deployed and tested on Amazon Linux instance DevOps Mindset Automation-first approach to routine ops tasks
