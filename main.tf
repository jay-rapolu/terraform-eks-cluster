resource "aws_instance" "this" {
  ami           = data.aws_ami.rhel.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    Name = "HelloWorld"
  }
}

resource "null_resource" "remoteprovision" {
  provisioner "remote-exec" {
    scripts = [
        "docker-install.sh",
        "eks-install.sh",
        "kube-install.sh"
    ]

    connection {
      type     = "ssh"
      host     = aws_instance.this.public_ip
      user     = "ec2-user"
      password = "DevOps321"
      timeout  = "300s"
    }
  }
}