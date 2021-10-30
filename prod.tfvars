ami_id = "ami-0cb5016c1d61b38b4"
instance_type = "t2.large"
tags = {
    "Name": "Production-1",
    "Enviroment": "prod"
}
sg_name = "sg_tf_rules"
ingress_rules = [
    {
        from_port: 22,
        to_port: 22,
        protocol: "tcp",
        cidr_blocks: ["0.0.0.0/0"]
    },
    {
        from_port: 80,
        to_port: 80,
        protocol: "tcp",
        cidr_blocks: ["0.0.0.0/0"]
    },
    {
        from_port: 5000,
        to_port: 5000,
        protocol: "tcp",
        cidr_blocks: ["0.0.0.0/0"]
    }
]