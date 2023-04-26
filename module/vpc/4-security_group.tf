

#4. create security group  


resource "aws_security_group" "vpc_project_security_group" {
  name        = "vpc_project_security_group"
  description = "Allow TLS inbound traffic"
  vpc_id = aws_vpc.vpc_project.id

#   ingress {
#     description      = "allow traffic to VPC"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
    
#   }

  dynamic "ingress" {
    # iterator = port
    for_each = var.ports
    content {
            description      = "allow traffic to VPC"
            from_port        = ingress.value
            to_port          = ingress.value
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]        
    }

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

  tags = {
    Name = "securitygroup_controll_traffic"
  }
}

# output security group id to be used in for example EC2
output "sg_id" {
  value = aws_security_group.vpc_project_security_group.id
}
