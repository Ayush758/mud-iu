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
  #profile = "practice"
  region     = "us-east-1"
  access_key = "AKIAQICOLVC5JKTKBB7E"
secret_key = "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"
}
  
}
resource "aws_instance" "ec2demo" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
