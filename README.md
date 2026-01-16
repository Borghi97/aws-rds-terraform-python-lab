AWS Cloud & Database Reliability Engineering Lab 
This repository demonstrates the implementation of a managed database environment (RDS) using Infrastructure as Code (IaC) and Python automation for data resilience and observability.

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

     Tech Stack
Terraform: For declarative infrastructure provisioning.

Python (Boto3): For operational automation (Backups/Snapshots).

AWS RDS (MySQL): Scalable relational database management.

AWS CloudWatch: Performance monitoring and alerting.

     What was achieved?
Automated Provisioning: Created an RDS MySQL instance via Terraform with strict naming conventions and standardized configurations.

Observability & Monitoring: Configured a CloudWatch Alarm to monitor CPU Utilization. If the load exceeds 80% for two consecutive periods, an alert state is triggered.

Security Best Practices:

Implementation of .gitignore to prevent sensitive files (.tfstate) from being exposed.

Use of sensitive variables for database credentials.

Database Reliability (DBRE Task): Developed a Python script using the boto3 library to trigger manual snapshots, ensuring a robust Disaster Recovery (DR) strategy.

     How to Replicate
Clone the repo:

Bash

git clone https://github.com/YOUR-USERNAME/aws-rds-terraform-python-lab.git
cd aws-rds-terraform-python-lab
Configure AWS CLI: Ensure your credentials are set up.

Bash

aws configure
Deploy Infrastructure:

Bash

terraform init
terraform apply
Run the Backup Script:

Bash

python backup_rds.py
     Cleanup
To avoid unnecessary AWS costs, destroy the infrastructure after testing:

Bash

terraform destroy