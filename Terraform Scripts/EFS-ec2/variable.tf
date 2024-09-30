variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami"
}

variable "availability_zones" {
  default = "ap-south-1a"
}

variable "security_groups" {
  type    = string
  default = "sg"
}

variable "subnet_id" {
  type    = string
  default = "subnet"
}
