# Developer Studio: GCP GKE Autopilot Cluster Studio
# Terraform configuration definition

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
  region = "us-east-1"
}

# Example VPC configuration resource
resource "aws_vpc" "studio_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "GCP GKE Autopilot Cluster Studio"
    Environment = "Dev"
    Provisioner = "Developer-Studio"
  }
}
