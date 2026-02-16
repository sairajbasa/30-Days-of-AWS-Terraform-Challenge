terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }

}

provider "aws" {
  region = "ap-south-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
}

resource "aws_vpc" "my_vpc" {
    cidr_block = "172.168.0.0/16"
    tags ={
        Name = "test_vpc"
    }
}
