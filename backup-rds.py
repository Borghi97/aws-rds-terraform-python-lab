import boto3
from datetime import datetime

# Configurações
REGION = "us-east-1"
DB_INSTANCE_ID = "sre-database-instance" # Terraforms name

def create_rds_snapshot():
    # Initialize RDS client
    client = boto3.client('rds', region_name=REGION)
    
    # Gera um nome único para o backup com a data de hoje
    timestamp = datetime.now().strftime("%Y-%m-%d-%H-%M")
    snapshot_id = f"backup-{DB_INSTANCE_ID}-{timestamp}"
    
    print(f" Snapshot: {snapshot_id}...")
    
    try:
        response = client.create_db_snapshot(
            DBSnapshotIdentifier=snapshot_id,
            DBInstanceIdentifier=DB_INSTANCE_ID
        )
        status = response['DBSnapshot']['Status']
        print(f"Sucess! Snapshop status: {status}")
        print("Verify AWS console in 'Snapshots'.")
    except Exception as e:
        print(f"Error creating snapshot: {e}")

if __name__ == "__main__":
    create_rds_snapshot()