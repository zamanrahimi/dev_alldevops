provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

# change allways 
variable "keyname" {
    type = string
    default = "ec2_key"
}
