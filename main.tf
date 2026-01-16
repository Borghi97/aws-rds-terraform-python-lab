resource "aws_db_instance" "default" {
  allocated_storage    = 10
  identifier = "sre-database-instance"
  apply_immediately    = true
  db_name              = "meu_banco_sre"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro" # Elegível para Free Tier
  username             = "admin"
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = true 
}

resource "aws_cloudwatch_metric_alarm" "cpu_alta" {
  alarm_name          = "high-cpu-utilization-sre-db"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = "60" # 1m
  statistic           = "Average"
  threshold           = "80" # Trigger 80%
  alarm_description   = "This alarm monitors the CPU of the SRE database instance."
  
  dimensions = {
    DBInstanceIdentifier = aws_db_instance.default.id
  }
}