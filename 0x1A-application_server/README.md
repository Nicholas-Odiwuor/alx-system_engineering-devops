# 0x1A. Application Server

## Background Context
In this project, we extend our web infrastructure by adding an **Application Server** to complement our **Nginx Web Server**. While Nginx efficiently serves static content, an application server is responsible for handling dynamic requests. We will configure the application server to serve our **Airbnb Clone v2 - Web framework** project and integrate it with Nginx.

## Requirements
### General
- A `README.md` file at the root of the project is **mandatory**.
- All Python-related tasks must use **Python 3**.
- All configuration files must include comments for clarity.

### Bash Scripts
- Must be executed on **Ubuntu 16.04 LTS**.
- Must end with a new line.
- Must be executable.
- Must pass **Shellcheck** (version 0.3.7-5~ubuntu16.04.1) without errors.
- The first line must be exactly `#!/usr/bin/env bash`.
- The second line should describe what the script does.

## Server Information
| Name        | Username | IP Address        | State    |
|------------|----------|------------------|---------|
| web-01     | ubuntu   | 18.205.163.201   | running |
| web-02     | ubuntu   | 44.206.247.225   | running |
| lb-01      | ubuntu   | 18.206.160.223   | running |

---


## Repository Structure
```
0x1A-application_server/
│── README.md
│── 0-setup_application_server.sh  # Bash script to automate setup
│── 1-configure_nginx              # Configuration for Nginx
│── 2-run_application_server.py    # Python script for running Flask app
│── 3-gunicorn_service_config      # Gunicorn configuration file
└── ...
```

## Author
- **Nicholas Odiwuor - (https://github.com/Nicholas-Odiwuor/
