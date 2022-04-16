terraform {
  backend "s3" {
    bucket = "nonprod-group7"                    // Bucket where to SAVE Terraform State
    key    = "nonprod-network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                         // Region where bucket is created
  }
}