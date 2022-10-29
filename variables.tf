variable "instance_type" {

    type = string
    description = "this is instance type"
    default = "t2.micro"

}

variable "instance_count" {

    type = string
    description = "this is instance count"
    default = "1"

}

variable "ami_id" {

    type = string
    description = "this is ami_id"
    default = "ami-0e6329e222e662a52"

}

variable "s3_bucket_name" {

    type = string
    description = "enter the bucket name"
    default = "test-bucket-ramana-199598274983"

}