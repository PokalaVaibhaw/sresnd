provider "aws" {
  region  = var.region
}

resource "aws_vpc" "terraform-vpc" {
  cidr_block       = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "server-vpc"
  }
}

output "aws_vpc_id" {
  value = "aws_vpc.terraform-vpc.id"
}

/* Private subnets */
resource "aws_subnet" "private_subnet1" {
  vpc_id                  = "${aws_vpc.terraform-vpc.id}"
  cidr_block              = var.private_subnet1_cidr
  availability_zone       = var.private_subnet1_zone
  map_public_ip_on_launch = false
  tags = {
    Name        = "VAIBHAW_DEMO_Private_SUBNET"
  }
}