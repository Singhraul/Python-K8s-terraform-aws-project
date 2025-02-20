#3. Shell Script for Deployment Automation
#Deploying Kubernetes Objects & Terraform
# bash
#!/bin/bash

# Initialize Terraform
terraform init
terraform apply -auto-approve

# Configure Kubeconfig for EKS
aws eks update-kubeconfig --region us-east-1 --name my-cluster

# Deploy Kubernetes Resources
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Verify Deployment
kubectl get pods
kubectl get svc
