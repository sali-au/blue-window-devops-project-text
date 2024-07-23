output "id" {
  value       = gcp_vpc.liontech-stage.id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = gcp_subnet.public.*.id
  description = "List of public subnet IDs"
}

output "private_subnet_ids" {
  value       = gcp_subnet.private.*.id
  description = "List of private subnet IDs"
}

output "cidr_block" {
  value       = var.cidr_block
  description = "The CIDR block associated with the VPC"
}

output "nat_gateway_ips" {
  value       = gcp_eip.nat.*.public_ip
  description = "List of Elastic IPs associated with NAT gateways"
}