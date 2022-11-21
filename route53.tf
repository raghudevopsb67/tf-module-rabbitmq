resource "aws_route53_record" "rabbitmq" {
  zone_id = var.private_zone_id
  name    = "rabbitmq-${var.env}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}
