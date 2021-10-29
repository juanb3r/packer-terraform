provider "aws" {
    region     = "us-east-1"
}

resource "aws_instance" "tf_instance_test" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}