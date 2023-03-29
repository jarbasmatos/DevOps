/*
resource "aws_instance" "prd1" {
    provider = "aws.us-east-2"
    #ami = "ami-02238ac43d6385ab3"
    ami = var.amis["us-east-2"]
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "prd1"
        Amb = "web-api"
    }
    vpc_security_group_ids = ["${aws_security_group.allow_tls-us-east-2.id}"]
}
*/