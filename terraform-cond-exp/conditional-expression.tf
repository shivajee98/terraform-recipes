variable "environment" {
  default = "development"
}

variable "region" {
  default = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-020cba7c55df1f615"
    instance_type = var.environment == "development" && var.region == "ap-south-1" ? "t2.micro" : "m5.large"
}