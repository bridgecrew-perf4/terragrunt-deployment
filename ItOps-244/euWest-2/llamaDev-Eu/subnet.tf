resource "aws_subnet" "LLamaDevPrimaryPrivateSubnet_EMEA" {
    provider = aws.euWest
    availability_zone = var.az.eu.primary
    vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"
    cidr_block = "10.225.8.0/23"
    tags = {
        Name: "Primary Private"
    }
}

resource "aws_subnet" "LLamaDevSecondaryPrivateSubnet_EMEA" {
    provider = aws.euWest
    availability_zone = var.az.eu.secondary
    vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"
    cidr_block = "10.225.10.0/23"
    tags = {
        Name: "Secondary Private"
    }
}

resource "aws_subnet" "LLamaDevPrimaryDMZSubnet_EMEA" {
    provider = aws.euWest
    availability_zone = var.az.eu.primary
    vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"
    cidr_block = "10.225.12.0/24"
    tags = {
        Name: "Primary DMZ"
    }
}

resource "aws_subnet" "LLamaDevSecondaryDMZSubnet_EMEA" {
    provider = aws.euWest
    availability_zone = var.az.eu.secondary
    vpc_id = "${aws_vpc.LLamaDevVPC_EMEA.id}"
    cidr_block = "10.225.13.0/24"
    tags = {
        Name: "Secondary DMZ"
    }
}
