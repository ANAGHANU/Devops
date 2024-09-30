variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = ""
}

variable "size" {
  type = number
  default = 40
}

