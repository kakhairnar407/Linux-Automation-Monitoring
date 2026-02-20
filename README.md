# Linux Automation & Monitoring Scripts

**GitHub Repository:** [https://github.com/kakhairnar407/Linux-Automation-Monitoring](https://github.com/kakhairnar407/Linux-Automation-Monitoring)

---

## Project Overview

This project consists of **Bash scripts** to automate Linux system monitoring, health checks, and log management. It is designed to improve operational efficiency, reduce manual intervention, and strengthen automation practices aligned with **DevOps principles**.  

Scripts are deployed on **Amazon Linux EC2** and use **cron jobs** for automated execution.  

---

## Features

- **Health Check Script (`health_check.sh`)**  
  - Monitors **CPU, memory, and disk usage**.  
  - Logs metrics to `~/linux-automation/logs/health_check.log`.  

- **Log Monitor Script (`log_monitor.sh`)**  
  - Monitors system logs for errors.  
  - Filters irrelevant warnings (e.g., RETBleed).  
  - Logs filtered errors to `~/linux-automation/logs/log_monitor.log`.  

- **Cleanup Script (`cleanup_logs.sh`)**  
  - Automatically deletes logs older than 7 days.  
  - Records cleanup operations in `~/linux-automation/logs/cleanup.log`.  

- **Automation with Cron Jobs**  
  - Health check: runs **every hour**.  
  - Log monitor: runs **every 30 minutes**.  
  - Cleanup: runs **weekly on Sundays at 2 AM**.  

---

## Project Structure
linux-automation/
├── scripts/
│ ├── health_check.sh
│ ├── log_monitor.sh
│ └── cleanup_logs.sh
└── logs/
├── health_check.log
├── log_monitor.log
└── cleanup.log


---

## Skills Demonstrated

- **Linux System Administration** – monitoring CPU, memory, and disk usage  
- **Bash Scripting** – automation of health checks, log monitoring, and cleanup tasks  
- **Cron Job Scheduling** – automating scripts to run at regular intervals  
- **Log Management & Monitoring** – capturing errors and system logs efficiently  
- **DevOps Principles** – applying automation, monitoring, and operational efficiency best practices  
