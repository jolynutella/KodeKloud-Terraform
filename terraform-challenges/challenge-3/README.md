# Challenge 3 - AWS EC2

## Overview
This challenge provisions an AWS EC2 instance with an Elastic IP, SSH key pair, and automated nginx installation.

## Resources Created

### EC2 Instance (`citadel`)
- **AMI**: ami-06178cf087598769c (configurable)
- **Instance Type**: m5.large
- **User Data**: Runs `install-nginx.sh` script on startup
- **Region**: eu-west-2

### SSH Key Pair (`citadel-key`)
- **Key Name**: citadel
- **Public Key**: Loaded from `/root/terraform-challenges/project-citadel/.ssh/ec2-connect-key.pub`

### Elastic IP (`eip`)
- **Attached to**: citadel EC2 instance
- **VPC**: Enabled
- **Provisioner**: Writes public DNS to `/root/citadel_public_dns.txt`

## Features
- Automated nginx installation via user data script
- SSH access using uploaded key pair
- Elastic IP with persistent public DNS
- Local-exec provisioner to capture public DNS

## Usage

1. Ensure SSH key exists:
   ```bash
   ls /root/terraform-challenges/project-citadel/.ssh/ec2-connect-key.pub
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. Check the public DNS:
   ```bash
   cat /root/citadel_public_dns.txt
   ```

5. SSH into the instance:
   ```bash
   ssh -i /root/terraform-challenges/project-citadel/.ssh/ec2-connect-key ubuntu@<public-dns>
   ```

## Variables
- `region`: AWS region (default: eu-west-2)
- `ami`: AMI ID (default: ami-06178cf087598769c)
- `instance_type`: EC2 instance type (default: m5.large)

## Requirements
- AWS credentials configured
- Terraform >= 1.1.5
- AWS provider 4.15.0
- SSH key pair generated at specified path
- install-nginx.sh script in the same directory
