resource "aws_instance" "ec2provision" {
  subnet_id = "subnet-049f6a290d56fd69d"
  ami = "ami-0e66f5495b4efdd0f"
  instance_type = var.tipo_inst
  key_name = "pk-turma3-roman-dev" # a chave que vc tem na maquina pessoal
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0114208f5b41bfb40"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }
  tags = {
    Name = "${var.nome}-tf",
  }
}
