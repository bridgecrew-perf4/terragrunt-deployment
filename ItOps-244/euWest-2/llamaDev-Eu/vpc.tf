resource "aws_vpc" "LLamaDevVPC_EMEA" {
  provider = aws.euWest
  cidr_block= "10.225.8.0/21"
  
  enable_dns_hostnames=true
  enable_dns_support= true
  instance_tenancy= "default"
  tags = {
    Name: "LLamaDev Primary VPC"
    module: "ec2_vpc_net"
    this: "vpc"
  }
}
