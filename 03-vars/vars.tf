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

# Variable Data Types
# 1. string
# 2. number
# 3. boolean

# as we have learned in Ansible the variable types are
# in Ansible --- 1. Plain key, value, 2. list, 3. Map/Dict

# now in terraform
# 1. Plain
# 2. List
# 3. Map

### Plain
variable "course" {
  default = "DevOps Training"
}


### List
variable "cyllabus" {
  default = [
    "DevOps",
    "Linux",
    "AWS",
    "Ansible",
    "Terraform"
  ]
}

### Map
variable "course_details" {
  default = {
    DevOps = {
      course = "DevOps"
      time = "10am"
      duration = 90
    }
    AWS = {
      course = "AWS"
      time = "11am"
      duration = 30
    }
  }
}

# now calling the variables with output block

### Plain
output "course" {
  value = var.course
}

### List
output "cyllabus" {
  value = var.cyllabus[2]
}

### Map
output "course_details" {
  value = var.course_details["DevOps"]
}

# NOTE
# we can also simply call the variable like
