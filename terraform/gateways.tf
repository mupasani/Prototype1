//gateways.tf
resource "aws_internet_gateway" "dev-env-gw" {
  vpc_id = aws_vpc.dev-env.id
  tags = {
    Name = "dev-env-gw"
  }
}