# Register your module here !
module "vpc" { source  = "../module/vpc" }
module "ec2" { source  = "../module/ec2"}
module "iam" { source  = "../module/iam"}
module "eks_infrastructure" { source  = "../module/eks/infrastructure"}
module "eks_apps" { source  = "../module/eks/apps"}