## arquivo com itens separados
/*
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
*/
provider "aws" {
  region  = "us-east-1"
  
}

provider "aws" {
  alias = "us-east-2"  
  region  = "us-east-2"
}
resource "aws_instance" "prd-api1" {
    # ami = "ami-0557a15b87f6559cf"
    ami = var.amis["us-east-1"]
    instance_type = "t2.micro"
    # key_name = "terraform-aws"
    key_name = var.key_name
    tags = {
        Name = "my_ansible"
    }
    vpc_security_group_ids = ["${aws_security_group.allow_tls_ansible.id}"]
}
#resource "aws_instance" "ansmaster-01" {
#    ami = "ami-007855ac798b5175e"
#    instance_type = "t2.micro"
#    key_name = "key-ansible"
#    tags = {
#        Name = "prd1"
#    }
#    vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
#    depends_on = [aws_s3_bucket.prd1]
#}

#resource "aws_instance" "prd2" {
    # ami = "ami-007855ac798b5175e"
 #   ami = var.amis["us-east-1"]
 #   instance_type = "t2.micro"
    # key_name = "terraform-aws"
 #   key_name = var.key_name
 #   tags = {
 #      Name = "prd2"
 #   }
 #   vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
#}

#resource "aws_s3_bucket" "prd1" {
##  bucket = "terraform-aws-s3-bucket"
#  
#  tags = {
#    Name        = "terraform_s3_prd1"
#    Environment = "Dev"
#  }
#}
