provider "aws" {
    region     = "us-east-1"
}

module "app-terraform-test" {
    source = "./modules/instances/"
    ami_id = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    sg_name = var.sg_name
    ingress_rules = var.ingress_rules
    bucket_name = var.bucket_name
    acl = var.acl
}