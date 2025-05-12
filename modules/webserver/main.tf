data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami           = "data.aws_ami.amazon_linux.id"
  instance_type = var.instance_type
  tags = {
    Name = "ACME-Web"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
