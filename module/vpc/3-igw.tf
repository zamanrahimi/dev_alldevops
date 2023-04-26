
#3. Create Internet Gateway 

resource "aws_internet_gateway" "vpc_project_internet_gateway" {
  vpc_id = aws_vpc.vpc_project.id
  tags = {
    Name = "vpc_project_internet_gateway"
  }
}