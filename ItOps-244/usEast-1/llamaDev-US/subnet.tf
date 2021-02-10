resource "aws_subnet" "LLamaDevPrimaryPrivateSubnet_US" {
    provider = aws.usEast
    availability_zone = var.az.us.primary
    vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"
    cidr_block = "10.225.0.0/23"
    tags = {
        Name: "Primary Private"
    }
}
resource "aws_subnet" "LLamaDevPrimaryDMZSubnet_US" {
    provider = aws.usEast
    availability_zone = var.az.us.primary
    vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"
    cidr_block = "10.225.4.0/24"
    tags = {
        Name: "Primary DMZ"
    }
}
resource "aws_subnet" "LLamaDevSecondaryPrivateSubnet_US" {
    provider = aws.usEast
    availability_zone = var.az.us.secondary
    vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"
    cidr_block = "10.225.2.0/23"
    tags = {
        Name: "Secondary Private"
    }
}
resource "aws_subnet" "LLamaDevSecondaryDMZSubnet_US" {
    provider = aws.usEast
    availability_zone = var.az.us.secondary
    vpc_id = "${aws_vpc.LLamaDevVPC_US.id}"
    cidr_block = "10.225.5.0/24"
    tags = {
        Name: "Secondary DMZ"
    }
}
