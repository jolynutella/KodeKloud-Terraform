# AWS Workshop with Terraform

This project contains Terraform configurations from the KodeKloud AWS workshop. It demonstrates how to provision a complete AWS infrastructure including VPC, EC2 instances, RDS database, and networking components.

**Source:** [Learn by Doing: AWS Workshop with Terraform](https://learn.kodekloud.com/user/courses/learn-by-doing-aws-workshop-with-terraform)

## Infrastructure Overview

This Terraform project creates the following AWS resources:

### Networking
- **VPC** (`AppVPC`): A Virtual Private Cloud with CIDR block 10.0.0.0/16
- **Subnets**: Two subnets across different availability zones
  - `AppSubnet1` (10.0.1.0/24) in us-east-1a
  - `AppSubnet2` (10.0.2.0/24) in us-east-1b
- **Internet Gateway** (`AppIGW`): Enables internet connectivity for the VPC
- **Route Table** (`AppRouteTable`): Routes internet traffic through the IGW
- **Security Group** (`WebTrafficSG`): Allows inbound traffic on:
  - Port 22 (SSH)
  - Port 80 (HTTP)
  - Port 443 (HTTPS)
  - Port 3306 (MySQL)

### Compute
- **EC2 Instances**: Two t2.micro instances running Ubuntu
  - `WebServer1` in AppSubnet1
  - `WebServer2` in AppSubnet2
- **Elastic IPs**: Public IP addresses assigned to each instance
- **Network Interfaces**: Dedicated ENIs for each web server

### Database
- **RDS MySQL Instance** (`app_database`):
  - Engine: MySQL 8.4.7
  - Instance class: db.t3.micro
  - Storage: 20 GB
  - Database name: appdatabase
  - Username: admin
  - Multi-AZ subnet group across both subnets

## File Structure

```
terraform-workshop/
├── provider.tf    # AWS provider configuration
├── vpc.tf         # VPC, subnets, security groups, and network interfaces
├── igw.tf         # Internet gateway and routing configuration
├── ec2.tf         # EC2 instances and Elastic IPs
└── rds.tf         # RDS MySQL database instance
```

## Resource Details

### VPC Configuration
- **CIDR Block**: 10.0.0.0/16
- **DNS Support**: Enabled
- **DNS Hostnames**: Enabled

### EC2 Instances
- **AMI**: ami-06c68f701d8090592 (Ubuntu)
- **Instance Type**: t2.micro
- **Key Pair**: my-ec2-key
- **Public IPs**: Assigned via Elastic IPs

### RDS Database
- **Engine**: MySQL 8.4.7
- **Instance Class**: db.t3.micro
- **Allocated Storage**: 20 GB
- **Publicly Accessible**: Yes
- **Default Password**: db*pass123 (change this in production!)

## Outputs

This configuration provides the following outputs:

| Output | Description |
|--------|-------------|
| `instance1_id` | EC2 instance ID for WebServer1 |
| `instance2_id` | EC2 instance ID for WebServer2 |
| `route_table_ID` | Route table ID for the VPC |
