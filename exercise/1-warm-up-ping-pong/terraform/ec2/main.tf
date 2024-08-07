provider "aws" {
  region = "eu-central-1"
}

# Datenquelle für bestehende VPC
data "aws_vpc" "existing" {
  id = "vpc-0c3582a71b91ffc85"  # Deine VPC-ID
}

# Datenquelle für bestehende Subnetze
data "aws_subnet" "public_subnet_1a" {
  id = "subnet-0064ad36e16a8767c"
}

# Datenquelle für bestehende Sicherheitsgruppe
data "aws_security_group" "existing" {
  id = "sg-074068e1eae8172fa"
}

# Beispiel EC2-Instanz
resource "aws_instance" "lala" {
  ami           = "ami-013efd7d9f40467af"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.public_subnet_1a.id
  vpc_security_group_ids = [data.aws_security_group.existing.id]
  associate_public_ip_address = true
  key_name      = "meine-ec2"
  tags = {
    Name = "lala"
  }
}

# Output für die öffentliche IP-Adresse der EC2-Instanz
output "ec2_public_ip" {
  value = aws_instance.lala.public_ip
}
