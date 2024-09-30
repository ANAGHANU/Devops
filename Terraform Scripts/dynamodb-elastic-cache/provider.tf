terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}
provider "aws" {
  alias  = "us-west-1"
  region = "ap-south-1"
}

provider "aws" {
    region = "ap-south-1"
}
