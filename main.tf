terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }
}

provider "aws"{
    region="ap-south-1"
    #access_key and secret_key i am specified using aws configure
}

##################### Creating S3 Bucket #########################
resource "aws_s3_bucket" "My_first_bucket" {
    bucket = "mybigbucketdemo123"
    tags = {
      Name = "my_bucket"
    }
}