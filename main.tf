provider "aws" {
    profile = "default"
    region = "us-east-1"
}

terraform {
  required_version = "~> 0.12.6"

  backend "local" {}
}

resource "aws_instance" "app-server" {
    count = 1
    ami = "ami-2757f631"
    instance_type = "t2.micro"
    tags = {
        Name = "packer-asible-test"
    }
}
