resource "aws_vpn_gateway" "LLamaDevVpnGw_US" {
  provider = aws.usEast
  vpc_id = aws_vpc.LLamaDevVPC_US.id
  amazon_side_asn = "64555"

  tags = {
    Name = "ARB-VPN"
  }
}