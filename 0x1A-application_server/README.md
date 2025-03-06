# 0x1A. Application Server

## Background Context
In this project, we extend our web infrastructure by adding an **Application Server** to complement our **Nginx Web Server**. While Nginx efficiently serves static content, an application server is responsible for handling dynamic requests. We will configure the application server to serve our **Airbnb Clone v2 - Web framework** project and integrate it with Nginx.

## Learning Objectives
By the end of this project, you should be able to:
- Understand what an application server is and how it interacts with a web server.
- Set up a Python-based development environment.
- Deploy a Flask application behind a web server.
- Configure Nginx to serve requests from an application server.
- Use process management tools to keep the application running.

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

## Tasks
### 0. Set up Development with Python
**Objective:** Deploy and serve the **Airbnb Clone v2 - Web framework** on `web-01`.

#### Steps:
1. Ensure that task #3 from your **SSH project** is completed for `web-01`.
2. Install required packages:
   ```bash
   sudo apt update && sudo apt install -y net-tools
   ```
3. Clone the Airbnb Clone v2 repository onto `web-01`:
   ```bash
   git clone https://github.com/YOUR_USERNAME/AirBnB_clone_v2.git
   ```
4. Modify `web_flask/0-hello_route.py` to serve content at `/airbnb-onepage/` on port `5000`:
   ```python
   from flask import Flask
   
   app = Flask(__name__)

   @app.route("/airbnb-onepage/")
   def hello_hbnb():
       return "Hello HBNB!"

   if __name__ == "__main__":
       app.run(host="0.0.0.0", port=5000)
   ```
5. Run the application:
   ```bash
   python3 -m web_flask.0-hello_route
   ```
6. Test the endpoint:
   ```bash
   curl 127.0.0.1:5000/airbnb-onepage/
   ```
   Expected output:
   ```
   Hello HBNB!
   ```

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
