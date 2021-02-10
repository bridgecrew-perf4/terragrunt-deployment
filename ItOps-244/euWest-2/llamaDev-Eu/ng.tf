resource "aws_nat_gateway" "LLamaDevNATGateway_EMEA" {
  provider = aws.euWest
  allocation_id = aws_eip.LLamaDevEIP_EMEA.id
  subnet_id     = aws_subnet.LLamaDevPrimaryDMZSubnet_EMEA.id

  tags = {
    Name = "LLamaDev Nat Gateway"
  }
}
