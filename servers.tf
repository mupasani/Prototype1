//servers.tf
resource "aws_instance" "dev-ec2-instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = aws_key_pair.devkey.id
  security_groups = [aws_security_group.ingress-all-test.id]
  tags = {
    Name = var.ami_name
  }
  subnet_id = aws_subnet.subnet-uno.id
 

}
