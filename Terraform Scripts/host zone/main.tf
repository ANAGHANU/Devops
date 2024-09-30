resource "aws_route53_zone" "product" {
  name = "product.com"

  tags = {
    Environment = "product"
  }
}