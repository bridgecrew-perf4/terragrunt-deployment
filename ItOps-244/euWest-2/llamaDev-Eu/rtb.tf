#Main Routing Table
resource "aws_route_table" "LLamaDevMain_EMEA" {
  provider = aws.euWest
  vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"

  route {
    cidr_block = "10.0.0.0/8"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_EMEA.id}"
  }
  
  route {
    cidr_block = "172.16.0.0/12"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_EMEA.id}"
  }
  
  route {
    cidr_block = "192.168.0.0/16"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_EMEA.id}"
  }

    route {
    cidr_block = "10.235.132.0/22"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.LLamaDevVpcPeering_EMEA.id}"
    }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.LLamaDevNATGateway_EMEA.id}"
  }

  tags = {
    Name = "Main"
  }
}
resource "aws_route_table_association" "LLamaDevPrimaryPrivateToAll_EMEA" {
  provider = aws.euWest
  subnet_id      = "${aws_subnet.LLamaDevPrimaryPrivateSubnet_EMEA.id}"
  route_table_id = "${aws_route_table.LLamaDevMain_EMEA.id}"
}
resource "aws_route_table_association" "LLamaDevSecondaryPrivateToAll_EMEA" {
  provider = aws.euWest
  subnet_id      = "${aws_subnet.LLamaDevSecondaryPrivateSubnet_EMEA.id}"
  route_table_id = "${aws_route_table.LLamaDevMain_EMEA.id}"
}

#DMZ Routing Table
resource "aws_route_table" "LLamaDevDMZ_EMEA" {
  provider = aws.euWest
  vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.LLamaDevInternetGateway_EMEA.id}"
  }

  tags = {
    Name = "DMZ"
  }
}
resource "aws_route_table_association" "LLamaDevPrimaryDMZToInternet_EMEA" {
  provider = aws.euWest
  subnet_id      = "${aws_subnet.LLamaDevPrimaryDMZSubnet_EMEA.id}"
  route_table_id = "${aws_route_table.LLamaDevDMZ_EMEA.id}"
}
resource "aws_route_table_association" "LLamaDevSecondaryDMZToInternet_EMEA" {
  provider = aws.euWest
  subnet_id      = "${aws_subnet.LLamaDevSecondaryDMZSubnet_EMEA.id}"
  route_table_id = "${aws_route_table.LLamaDevDMZ_EMEA.id}"
}

resource "aws_default_route_table" "LLamaDevBlackHole_Emea" {
  provider = aws.euWest
  default_route_table_id = "${aws_vpc.LLamaDevVPC_EMEA.default_route_table_id}"
  tags = {
    Name = "DefaultBlackhole"
  }
}

