resource "aws_internet_gateway" "LLamaDevInternetGateway_EMEA" {
  provider = aws.euWest
  vpc_id = aws_vpc.LLamaDevVPC_EMEA.id

  tags = {
    Name = "LLamaDev Internet Gateway"
  }
}
