provider "aws" {
  region  = var.region
}

resource "aws_iam_role_policy" "power_users_policy" {
  name = "power_users_policy"
  role = aws_iam_role.power_users.id

  policy = jsonencode(
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
			 "s3:GetObject",
			"s3:GetBucketAcl"
            ],
            "Resource": "*"
        }
    ]
}
)
}

resource "aws_iam_role" "power_users" {
  name = "power_users"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}