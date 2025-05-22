output "instance_id" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.webpage.id
}

output "instance_public_ip" {
  description = "Private IPv4 addresses of EC2 instance"
  value       = aws_instance.webpage.public_ip
  
}

output "instance_type" {
  description = "Public IPv4 addresses of EC2 instance"
  value       = aws_instance.webpage.instance_type
  
}

output "instance_state" {
  description = "Public IPv4 addresses of EC2 instance"
  value       = aws_instance.webpage.instance_state 
  
}

output "instance_private_ip" {
  description = "Private IPv4 addresses of EC2 instance"
  value       = aws_instance.webpage.private_ip
  
}
output "subnet_id" {
  description = "Private IPv4 addresses of EC2 instance"
  value       = aws_instance.webpage.subnet_id
  
}

