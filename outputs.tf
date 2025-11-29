output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "rds_endpoint" {
  value = aws_db_instance.db.address
}
