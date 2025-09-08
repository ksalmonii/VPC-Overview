provider "aws" {
  region = "us-east-1"
}

# VPC resource block
resource "aws_vpc" "keith_cool_vpc_2" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = false

  tags = {
    Name = "KeithCoolVPC2"
  }
}

# Subnet A
resource "aws_subnet" "Private_subnetA" {
  vpc_id                  = aws_vpc.keith_cool_vpc_2.id 
  cidr_block              = "10.0.1.0/24"  # Replace with actual CIDR if different
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "us-east1a-PrivatesubnetA"
  }
}

# Subnet A
resource "aws_subnet" "Public_subnet_A" {
  vpc_id                  = aws_vpc.keith_cool_vpc_2.id
  cidr_block              = "10.0.2.0/24"  # Replace with actual CIDR if different
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "us-east1a-PublicsubnetA"
  }
}


resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.keith_cool_vpc_2.id

  tags = {
    Name = "KeithMainRouteTable"
  }
}

