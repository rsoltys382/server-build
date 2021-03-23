output "public_ip" {
    value = { for p in sort(keys(var.servers)) : p => aws_instance.web[p].public_dns }
}

output "public_dns" {
    value = { for p in sort(keys(var.servers)) : p => aws_instance.web[p].public_dns }
}