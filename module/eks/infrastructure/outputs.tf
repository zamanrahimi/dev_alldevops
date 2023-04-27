# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# configure kubectl to interact with EKS by: 
# aws eks --region us-east-2 update-kubeconfig --name education-eks-UWEO4CpW

# end of kubectl configuration 


output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}
