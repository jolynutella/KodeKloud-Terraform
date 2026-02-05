# KodeKloud Terraform Learning Repository

This repository contains completed solutions and projects from KodeKloud's Terraform courses.

## 📚 Courses Completed

### 1. Terraform Challenges
**Source**: [KodeKloud Terraform Challenges](https://learn.kodekloud.com/user/courses/terraform-challenges)

A series of practical challenges covering various Terraform use cases with different technologies:

- ✅ **Challenge 1**: Kubernetes Deployment - Deploy a frontend web application with 4 replicas
- ✅ **Challenge 2**: LAMP Stack with Docker - Build a complete LAMP stack using Docker containers
- ✅ **Challenge 3**: AWS EC2 Instance (Citadel) - Provision EC2 with Elastic IP and automated nginx setup

📁 [View all challenges](terraform-challenges/)

### 2. AWS Workshop with Terraform
**Source**: [Learn by Doing: AWS Workshop with Terraform](https://learn.kodekloud.com/user/courses/learn-by-doing-aws-workshop-with-terraform)

A comprehensive hands-on workshop building complete AWS infrastructure from scratch:

- ✅ VPC with multiple subnets across availability zones
- ✅ EC2 instances with Elastic IPs
- ✅ Internet Gateway and routing configuration
- ✅ RDS MySQL database with subnet groups
- ✅ Security groups and network interfaces

📁 [View workshop project](terraform-workshop/)

## 🗂️ Repository Structure

```
KodeKloud-Terraform/
├── terraform-challenges/        # Terraform Challenges Course
│   ├── challenge-1/            # Kubernetes Deployment
│   ├── challenge-2/            # LAMP Stack with Docker
│   └── challenge-3/            # AWS EC2 Instance
└── terraform-workshop/         # AWS Workshop
    ├── provider.tf             # AWS provider configuration
    ├── vpc.tf                  # VPC and networking
    ├── igw.tf                  # Internet gateway
    ├── ec2.tf                  # EC2 instances
    └── rds.tf                  # RDS database
```

## 🛠️ Technologies Used

- **Terraform**: Infrastructure as Code
- **AWS**: VPC, EC2, RDS, Elastic IP, Internet Gateway
- **Kubernetes**: Deployments, Services, NodePort
- **Docker**: Containers, Images, Networks, Volumes
- **LAMP Stack**: Linux, Apache, MariaDB, PHP

## 🔗 Resources

- [KodeKloud](https://learn.kodekloud.com/)
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Kubernetes Provider Documentation](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
- [Docker Provider Documentation](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

## 📄 License

See the [LICENSE](LICENSE) file for details.
