output "instance" {
    value = aws_instance.tf_instance_test.*.public_ip
}