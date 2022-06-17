variable "region" {
  default     = "us-east-1"
}
variable "ami" {
  default     = "ami-020f4b5242314dddc"
}
variable "instance_type" {
  default     = "t2.micro"
}
variable "sg" {
  type        = list
  default     = [ "sg-022e90ec90b799871" ]
}
variable "subnet" {
  default     = "subnet-0b1038e076ce2d45d"
}
variable "key_name" {
  default     = "vaibhaw-demo"
}

