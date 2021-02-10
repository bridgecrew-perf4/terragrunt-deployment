resource "aws_vpn_gateway" "LLamaDevVpnGw_EMEA" {
  provider = aws.euWest
  vpc_id = aws_vpc.LLamaDevVPC_EMEA.id
  amazon_side_asn = "64555"

  tags = {
    Name = "BHX-VPN"
  }
}