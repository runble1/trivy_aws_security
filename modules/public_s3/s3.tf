resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-test-bucket"
  acl    = "public-read" # この設定により、バケットはパブリックに読み取り可能となります。

  tags = {
    Name        = "My test bucket"
    Environment = "Test"
  }
}