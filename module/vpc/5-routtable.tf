
# 5. Create route table 

resource "aws_route_table" "vpc_project_routetable" {
  vpc_id = aws_vpc.vpc_project.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_project_internet_gateway.id
  }


  tags = {
    Name = "VPC_project_route_table"
  }
}

resource "aws_route_table_association" "vpc_project_route_table_association" {
  subnet_id = aws_subnet.vpc_project_subnet.id
  route_table_id = aws_route_table.vpc_project_routetable.id 
}