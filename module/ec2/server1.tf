module "vpc" {
  source = "../vpc"
}

module "get_var" {
  source = "../public_var"
}


resource "aws_instance" "server1" {
  ami           = module.get_var.ami
  instance_type = module.get_var.mtype
  # vpc_id        = module.vpc.vpc_id
  key_name = module.get_var.key_pair_value
  vpc_security_group_ids = [module.vpc.sg_id]
  subnet_id = module.vpc.subnet_id
  associate_public_ip_address = true
  tags = {
    Name = "server1"
  }

}





