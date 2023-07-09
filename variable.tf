variable "aws_region" {
  type =  string
  default = "ap-southeast-2"
}

variable "ami_id" {
  type        = string
  default     = "ami-0808460885ff81045" #RHEL8
  description = "The id of the machine image (AMI) to use for the server."

}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "vpc_public_subnets" {
  type = string
  default = "subnet-05fdfbb99d4786f03"
}

variable "security_group-ssh_http_https_allowed" {
  type = string
  default = "sg-0413d2e87e1c299cb"
}

variable "aws_key_pair_name" {
    type = string
    default = "djoo-demo-ec2-keypair"
}

variable "ec2_tags" {
  description = "Tags for EC2 instance"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "infraDev"
    Owner = "djoo &  Aaron Collaboration!!!"
    name = "dev-rhel-ec2"
    Test_Tag = "123"
  }
}

