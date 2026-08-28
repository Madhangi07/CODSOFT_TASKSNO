output "vpc_id" {
  description = "ID of created VPC"
  value       = aws_vpc.main_vpc.id
}

output "s3_bucket_arn" {
  description = "ARN of created S3 Bucket"
  value       = aws_s3_bucket.app_storage.arn
}

output "ec2_instance_id" {
  description = "ID of provisioned Virtual Machine"
  value       = module.compute_instance.instance_id
}