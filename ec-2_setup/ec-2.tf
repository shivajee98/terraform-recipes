provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "__name__your__ec2__" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
    tags = {
      Name = "__custome__server__name__"
    }
}