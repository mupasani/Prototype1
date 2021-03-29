//output.tf
output "instance_ips" {
  value = aws_instance.dev-ec2-instance.*.public_ip
}