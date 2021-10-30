provider "aws" {
    region     = "us-east-1"
}

resource "aws_instance" "tf_instance_test" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}

resource "aws_security_group" "ssh_connection" {
    name        = var.sg_name
    description = "Enable SSH access via port 22"
    dynamic "ingress" {
        for_each = var.ingress_rules

        content {
            from_port   = var.ingress_from_port
            to_port     = var.ingress_to_port
            protocol    = var.ingress_protocol
            cidr_blocks = var.ingress_cidr_blocks
        }

    }

    egress = [
        {
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
            ipv6_cidr_blocks = ["::/0"]
        }
    ]

    tags = {
        Name = "allow_tls"
    }
}