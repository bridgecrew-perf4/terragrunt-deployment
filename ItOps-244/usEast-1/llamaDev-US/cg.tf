resource "aws_customer_gateway" "LLamaDevCG_US" {
  provider = aws.usEast
  bgp_asn    = 64512
  ip_address = "50.224.85.30"
  type       = "ipsec.1"

  tags = {
    Name = "ARB1-CG"
  }
}
