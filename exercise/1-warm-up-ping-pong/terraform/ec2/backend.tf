terraform {
  backend "s3" {
    bucket = "s3-dev-line"  # Dein S3-Bucket für Terraform-Status
    key    = "ansible-exercise/ec2-aufwärmen"  # Neuer Pfad für den Status
    region = "eu-central-1"
  }
}
