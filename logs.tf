resource "aws_flow_log" "logs" {
  log_destination      = aws_s3_bucket.s3_logs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
}
resource "aws_s3_bucket" "s3_logs" {
  bucket = "s3-webserver-logs"
}