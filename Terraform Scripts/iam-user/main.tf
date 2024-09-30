provider "aws" {
  region     = "ap-south-1"
  access_key = 
  secret_key = 
}

terraform {
  backend "remote" {
    organization = "eomccain"

    workspaces {
      name = "dev2"
    }
  }

  required_version = ">= 0.14.0"
}

resource "aws_iam_user" "user" {
  name = "dev2" 
}
