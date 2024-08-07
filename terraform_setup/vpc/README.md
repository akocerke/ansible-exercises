# VPC

Erstellt ein VPC mit 1x Public- und 1x Private-Subnet in jeweils 3 AZs.
Die .tfstate wird in einem Bucket gespeichert. 

# How to configure:
Den Bucket-Namen in der backend.tf selbst eintragen.

```
terraform {
  backend "s3" {
    bucket = "<bucket-name>" # Hier eigenen Bucket eintragen
    key    = "ansible-exercise/vpc.tfstate"
    region = "eu-central-1"
  }
}
```
---
# CHECK ✅

<img src="image.png" alt="vpc" width="400" />

<img src="image-1.png" alt="s3" width="150" />

<img src="image-2.png" alt="vpc2" width="600" />
