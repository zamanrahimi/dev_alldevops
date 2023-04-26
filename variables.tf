# zaman1
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXLW2ED6IHJ7A2HMP"
  secret_key = "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"
}

# change allways 
variable "keyname" {
    type = string
    default = "ec2_key"
}

# push changes to dev repository in github
resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = ".\dev_alldevops.bat"
  }
}