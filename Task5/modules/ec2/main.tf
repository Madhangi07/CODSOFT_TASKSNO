variable "ami_id" {
  default = "ami-0c555d7357b53a493"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "CodSoft-Task5-VM"
}

resource "aws_security_group" "web_sg" {
  name        = "${var.instance_name}-sg"
  description = "Allow HTTP and SSH traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.web_server.id
}