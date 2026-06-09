output "public_ip" {
  value = aws_instance.opsvision_server.public_ip
}

output "instance_id" {
  value = aws_instance.opsvision_server.id
}