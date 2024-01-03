variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits_count" {
  value = length(var.fruits)
}