resource "aws_instance" "servers" {
  for_each = { for instance in var.machines : instance.name => instance }

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = each.value.size

  tags = {
    Name = each.key
  }
}
