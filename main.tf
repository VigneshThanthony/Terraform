terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
 
  required_version = ">= 1.2.0"
}
# Configure the AWS provider
provider "aws" {
  region = "ap-south-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-09298640a92b2d12c"
  instance_type = "t2.micro"
  
  tags = {
    Name = "DevOps"
  }
}