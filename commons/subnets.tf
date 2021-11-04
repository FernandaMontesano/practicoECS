# Create Subnet1
resource "aws_subnet" "vpc_subnet1" {
  vpc_id                  = aws_vpc.grupo1_vpc.id
  cidr_block              = "${var.vpc_cidr}.1.0/24"
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    "Name" = "vpc_subnet1"
  }
}
# Create Subnet2
resource "aws_subnet" "vpc_subnet2" {
  vpc_id                  = aws_vpc.grupo1_vpc.id
  cidr_block              = "${var.vpc_cidr}.2.0/24"
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    "Name"      = "vpc_subnet2"
    "Automated" = "yes"
  }
}
