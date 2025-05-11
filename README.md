# vProfile Lift-and-Shift Deployment on AWS

This project demonstrates a classic "lift and shift" deployment of the [vProfile application](https://github.com/hkhcoder/vprofile-project) onto AWS using EC2, S3, Route 53, Security Groups, and manually installed services like Tomcat, MariaDB, and Memcached.

---

## 📦 Project Structure

```bash
vprofile-lift-and-shift/
├── scripts/           # Installation scripts for services
├── issues/            # Notes and fixes for common problems
├── screenshots/       # Architecture, EC2, S3, and setup images
├── README.md          # This file

Deployment Overview
App Server: Tomcat 9 on Ubuntu

Database: MariaDB with accounts schema and restored data

Cache: Memcached

Artifact Storage: Amazon S3

Infrastructure:

EC2 Instances with key pairs

Load Balancer and Security Groups

Route 53 DNS setup

S3 for storing .war artifacts

```bash
📸Screenshots
Screenshots included in screenshots/:

EC2 and SG configuration

Load Balancer setup

Route 53 DNS

Artifact deployment to/from S3

Login page

```bash
🛠 Setup Scripts
All scripts are located in scripts/:

mariadb.sh: Installs MariaDB, configures user/database

memcached.sh: Installs Memcached and enables remote access

tomcat_ubuntu.sh: Installs Tomcat 9 and OpenJDK 17

```bash
🐞 Troubleshooting
Check issues/tomcat-problems.txt for known issues and how to fix JAVA_HOME for Tomcat.
