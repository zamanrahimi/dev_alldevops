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
