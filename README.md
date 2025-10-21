# DevOps Intern Final Project

**Name:** Ankith Mohan  
**Date:** October 21, 2025  

## Project Overview
This repository documents my DevOps internship final project.  
It demonstrates core DevOps skills — Linux scripting, Docker, CI/CD, Nomad, and monitoring — using open-source tools.

### 1. Git & GitHub Setup  
- Repository initialized with README and sample script `hello.py`.

### 2. Linux & Scripting Basics  
- Added `scripts/sysinfo.sh` which displays:  
  - Current user  
  - Date and uptime  
  - Disk and memory usage  
  - Running Docker containers  

#### Run the script:
```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

## 3 Docker Containerization
This step containerizes `hello.py` using Python 3.10-slim.

**Commands used:**
```bash
docker build -t devops-hello .
docker run --rm devops-hello

