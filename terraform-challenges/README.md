# Terraform Challenges

This repository contains solutions to the Terraform challenges from KodeKloud.

## Source

These challenges are from the [KodeKloud Terraform Challenges Course](https://learn.kodekloud.com/user/courses/terraform-challenges).

## Challenges Overview

### Challenge 1 - Kubernetes Deployment
Deploy a frontend web application on Kubernetes with 4 replicas and expose it via a NodePort service.

**Technologies**: Kubernetes, Terraform
**Key Concepts**: Deployments, Services, NodePort

📁 [View Challenge 1](challenge-1/)

---

### Challenge 2 - LAMP Stack with Docker
Build and deploy a complete LAMP stack (Linux, Apache, MariaDB, PHP) using Docker containers with custom networks and persistent volumes.

**Technologies**: Docker, Terraform
**Key Concepts**: Docker images, containers, networks, volumes, container linking, dependencies

📁 [View Challenge 2](challenge-2/)

---

### Challenge 3 - AWS EC2 Instance (Citadel)
Provision an AWS EC2 instance with Elastic IP, SSH key pair, and automated nginx installation using provisioners.

**Technologies**: AWS, Terraform
**Key Concepts**: EC2, Elastic IP, Key Pairs, Provisioners, User Data

📁 [View Challenge 3](challenge-3/)

---

## Prerequisites

- **Terraform**: Version 1.1.5 or higher
- **Challenge 1**: Kubernetes cluster and kubectl configured
- **Challenge 2**: Docker installed and running
- **Challenge 3**: AWS credentials configured (or LocalStack for testing)

## Getting Started

Each challenge is contained in its own directory with a dedicated README file that includes:
- Detailed resource descriptions
- Architecture overview
- Usage instructions
- Requirements

To work on a specific challenge:

1. Navigate to the challenge directory:
   ```bash
   cd challenge-<number>
   ```

2. Read the challenge-specific README:
   ```bash
   cat README.md
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review the execution plan:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

6. When done, destroy the resources:
   ```bash
   terraform destroy
   ```

## Project Structure

```
terraform-challenges/
├── README.md                    # This file
├── challenge-1/                 # Kubernetes Deployment Challenge
│   ├── README.md
│   ├── main.tf
│   └── provider.tf
├── challenge-2/                 # LAMP Stack Challenge
│   ├── README.md
│   ├── provider.tf
│   ├── images.tf
│   ├── network.tf
│   ├── containers.tf
│   └── main.tf
└── challenge-3/                 # AWS EC2 Challenge
    ├── README.md
    ├── main.tf
    ├── provider.tf
    └── variables.tf
```
