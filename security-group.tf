
resource "aws_security_group" "allow_tls_ansible" {
  name        = "acesso-ssh-ansible"
  description = "Allow TLS inbound traffic"
  
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
   # cidr_blocks      = ["181.221.221.9/32"]
    cidr_blocks      = var.cdirs_acesso_remoto
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

    tags = {
    Name = "my_ansible"
  }
}
