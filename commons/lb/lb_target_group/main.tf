

resource "aws_lb_target_group" "this" {
  name        = var.lb_forward_target_group_name
  port        = var.lb_forward_target_group_port
  target_type = var.lb_target_type
  protocol    = var.protocol
  vpc_id      = var.vpc_id


  health_check {
    path                = var.health_check_path
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
    matcher             = var.health_check_matcher
  }

  tags = var.tags
}
