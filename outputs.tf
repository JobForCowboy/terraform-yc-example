# Outputs

output "boot_disk_ids" {
  description = "The IDs of the boot disks created for the instances."
  value = {
    for disk in yandex_compute_disk.boot_disk :
    disk.name => disk.id...
  }
}

output "instance_ids" {
  description = "The IDs of the Yandex Compute instances."
  value = {
    for instance in yandex_compute_instance.this :
    instance.name => instance.id...
  }
}

output "instance_public_ip_addresses" {
  description = "The external IP addresses of the instances."
  value       = {}
}

output "subnet_ids" {
  description = "The IDs of the VPC subnets used by the Yandex Compute instances."
  value = {
    for cidr_block, subnet_info in module.net.public_subnets :
    subnet_info.name => subnet_info.subnet_id
  }
}

output "ydb_id" {
  description = "The ID of the Yandex Managed Service for YDB instance."
  value       = yandex_ydb_database_serverless.this.id
}

output "bucket_name" {
  description = "The name of the Yandex Object Storage bucket."
  value       = module.s3.bucket_name
}

output "vpc_id" {
  description = "ID of the created VPC network"
  value       = module.net.vpc_id
}
