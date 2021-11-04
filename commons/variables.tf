# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}
variable "az1" {
  description = "AZ 1"
  type = string
  default = "us-east-1a"
}
variable "az2" {
  description = "AZ 2"
  type = string
  default = "us-east-1b"
}
variable "vpc_cidr" {
  description = "vpc_cidr"
  type = string
  default = ""
}