# AWS VPC Terraform Project

This project defines and imports an existing AWS Virtual Private Cloud (VPC) infrastructure using Terraform. It includes a VPC, public and private subnets, a route table, and associations. The infrastructure is imported from AWS and managed through Terraform configuration files.

## 📦 Project Overview

- **VPC Name**: KeithCoolVPC2
- **Region**: us-east-1
- **CIDR Block**: 10.0.0.0/16
- **Subnets**:
  - Public Subnet A (10.0.2.0/24)
  - Private Subnet B (10.0.1.0/24)
- **Route Table**: Includes default route to Internet Gateway
- **Internet Gateway**: Attached to VPC

## 🛠 Technologies Used

- Terraform
- AWS VPC, Subnets, Route Tables, Internet Gateway
- GitHub for version control

