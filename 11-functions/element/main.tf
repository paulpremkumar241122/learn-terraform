variable "fruits" {
  default = ["apple", "banana", "orange"]
}



output "fruits_4" {
  value = element(var.fruits, 4)
}