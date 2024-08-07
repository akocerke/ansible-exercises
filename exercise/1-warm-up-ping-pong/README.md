# Exercise 1 - Aufwärmen

## 1. Erstelle eine Infrastruktur mit 1x VPC und 1x EC2-Instanz

### CHECK ✅
#### EC2

<img src="image.png" alt="ec2" width="400" />

<img src="image-1.png" alt="s3" width="200" />

<img src="image-2.png" alt="ec2-1" width="600" />

#### VPC

<img src="image-3.png" alt="vpc-1" width="600" />

## 2. Trage in die hosts.ini einen passenden Host ein. Ungefähr so:✅
```console
<host-name> ansible_host=<ip-adresse> ansible_user=ubuntu ansible_ssh_private_key_file=<path-to-key>
```

3. Pinge die Instanz an.
```console
ansible -i hosts.ini all -m ping
```
### CHECK ✅

<img src="image-5.png" alt="ec2-pong" width="600" />


<img src="image-4.png" alt="ec2-ping" width="600" />


4. ERFOLG!