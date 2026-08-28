terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Networking Resource (VPC)
resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "CodSoft-Task5-VPC"
  }
}

# Storage Resource (S3 Bucket)
resource "aws_s3_bucket" "app_storage" {
  bucket        = var.s3_bucket_name
  force_destroy = true

  tags = {
    Name        = "CodSoft Infrastructure Storage"
    Environment = "Dev"
  }
}

# Reusable Module Call for Virtual Machine Deployment
module "compute_instance" {
  source        = "./modules/ec2"
  instance_name = "CodSoft-WebServer-Dev"
  instance_type = "t2.micro"
}