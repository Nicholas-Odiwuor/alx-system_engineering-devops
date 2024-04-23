# Web Server Configuration (0x0C)

## General

- **Editors Allowed:** vi, vim, emacs
- **Interpreted On:** Ubuntu 16.04 LTS
- **File Ending:** All files should end with a new line
- **Mandatory File:** README.md file at the root of the project folder
- **Bash Scripts:** All Bash script files must be executable
- **Shellcheck:** Bash scripts must pass Shellcheck (version 0.3.7) without any error
- **Script Header:** The first line of all Bash scripts should be `#!/usr/bin/env bash`
- **Script Commenting:** The second line of all Bash scripts should be a comment explaining the script's purpose
- **Systemctl Restriction:** You can't use systemctl for restarting a process

## Project Specifics

- **Evaluation Criteria:**
  1. Is your web-01 server configured according to requirements?
  2. Does your answer file contain a Bash script for automatic configuration of an Ubuntu machine?

## DNS

- **DNS Basics:**
  - **Definition:** Domain Name System (DNS)
  - **Main Role:** Translates domain names into IP addresses

## DNS Record Types

- **Common Record Types:**
  - **A Record:** Maps a domain name to an IP address
  - **CNAME Record:** Maps an alias (canonical name) to a true domain name
  - **TXT Record:** Holds text information, such as SPF records for email authentication
  - **MX Record:** Specifies mail server(s) responsible for receiving email for a domain

