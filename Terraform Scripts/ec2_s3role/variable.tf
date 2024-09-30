variable "ami-id" {
  default     = ""
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "aws-region" {
  default = "ap-south-1"
}
