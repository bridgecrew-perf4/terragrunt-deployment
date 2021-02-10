resource "aws_vpc" "LLamaDevVPC_US" {
  provider = aws.usEast
  cidr_block= "10.225.0.0/21"

  enable_dns_hostnames=true
  enable_dns_support= true
  instance_tenancy= "default"
  tags = {
    Name: "LLamaDev Primary VPC"
    module: "ec2_vpc_net"
    this: "vpc"
  }
}
