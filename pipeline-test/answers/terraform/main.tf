data "aws_ami" "rce" {
  most_recent = true

  filter {
    name   = "name"
    values = ["RCE-Amazon-Linux-2-D2022*"]
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  tags = {
    Tier = "Public"
  }
}



resource "aws_instance" "web" {
  ami             = data.aws_ami.rce.id
  instance_type   = "t3.micro"
  subnet_id       = data.aws_subnets.private.ids[0]
  security_groups = [aws_security_group.http.id]

  user_data = "./root/ami/init.sh"

  tags = {
    Name = "web"
  }
}

resource "aws_security_group" "http" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "web_http"
  }
}
