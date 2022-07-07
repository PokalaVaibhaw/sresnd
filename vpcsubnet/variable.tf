
variable "region" {
default = "us-east-1"
}

variable "vpc_cidr" {
default = "10.0.0.0/16"
}

variable "private_subnet1_cidr" {
default = "10.0.2.0/24"
}


variable "private_subnet1_zone" {
default = "us-east-1b"
}
