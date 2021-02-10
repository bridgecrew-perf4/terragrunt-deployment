resource "aws_vpc_peering_connection" "LLamaDevVpcPeering_EMEA" {
    provider = aws.euWest
    peer_owner_id = "927623560008"
  peer_vpc_id   = "vpc-0c3cf04be19d9e87d"
  peer_region = "us-east-1"
  vpc_id        = aws_vpc.LLamaDevVPC_EMEA.id
  auto_accept   = false

  tags = {
    Name = "Tooling VPC Connection"
  }
}