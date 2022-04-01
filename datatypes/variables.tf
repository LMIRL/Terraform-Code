/*variable "usernumber" {
  type = number
}*/

variable "elb_name" {
  type = string
}

variable "azs" {
  type = list(any)
}

variable "timeout" {
  type = number
}
