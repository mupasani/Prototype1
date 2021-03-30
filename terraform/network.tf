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
resource "aws_eip" "eip_manager" {
  count = var.instance_count
  instance   = element(aws_instance.dev-ec2-instance.*.id,count.index)
  vpc = true
  
  tags = {
    Name = element(var.instance_tags, count.index)
  }
}
