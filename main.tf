provider "aws" {
    region     = "us-east-1"
}

resource "aws_security_group" "ssh_connection" {
    name        = var.sg_name
    description = "Enable SSH access via port 22, 80"
    
    dynamic "ingress" {
        for_each = var.ingress_rules

        content {
            from_port   = ingress.value.from_port
            to_port     = ingress.value.to_port
            protocol    = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
        }

    }

    egress = [
        {
            description      = "for all outgoing traffics"
            from_port        = 0
            to_port          = 0
            protocol         = "-1"
            cidr_blocks      = ["0.0.0.0/0"]
            ipv6_cidr_blocks = ["::/0"]
            prefix_list_ids = []
            security_groups = []
            self = false
        }
    ]

    tags = {
        Name = "allow_tls"
    }
}

resource "aws_instance" "tf_instance_test" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    security_groups = ["${aws_security_group.ssh_connection.name}"]
}