resource "aws_instance" "web" {
  ami                    = data.aws_ami.example.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-035198221e16083de"]

  tags = {
    Name = "Frontend"
  }

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/paulpremkumar241122/roboshop-ansible.git main.yml -e role_name=frontend"
    ]
  }
}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}
