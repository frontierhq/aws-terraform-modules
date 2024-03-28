resource "aws_instance" "main" {
  ami                         = var.ami
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone
  instance_type               = var.instance_type
  monitoring                  = var.monitoring
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  disable_api_stop            = var.disable_api_stop
  disable_api_termination     = var.disable_api_termination

  dynamic "cpu_options" {
    for_each = tolist(var.cpu_options)
    content {
      core_count       = cpu_options.value.core_count
      threads_per_core = cpu_options.value.threads_per_core
    }
  }

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${var.identifier}-ec2"
    },
  var.tags)
}
