# Register your module here !
module "vpc" { source  = "../module/vpc" }
module "ec2" { source  = "../module/ec2"}
module "iam" { source  = "../module/iam"}