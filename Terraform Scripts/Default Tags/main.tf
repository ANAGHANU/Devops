resource "aws_instance" "ec2" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"  
}

resource "aws_s3_bucket" "s3" {
  bucket = "default-tag-test-bucket"

}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

}