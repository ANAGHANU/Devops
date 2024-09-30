variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = ""
}

variable "aws-region" {
  default = "ap-south-1a"
}

variable "tag-key" {
  default = "new-key"

}

variable "vpc_id" {
  default = ""

}

variable "subnet" {
 default = ""
}
