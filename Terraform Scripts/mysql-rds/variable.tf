variable "identifier" {
  default = "database-1"
}
variable "allocated_storage" {
  default = 20
}
variable "storage_type" {
 default = "gp2" 
}
variable "engine" {
  default = "MySQL"
}
variable "engine_version" {
  default = "8.0.30"
}
variable "instance_class" {
  default = "db.t2.micro"
}
variable "name" {
  default = "db_name"
}
variable "username" {
 default =  "mahira"
}
variable "password" {
  default = "anagh"
}
variable "parameter_group_name" {
  default = "default.mysql8.0"
}
variable "subnet1" {
  default = ""
}
variable "subnet2" {
  default = ""
}
