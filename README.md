# AWS Cloud and Database Reliability Engineering Lab

This repository demonstrates the implementation of a managed database environment (RDS) using Infrastructure as Code (IaC) and Python automation for data resilience and observability.

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

---

## Tech Stack
* **Terraform**: For declarative infrastructure provisioning.
* **Python (Boto3)**: For operational automation (Backups/Snapshots).
* **AWS RDS (MySQL)**: Scalable relational database management.
* **AWS CloudWatch**: Performance monitoring and alerting.

## What was achieved
* **Automated Provisioning**: Created an RDS MySQL instance via Terraform with strict naming conventions.
* **Observability and Monitoring**: Configured a CloudWatch Alarm for CPU Utilization (80% threshold).
* **Security Best Practices**: 
    * Implementation of .gitignore to protect sensitive state files.
    * Use of sensitive variables for database credentials.
* **Database Reliability (DBRE Task)**: Developed a Python script using boto3 to trigger manual snapshots for Disaster Recovery.

## How to Replicate

### 1. Clone the repository
```bash
git clone [https://github.com/YOUR-USERNAME/aws-rds-terraform-python-lab.git](https://github.com/YOUR-USERNAME/aws-rds-terraform-python-lab.git)
cd aws-rds-terraform-python-lab
2. Configure AWS CLI
Bash

aws configure
3. Deploy Infrastructure
Bash

terraform init
terraform apply
4. Run the Backup Script
Bash

python backup_rds.py
Cleanup
To avoid unnecessary AWS costs, destroy the infrastructure after testing:

Bash

terraform destroy
Note: Manual snapshots must be deleted manually via the AWS Management Console.


---

### Final Steps to Update GitHub:
After you save this into your file, run these three lines in your **Git Bash** to finish:

```bash
git add README.md
git commit -m "docs: finalize professional readme"
git push origin main