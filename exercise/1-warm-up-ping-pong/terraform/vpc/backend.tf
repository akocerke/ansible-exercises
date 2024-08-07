terraform {
  backend "s3" {
    bucket = "s3-dev-line"  # Dein S3-Bucket für Terraform-Status
    key    = "ansible-exercise/vpc-aufwärmen" 
    region = "eu-central-1"
  }
}
