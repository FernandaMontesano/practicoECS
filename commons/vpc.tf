resource "aws_vpc" "grupo1_vpc" {
  cidr_block       = "${var.vpc_cidr}.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name      = "grupo1_vpc"
    Automated = "Yes"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.grupo1_vpc.id

  tags = {
    Name      = "igw grupo1"
    Automated = "Yes"
  }
}
# Create Route Table 
resource "aws_route_table" "vpc_public_route_table" {
  vpc_id = aws_vpc.grupo1_vpc.id
  tags = {
    Name      = "grupo1_route_table"
    Automated = "Yes"
  }
}
# Create Route in Route Table for  Internet Access
resource "aws_route" "vpc-public-route" {
  route_table_id         = aws_route_table.vpc_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
  tags = {
    Name      = "grupo1_route_table"
    Automated = "Yes"
  }
}
#outputs
output "grupo1_vpc" {
  value = aws_vpc.grupo1_vpc.id
}