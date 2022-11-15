terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region     = "us-east-1"
}
resource "aws_instance" "ec2demo" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
