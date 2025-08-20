resource "aws_instance" "this" {
  ami           = data.aws_ami.rhel.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    Name = "HelloWorld"
  }
}