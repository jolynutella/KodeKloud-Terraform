# Challenge 2 - LAMP Stack with Docker

## Overview
This challenge deploys a complete LAMP stack (Linux, Apache, MariaDB, PHP) using Docker containers with Terraform.

## Architecture
- **Web Server**: PHP + Apache (php-httpd)
- **Database**: MariaDB
- **Admin Tool**: phpMyAdmin
- **Network**: Custom Docker network (my_network)
- **Persistent Storage**: Docker volume for database

## Resources Created

### Docker Images
- **php-httpd-image**: Custom PHP-Apache image built from `lamp_stack/php_httpd`
- **mariadb-image**: Custom MariaDB image built from `lamp_stack/custom_db`

### Docker Network
- **private_network**: Custom network (my_network) with manual attachment enabled

### Docker Volumes
- **mariadb_volume**: Persistent storage for MariaDB data

### Docker Containers

#### 1. Web Server (php-httpd)
- **Name**: webserver
- **Image**: php-httpd:challenge
- **Port**: 80:80
- **Volume**: Website content mounted to `/var/www/html`

#### 2. Database (mariadb)
- **Name**: db
- **Image**: mariadb:challenge
- **Port**: 3306:3306
- **Environment**:
  - MYSQL_ROOT_PASSWORD=1234
  - MYSQL_DATABASE=simple-website
- **Volume**: mariadb-volume mounted to `/var/lib/mysql`

#### 3. phpMyAdmin (phpmyadmin)
- **Name**: db_dashboard
- **Image**: phpmyadmin/phpmyadmin
- **Port**: 8081:80
- **Linked to**: db container
- **Depends on**: mariadb container

## File Structure
```
challenge-2/
├── provider.tf      # Docker provider configuration
├── images.tf        # Docker image definitions
├── network.tf       # Network and volume resources
├── containers.tf    # Container definitions
└── main.tf          # Documentation reference
```

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Apply the configuration:
   ```bash
   terraform apply
   ```

3. Access the services:
   - Website: http://localhost:80
   - phpMyAdmin: http://localhost:8081

## Requirements
- Docker installed and running
- Terraform >= 1.1.5
- Docker provider 2.16.0
