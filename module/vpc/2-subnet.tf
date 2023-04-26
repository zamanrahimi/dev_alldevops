#2.  Create subnet 

resource "aws_subnet" "vpc_project_subnet" {
    vpc_id = aws_vpc.vpc_project.id
    tags = {
      Name = "vpc_project_subnet"
    }
    cidr_block = var.cidr_block[1]
}

# output subnet id to be used in for example EC2
output "subnet_id" {
  value = aws_subnet.vpc_project_subnet.id
}