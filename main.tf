provider "aws" {
    region     = "us-east-1"
}

resource "aws_instance" "tf_instance_test" {
    ami           = "ami-0cb5016c1d61b38b4"
    instance_type = "t2.micro"
    tags = {
        Name = "tf-practica"
        Enviroment = "dev"
    }
}