module "sample" {
  source = "./ec2"
  name = "sample"
}

module "sample1" {
  source = "./ec2"
  name = "sample1"
}

output "public_ip_sample" {
  value = module.sample.public_ip
}

output "public_ip_sample1" {
  value = module.sample1.public_ip
}