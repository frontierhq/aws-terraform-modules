locals {
  db_engines = {
    "mariadb"           = "mdb"
    "mysql"             = "mydb"
    "aurora-mysql"      = "amydb"
    "postgres"          = "pdb"
    "aurora-postgresql" = "apdb"
    "sqlserver-se"      = "msdb"
    "sqlserver-ee"      = "msedb"
  }

  identifier = replace(lower(var.identifier), "/[^a-z1-9]/", "")

  short_regions = {
    "eu-west-1" = "euw1"
    "eu-west-2" = "euw2"
  }
}
