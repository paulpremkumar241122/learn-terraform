variable "class" {
  default = "devops"
}

## To print the same in capital letters

output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits_count" {
  value = length(var.fruits)
}

variable "classes" {
  default = {
    devops = {
      name   = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}

output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null), "topics", "m levu laavada")
}


output "fruits_0" {
  value = var.fruits[0]
}