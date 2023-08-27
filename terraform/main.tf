terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">4.0"
    }
  }
  backend "s3" {
    key = "aws/ec2-deploy/terraform.tfstate"
  }
}

# 
provider "aws"{
    region = var.region
}


resource "aws_instance" "name"{
    ami = ami-052efd3df9dad4825 # Ubuntu Server 22.04 LTS - HVM
    instance_type = t2.micro
    connection {
        type = "ssh"
        host = self.public_ip
        user = "ubuntu"
        private_key = var.private_key
        timeout = "4m"
    }
}