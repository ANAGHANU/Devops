variable "ami-id" {
  default     = ""
}

variable "aws-region" {
  default = "ap-south-1"
}


variable "tag-key" {
  type    = string
  default = "key"
}

variable "vpc_id" {
  default = ""
}

variable "security_groups" {
  type    = string
  default = ""
}

variable "subnet1" {
  default = ""
}
variable "subnet2" {
  default = ""
}
