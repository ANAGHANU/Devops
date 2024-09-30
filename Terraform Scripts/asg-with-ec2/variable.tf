variable "ami-id" {
  default     = ""
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zones" {
  default = "ap-south-1"
}

variable "security_groups" {
  type    = string
  default = ""
}

variable "asg_vpc_zone_identifier" {
  default = ["", ""]
}

variable "max_size" {
  default = 5
}

variable "min_size" {
  default = 1
}

variable "desired_capacity" {
  default = 2
}

variable "health_check_grace_period" {
  default = 300
}
 
