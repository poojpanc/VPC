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
  region = "us-east-1"
  access_key = "AKIAWIS6EPXSVWZW7VHQ"
  secret_key = "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"
}


# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"
  tags = { "Name" = "My_VPC" }
}
