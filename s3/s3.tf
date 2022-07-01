provider "aws" {
  region  = "us-east-1"
}
//bucket creation
resource "aws_s3_bucket" "s3_buck" {
  bucket = "vaibhaw-demo"
  tags ={
      Name = "vaibhaw-demo"
  }
}

//bucket ACL
resource "aws_s3_bucket_acl" "buck_acl" {
  bucket = aws_s3_bucket.s3_buck.id
  acl    = "private"
}


// bucket versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3_buck.id
  versioning_configuration {
    status = "Enabled"
  }
}
/*
//server side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "jenkins" {
  bucket = aws_s3_bucket.jenkins.id
  rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = module.kms_key.key_arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
*/

/*
// Upload an object
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.jenkins.id
  key    = "jenkins.yaml"
  source = "./files/jenkins.yaml"
  source_hash = filemd5("./files/jenkins.yaml")
  kms_key_id = module.kms_key.key_arn
}
*/