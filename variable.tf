variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" { default = "us-east-1" }
variable "website_bucket_name" { default = "mywebsite.com" }
#Please replace mywebsite.com to desired name in above variable so that URL will be:
#http://<website_bucket-name>.s3-website-us-east-1.amazonaws.com/index.html
