# Key pair 
variable "key_pair" {
  type = string
  default = "ec2_key"
}
output "key_pair_value" {
  value = var.key_pair
}

# AMI 
variable "ami" {
  type = string
  default = "ami-02f3f602d23f1659d"
}
output "ami" {
  value = var.ami
}


# Machine Type  
variable "mtype" {
  type = string
  default = "t2.micro"
}
output "mtype" {
  value = var.mtype
}
