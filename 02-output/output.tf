# this output block is to print a message
# terraform every output block has to be named ex: as mentioned sample,sampleone in output blocks

output "sample" {
  value = "Hello World"
}

# any string in terraform should be quoted in the double quotes only
# single quotes are supported in terraform

output "sampleone" {
  value = 241122
}

# numbers and booleans ( true, false ) do not require any quotes

# NOTE ------------
# this output block is also used to call the variables
# refer 03-vars
