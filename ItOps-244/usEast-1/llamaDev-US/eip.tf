resource "aws_eip" "LLamaDevEIP_US" {
    provider = aws.usEast
  vpc      = true
}