Utilizing Google Cloud VM instances running Linux for hosting a Minecraft server.

Key features of our project:

Resource Monitoring:

Our project includes a strong resource monitoring system that logs CPU, RAM, and Disk Usage.
It is located in the /usage/logs folder, and the usage.sh script logs resource usage every 6 hours, providing insights into server performance over time.

Website Accessibility Monitoring:

We've added a feature to monitor website accessibility using the website.sh script.
This script, running automatically every hour, captures the response code of a specified website using the curl command. The results are then added to a log file, including the current date, time, and accessibility status.

Automated Cleanup Process:

To keep the server environment clean and organized, we've set up an automated cleanup process.
The cleanup.sh script, found in the /usage folder, efficiently deletes files older than 2 days from the /usage/logs directory.

Server Backup with Tar:

Ensuring data security, we've created a backup script using tar to store Minecraft server files.
The backup.sh script uses tar with options for creating an archive (-c), redirecting to gzip (-z), verbose output (-v), and specifying the output file (-f). This script runs every 12 hours using cron, ensuring regular backups.

Project Documentation Website:

Hosted a website using HTML to provide comprehensive project documentation.
The website includes information on project sources, team members, project description, and key features.
