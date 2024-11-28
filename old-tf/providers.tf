
terraform {
  backend "remote" {
    organization = "j3-terraform"

    workspaces {
      name = "terraform-cloud-new"  # Specify your workspace name here
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Adjust based on your project requirements
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


