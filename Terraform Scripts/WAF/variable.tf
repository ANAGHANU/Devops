variable "address" {
  type = list(any)
  default = [
    "18.214.251.51/32",
    "54.157.102.120/32",
    "54.226.57.126/32",
    "54.200.167.2/32",
    "18.232.42.35/32"
  ]
}

variable "regex" {
  default = "/\\/ifw|\\/ajax|\\/graphql/gm"

}

variable "county" {
  default = "CN"
}