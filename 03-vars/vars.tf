variable "sample" {
  default = 241122
}

variable "sample-one" {
  default = "Hello World"
}

# as mentioned in output block it is also used to call the variables.
# the variable will be called as ex: value = var.sample

output "sample" {
  value = var.sample
}

output "sample-one" {
  value = var.sample-one
}

# if variables are with any combination of string in that case the variable has to be in ${ }   ex: as mentioned below

output "sample-ext" {
  value = "value of sample - ${var.sample}"
}