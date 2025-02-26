# 0x17. Web Stack Debugging #3

## Overview
This project focuses on debugging a WordPress website running on a **LAMP** stack (**Linux, Apache, MySQL, PHP**). Sometimes, logs are insufficient to diagnose issues, requiring deeper analysis into the web stack.

## Requirements
- All files are interpreted on **Ubuntu 14.04 LTS**.
- Every file should end with a new line.
- A **README.md** file is mandatory at the root of the project.
- Puppet manifests must:
  - Pass **puppet-lint** version **2.1.1** without errors.
  - Run without errors.
  - Have a comment in the first line explaining their purpose.
  - End with the `.pp` extension.
- Files will be checked with **Puppet v3.4**.

## Web Stack Information
- **WordPress** is a widely used CMS powering **26% of the web**, making it a crucial skill in development and debugging.
- It commonly runs on a **LAMP stack**.
- Debugging web stack issues requires investigating logs, server configurations, and system settings beyond what logs may explicitly show.

## Installation Guide
To ensure compliance with **puppet-lint**, install the necessary dependencies:
```bash
apt-get install -y ruby
gem install puppet-lint -v 2.1.1
```

## Debugging Approach
1. **Analyze Logs**: Check Apache, MySQL, and system logs.
2. **Validate Configurations**: Ensure correct **Apache**, **MySQL**, and **PHP** settings.
3. **Check Service Status**: Confirm required services are running.
4. **Use Puppet for Automation**: Write manifests to fix detected issues.

## Author
- **Nicholas Odiwuor**
