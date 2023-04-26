#1. Create a VPC
resource "aws_vpc" "vpc_project" {
  cidr_block = var.cidr_block[0]
  tags = {
    Name = "vpc_project"
  }
}
# output vpc id to be used in for example EC2
output "vpc_id" {
  value = aws_vpc.vpc_project.id
}