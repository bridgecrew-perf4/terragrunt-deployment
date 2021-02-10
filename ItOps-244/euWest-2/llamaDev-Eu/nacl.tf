resource "aws_default_network_acl" "LLamaDevPrivateACL_EMEA" {
  provider = aws.euWest
  default_network_acl_id = aws_vpc.LLamaDevVPC_EMEA.default_network_acl_id

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }  

  tags = {
      Name: "LLamaDev Private ACL"
  }
}

resource "aws_network_acl" "LLamaDevDMZACL_EMEA" {
  provider = aws.euWest
  vpc_id = aws_vpc.LLamaDevVPC_EMEA.id
  subnet_ids = [aws_subnet.LLamaDevPrimaryDMZSubnet_EMEA.id, aws_subnet.LLamaDevSecondaryDMZSubnet_EMEA.id]
  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }  

  tags = {
    Name = "LLamaDev DMZ ACL"
  }
}
