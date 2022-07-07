resource "aws_s3_bucket" "buck" {
  bucket = "vaibhaw-demo"
}

resource "aws_s3_bucket_policy" "b" {
  bucket = aws_s3_bucket.buck.id

  policy = jsonencode(
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl"
            ],
      "Resource": "arn:aws:s3:::vaibhaw-demo/*",
    }
  ]
})
}