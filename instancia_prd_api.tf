#resource "aws_instance" "prd-api1" {
#    # ami = "ami-0557a15b87f6559cf"
##    ami = var.amis["us-east-1"]
#    instance_type = "t2.micro"
    # key_name = "terraform-aws"
#    key_name = var.key_name
#    tags = {
#        Name = "my_ansible"
#    }
#    vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
#}