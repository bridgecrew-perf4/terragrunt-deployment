resource "aws_vpn_connection" "LLamaDevVpnConnection_US" {
    provider = aws.usEast
  customer_gateway_id = aws_customer_gateway.LLamaDevCG_US.id
  vpn_gateway_id = aws_vpn_gateway.LLamaDevVpnGw_US.id
  type                = "ipsec.1"

    tags = {
    Name = "ARB-VPN-S2S"
  }
}