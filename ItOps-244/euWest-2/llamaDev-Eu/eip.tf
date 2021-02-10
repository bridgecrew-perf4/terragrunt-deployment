resource "aws_eip" "LLamaDevEIP_EMEA" {
    provider = aws.euWest
  vpc      = true
}