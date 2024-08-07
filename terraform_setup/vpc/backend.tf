terraform {
  backend "s3" {
    bucket = "s3-dev-line" # Hier eigenen Bucket eintragen
    key    = "ansible-exercise/vpc.tfstate"
    region = "eu-central-1"
  }
}
