variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" { default = "us-east-1" }
variable "website_bucket_name" { default = "mywebsite.com" }
# URL will be: http://<website_bucket-name>-web.s3.us-east-1.amazonaws.com/index.html