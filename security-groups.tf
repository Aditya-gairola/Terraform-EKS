resource "aws_security_group" "all_worker_mgt" {
  name_prefix = "all_worker_mgt"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "all_worker_mgt_ingress" {
  description       = "allow inbound traffic from eks"
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
  security_group_id = aws_security_group.all_worker_mgt.id
  type              = "ingress"
  cidr_blocks = [
    "10.0.0.0/18",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]
}

resource "aws_security_group_rule" "all_worker_mgt_egress" {
  description       = "allow outbound traffic to eks"
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.all_worker_mgt.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}
