# AWS S3 bucket for static hosting
resource "aws_s3_bucket" "website" {
  bucket = var.website_bucket_name
  acl    = "public-read"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "S3 Webserver"
    Environment = "test"
  }
  policy = file("policy.json")
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
resource "aws_s3_bucket_object" "load" {
  for_each = fileset(path.module, "*.html")
  bucket   = aws_s3_bucket.website.bucket
  key      = each.value
  source   = "${path.module}/${each.value}"
}
output bucket_domain {
  value = aws_s3_bucket.website.bucket_domain_name
}