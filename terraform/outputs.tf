output "instance_id" {
  description = "ID of the DevOps lab EC2 instance."
  value       = aws_instance.devops_server.id
}

output "public_ip" {
  description = "Public IPv4 address of the DevOps lab EC2 instance."
  value       = aws_instance.devops_server.public_ip
}
