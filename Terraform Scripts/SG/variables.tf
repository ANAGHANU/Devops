variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = ""
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "aws-region" {
  default = "ap-south-1a"
}

variable "tag-key" {
  default = "key"
}

