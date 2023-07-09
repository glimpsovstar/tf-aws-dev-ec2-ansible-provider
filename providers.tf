terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    ansible = { 
      source = "ansible/ansible"
      version = "~> 1.1.0"
  }
}
}

provider "aws" {
  region = var.aws_region
}
