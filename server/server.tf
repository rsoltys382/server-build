
resource "aws_instance" "web" {
  for_each               = var.servers
  ami                    = (each.key == "server-iis" ? data.aws_ami.windows.image_id : data.aws_ami.ubuntu.image_id)
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  key_name               = var.key_name

  tags = {
    "Identity"    = var.identity
    "Name"        = each.key
    "Environment" = each.value.environment
  }
}

