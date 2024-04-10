resource "aws_db_instance" "main" {
  identifier                   = "${var.zone}-${var.environment}-${local.identifier}-${lookup(local.db_engines, var.engine)}"
  db_name                      = var.db_name
  engine                       = var.engine
  engine_version               = var.engine_version
  instance_class               = var.instance_class
  publicly_accessible          = var.publicly_accessible
  allocated_storage            = var.allocated_storage
  storage_type                 = var.storage_type
  storage_encrypted            = var.storage_encrypted
  kms_key_id                   = var.kms_key_id
  backup_retention_period      = var.backup_retention_period
  backup_window                = var.backup_window
  delete_automated_backups     = var.delete_automated_backups
  maintenance_window           = var.maintenance_window
  copy_tags_to_snapshot        = var.copy_tags_to_snapshot
  final_snapshot_identifier    = var.final_snapshot_identifier
  skip_final_snapshot          = var.skip_final_snapshot
  db_subnet_group_name         = var.db_subnet_group_name
  vpc_security_group_ids       = var.vpc_security_group_ids
  multi_az                     = var.multi_az
  manage_master_user_password  = var.manage_master_user_password
  username                     = var.username
  password                     = var.manage_master_user_password ? null : var.password
  apply_immediately            = var.apply_immediately
  monitoring_interval          = var.monitoring_interval
  monitoring_role_arn          = var.monitoring_role_arn
  performance_insights_enabled = var.performance_insights_enabled

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${local.identifier}-${lookup(local.db_engines, var.engine)}-rds"
    },
    var.tags
  )
}
