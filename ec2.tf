provider "aws" {

region = "ap-south-1"
access_key = "AKIA2MXBU3BTA6VHZZXY"
secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "test-bucket-ramana-199598274984"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "web-instance" {
    ami = var.ami_id
    key_name = "webapp"
    count = var.instance_count
    instance_type = var.instance_type
    tags = {
        Name = "Webapp-linux"
        Owner = "ramana"
    }    
}

resource "aws_instance" "test-instance" {
    ami = var.ami_id
    key_name = "webapp"
    count = var.instance_count
    instance_type = var.instance_type
    tags = {
        Name = "test-linux"
        Owner = "ramaneswara"
    }    
}

resource "aws_s3_bucket" "new_bucket" {

 bucket = "new-bucket-ramana-199598274985"

  tags = {
    Name        = "Ramana-new-bucket"
    Environment = "Dev"
  }

}
