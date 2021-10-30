variable "ami_id" {
    default = "ami-0cb5016c1d61b38b4"
    description = "id de la AMI"
}

variable "instance_type" {
    default = "t2.micro"
    description = "Tipo de instancia"
}

variable "tags" {
    type = map
}

variable "sg_name" {
    default = "sg_name"
    description = "Nombre del Security Group"  
}

variable "ingress_rules" {
  
}