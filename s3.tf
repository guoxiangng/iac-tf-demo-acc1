resource "aws_s3_bucket" "this" {
  bucket_prefix = "acc1-testdatalake1"

  force_destroy = true
  tags = {
    Name = "acc1-testdatalake1"
  }
}
