# Challenge 1 - Kubernetes Deployment

## Overview
This challenge creates a Kubernetes deployment and service for a web application.

## Resources Created

### Kubernetes Deployment (`frontend`)
- **Name**: frontend
- **Replicas**: 4
- **Container**: simple-webapp
- **Image**: kodekloud/webapp-color:v1
- **Container Port**: 8080
- **Pod Labels**: name=webapp

### Kubernetes Service (`webapp-service`)
- **Name**: webapp-service
- **Type**: NodePort
- **Port**: 8080
- **NodePort**: 30080
- **Selector**: name=webapp

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the plan:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. Access the application at `http://<node-ip>:30080`

## Requirements
- Kubernetes cluster configured
- kubectl configured with cluster access
- Terraform >= 1.1.5
- Kubernetes provider 2.11.0
