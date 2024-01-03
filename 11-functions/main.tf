variable "class" {
  default = "devops"
}

## To print the same in capital letters

output "class" {
  value = upper(var.class)
}
