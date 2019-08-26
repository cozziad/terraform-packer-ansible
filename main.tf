provider "aws" {
    profile = "default"
    region = "us-east-2"
}

terraform {
  required_version = "~> 0.12.6"

  backend "local" {}
}

resource "aws_instance" "app-server" {
    count = 1
    ami = "ami-02f706d959cedf892"
    instance_type = "t2.micro"
    key_name = "packer-test"
    tags = {
        Name = "packer-asible-test-app"
    }
}
/*
resource "aws_instance" "worker-server" {
    count = 1
    ami = "ami-02f706d959cedf892"
    instance_type = "t2.micro"
    key_name = "packer-test"
    tags = {
        Name = "packer-asible-test-worker"
    }
}
/**/
