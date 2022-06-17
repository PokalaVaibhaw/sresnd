provider "aws" {
  region  = var.region
}

resource "aws_instance" "ec2_server" {
ami = var.ami
instance_type = var.instance_type
vpc_security_group_ids = var.sg
subnet_id = var.subnet
key_name = var.key_name
  
tags = {
 Name              = "Vaibhaw-demo"
 Environment       = "development"
    }
}

output "aws_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_server.id
}
