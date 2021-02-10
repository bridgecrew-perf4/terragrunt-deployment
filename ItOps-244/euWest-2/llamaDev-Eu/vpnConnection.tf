resource "aws_vpn_connection" "LLamaDevVpnConnection_EMEA" {
    provider = aws.euWest
  customer_gateway_id = aws_customer_gateway.LLamaDevCG_EMEA.id
  vpn_gateway_id = aws_vpn_gateway.LLamaDevVpnGw_EMEA.id
  type                = "ipsec.1"
}