output "ec2_global_ips" {
  value = ["${aws_instance.my_rhel8.*.public_ip}"]
}
