resource "aws_customer_gateway" "LLamaDevCG_EMEA" {
  provider = aws.euWest
  bgp_asn    = 65000
  ip_address = "77.75.107.157"
  type       = "ipsec.1"

  tags = {
    Name = "BHX-CG"
  }
}

