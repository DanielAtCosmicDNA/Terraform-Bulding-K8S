output "instance_msr_public_ip" {
  description = "Public IP address of master"
  value       = aws_instance.ec2_instance_msr[0].public_ip
}

output "instance_msr_privte_ip" {
  description = "Private IP address of master"
  value       = aws_instance.ec2_instance_msr[0].private_ip
}
output "instance_wrk_public_ip" {
  description = "Private IP address of master"
  value       = aws_instance.ec2_instance_wrk[0].public_ip
}
