#Main Routing Table
resource "aws_route_table" "LLamaDevMain_US" {
  provider = aws.usEast
  vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"

  route {
    cidr_block = "10.0.0.0/8"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_US.id}"
  }
  
  route {
    cidr_block = "172.16.0.0/12"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_US.id}"
  }
  
  route {
    cidr_block = "192.168.0.0/16"
    gateway_id = "${aws_vpn_gateway.LLamaDevVpnGw_US.id}"
  }

    route {
    cidr_block = "10.235.132.0/22"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.LLamaDevVpcPeering_US.id}"
    }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.LLamaDevNATGateway_US.id}"
  }

  tags = {
    Name = "Main"
  }
}
resource "aws_route_table_association" "LLamaDevPrimaryPrivateToAll_US" {
  provider = aws.usEast
  subnet_id      = "${aws_subnet.LLamaDevPrimaryPrivateSubnet_US.id}"
  route_table_id = "${aws_route_table.LLamaDevMain_US.id}"
}
resource "aws_route_table_association" "LLamaDevSecondaryPrivateToAll_US" {
  provider = aws.usEast
  subnet_id      = "${aws_subnet.LLamaDevSecondaryPrivateSubnet_US.id}"
  route_table_id = "${aws_route_table.LLamaDevMain_US.id}"
}

#DMZ Routing Table
resource "aws_route_table" "LLamaDevDMZ_US" {
  provider = aws.usEast
  vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.LLamaDevInternetGateway_US.id}"
    # nat_gateway_id = "${aws_internet_gateway.LLamaDevInternetGateway_US.id}"
  }

  tags = {
    Name = "DMZ"
  }
}
resource "aws_route_table_association" "LLamaDevPrimaryDMZToInternet_US" {
  provider = aws.usEast
  subnet_id      = "${aws_subnet.LLamaDevPrimaryDMZSubnet_US.id}"
  route_table_id = "${aws_route_table.LLamaDevDMZ_US.id}"
}
resource "aws_route_table_association" "LLamaDevSecondaryDMZToInternet_US" {
  provider = aws.usEast
  subnet_id      = "${aws_subnet.LLamaDevSecondaryDMZSubnet_US.id}"
  route_table_id = "${aws_route_table.LLamaDevDMZ_US.id}"
}

resource "aws_default_route_table" "LLamaDevBlackHole_US" {
  provider = aws.usEast
  default_route_table_id = "${aws_vpc.LLamaDevVPC_US.default_route_table_id}"
  tags = {
    Name = "DefaultBlackhole"
  }
}

