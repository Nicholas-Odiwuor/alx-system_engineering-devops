# Web Stack Debugging #4

## Overview
This project focuses on debugging a web stack issue in an Nginx-based server. Using ApacheBench, we identified a large number of failed requests under high traffic. The goal is to optimize Nginx to handle more concurrent requests efficiently.

## Problem
- The server was experiencing **943 failed requests** out of **2000 total requests**.
- Non-2xx responses indicated that the server was struggling under load.
- Logs and benchmarking results pointed to a configuration issue in Nginx.

## Solution
A Puppet manifest (`0-the_sky_is_the_limit_not.pp`) was created to:
- Increase Nginx's worker connections.
- Adjust system limits to allow more concurrent requests.
- Restart Nginx to apply the changes.

## Steps to Apply Fix
1. Install Puppet if not already installed:
   ```bash
   apt-get update && apt-get install -y puppet
   ```
2. Apply the Puppet manifest:
   ```bash
   puppet apply 0-the_sky_is_the_limit_not.pp
   ```
3. Re-run ApacheBench to verify performance improvement:
   ```bash
   ab -c 100 -n 2000 localhost/
   ```

## Expected Outcome
- **0 failed requests** after applying the fix.
- Improved request handling and performance.

## Author
Nicholas Odiwuor
ALX System Engineering - Web Stack Debugging 4


