variable "ports" {
    type = list(number)
    default = [80, 443,8081,9600,9800,9900]
}

resource "aws_security_group" "SG" {
    name        = "firewall"
    description = "my security group"

    dynamic "ingress" {
        for_each = var.ports
        content {
            from_port   = ingress.value
            to_port     = ingress.value
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}