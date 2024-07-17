				ISSUE SUMMARY
Duration
Outage lasted from 25th April, 2024, 9:30 AM to 25th April, 2024 at 1:30PM.

Impact
Users experienced challenges in logging in, retrieving data and performing transactions. 
Company’s main web application had a significant downtime.
Approximately 63% of users were unable to access the services.
The remaining 35% were able to partially access the services but had extremely slow loading times.

Root cause
Database deadlock - Resulting from introduction of inefficient query patterns in the most recent deployment. New codes had nested queries that resulted in database contention. 

Resolution
Rollback deployment - The application was restored back to its previous stable version.
Identifying the inefficient queries - There was then a review of the code changes introduced in the recent deployment. 
Refactoring queries - The inefficient queries were refactored to optimize their performances. 
Testing changes - All the changes and updates were then tested in a staging environment to eliminate chances of possible future errors. 
Redeployment - Upon successful completion, the application was redeployed without errors. 

Corrective & Preventive measures 
Improvements & fixes
Implement automated checks for load balancer settings during deployment.
Improved documentation and training on load balancer configuration management.
Enhanced monitoring to detect load balancer configuration issues instantly. 

Tasks
Patch Load balancer software - Ensures the known version with all fixed softwares is applied.
Monitoring - Integration of monitoring tools to track load balancer performance and traffic distribution.
Automated alerts - Set up alerts for abnormal traffic patterns or server load imbalances.
Review load balancer configuration - Conduct an enhanced review of the current load balancer settings and adjust where necessary.
Regular audits - Schedule regular audits to prevent future misconfigurations. 
Training - Additional training to the DevOps team to enhance efficiency. 


Timeline

09:30 AM: Issue detected via an automated monitoring alert indicating high server load and increased error rates.

09:35 AM: Initial investigation began, focusing on database performance due to the assumption of a potential bottleneck.

09:50 AM: Database health checked and found to be operating normally.

10:05 AM: Application logs reviewed, revealing timeouts and connection failures.

10:20 AM: Misleading path: Investigated network issues, suspecting possible DDoS attack.

10:45 AM: Network traffic analysis completed, showing no signs of a DDoS attack.

11:00 AM: Issue escalated to the DevOps team for further analysis.

11:30 AM: Load balancer logs checked, revealing uneven distribution of traffic.

12:00 PM: Misconfigured settings in the load balancer identified as the root cause.

12:30 PM: Load balancer configuration corrected, traffic began normalizing.

01:00 PM: Monitoring indicated gradual recovery of services.

01:30 PM: Full service restored, users confirmed normal access and performance.




