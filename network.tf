resource "aws_vpc" "dev-env" {

  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
     Name = "VPC-DEV"
     type = "dev-env"
     purpose = "learning"
  }
}
resource "aws_eip" "ip-dev-env" {
  instance = aws_instance.dev-ec2-instance.id
  vpc      = true
}