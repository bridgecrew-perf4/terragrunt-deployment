resource "aws_internet_gateway" "LLamaDevInternetGateway_US" {
  provider = aws.usEast
  vpc_id = aws_vpc.LLamaDevVPC_US.id

  tags = {
    Name = "LLamaDev Internet Gateway"
  }
}
