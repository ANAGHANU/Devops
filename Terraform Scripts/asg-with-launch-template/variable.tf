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

variable "max_size" {
  type = number
  default = "1"
}
variable "min_size" {
  type = number
  default = "1"
}
variable "desired_capacity" {
  type = number
  default = "1"
}
