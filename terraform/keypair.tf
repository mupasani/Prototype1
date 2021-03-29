resource "aws_key_pair" "devkey" {
  key_name   = "devkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXygP9xW7vE0oK11J9mJ20v6s2v7s1Nnt2jkS+t/DPw03JeYLfsZsBlLkooEHwN5UAcWsph9Iw9bJl7srR468Zoh7xCvYihSXjcE8WIuB5yiMHz2havfqUoL2waJSaJ0lONzV36Jck70aGBwy4iqOxBYoRF2+wicKbPF3ZUUNeUDX8JIgBGl47hER087vSmAoHjY4JeI6cZCK3LGryZ8bDfha6BzXW9j2gRdNH7WDrhh1a/5o+aITwImRouB1MNKzbRtxN7wZJbC8G3HP7QfIGYb/SS+sQCb0VGlM5VibafiKZyKYGLSETs9ZAybJxt+bU8C68JWCYyn3AipQKpk9H terraform@master-node"
  tags = {
      Name = "devkey"
  }
}