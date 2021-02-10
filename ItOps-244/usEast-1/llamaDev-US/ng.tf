resource "aws_nat_gateway" "LLamaDevNATGateway_US" {
  provider = aws.usEast
  allocation_id = aws_eip.LLamaDevEIP_US.id
  subnet_id     = aws_subnet.LLamaDevPrimaryDMZSubnet_US.id

  tags = {
    Name = "LLamaDev Nat Gateway"
  }
}
