provider "aws" {
  region = "eu-central-1"
}

# Datenquelle für bestehende VPC
data "aws_vpc" "existing" {
  id = "vpc-0c3582a71b91ffc85"
}

# Datenquelle für bestehende Subnetze
data "aws_subnet" "private_subnet_1a" {
  id = "subnet-066d4114eea8d2dd0"
}

data "aws_subnet" "private_subnet_1b" {
  id = "subnet-05b993d8ade3c1d25"
}

data "aws_subnet" "private_subnet_1c" {
  id = "subnet-07e8494467a9557a7"
}

data "aws_subnet" "public_subnet_1a" {
  id = "subnet-0064ad36e16a8767c"
}

data "aws_subnet" "public_subnet_1b" {
  id = "subnet-075302863274b5360"
}

data "aws_subnet" "public_subnet_1c" {
  id = "subnet-0196b639fdb630fe6"
}
