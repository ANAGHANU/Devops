variable "ami-id" {
  default     = ""
}

variable "aws-region" {
  default = "ap-south-1a"
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zone" {
  default = "ap-south-1a"
}

variable "size" {
  type = number
  default = 40
}

variable "security_groups" {
  default = ["",""]
}
