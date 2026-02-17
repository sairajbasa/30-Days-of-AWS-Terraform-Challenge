################## Terraform statefile remote backend setup using S3 ###################
terraform {
  backend "s3" {
    bucket = "terraform-statefile-demo123"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~>6.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_vpc" "main"{
    cidr_block = "10.1.0.0/16"
    tags={
        Name = "my_vpc"
    }
}

# resource "aws_s3_bucket" "mybucket"{
#     bucket = "mybigbucketdemo-12"

# }

# resource "aws_s3_object" "upload"{
#     bucket = aws_s3_bucket.mybucket.bucket
#     key="photoes/virat.jpg"
#     source="./kohli.jpg"
#     content_type = "image/jpg"

# }
