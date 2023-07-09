resource "aws_instance" "my_rhel8" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.vpc_public_subnets
  key_name      = var.aws_key_pair_name
  tags          = var.ec2_tags
  vpc_security_group_ids = [var.security_group-ssh_http_https_allowed] 
}

resource "ansible_host" "my_rhel8" {          #### ansible host details
  name   = aws_instance.my_rhel8.public_dns
  groups = ["ansible_client"]
  variables = {
    ansible_user                 = "ec2-user",
    ansible_ssh_private_key_file = "~/.ssh/id_rsa",
    prefix = var.ec2_tags.Owner
  }
}
