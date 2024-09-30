resource "aws_wafv2_web_acl" "acl1" {
  name        = "WAF"
  description = "Setting up WAF"
  scope       = "REGIONAL"
  default_action {
    allow {}
  }

  rule {
    name     = "BlockChina"
    priority = 0
    action {
      block {}
    }

    statement {
      and_statement {
        statement {
          geo_match_statement {
            country_codes = [var.county]
          }
        }
        statement {
          not_statement {
            statement {
              regex_pattern_set_reference_statement {
                arn = aws_wafv2_regex_pattern_set.regex_pattern.arn
                field_to_match {
                  uri_path {}
                }
                text_transformation {
                  priority = 0
                  type     = "NONE"
                }
              }
            }
          }
        }
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "BlockChina-metric"
      sampled_requests_enabled   = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "WAF-metric"
    sampled_requests_enabled   = true
  }



  rule {
    name     = "IP"
    priority = 1

    statement {
      ip_set_reference_statement {
        arn = aws_wafv2_ip_set.set.arn
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "IP-metric"
      sampled_requests_enabled   = true
    }

    action {
      allow {}
    }
  }
}


resource "aws_wafv2_regex_pattern_set" "regex_pattern" {
  name        = "RegexPattern"
  scope       = "REGIONAL"
  regular_expression {
    regex_string = var.regex
  }
}

resource "aws_wafv2_ip_set" "set" {
  name        = "WAFIPSet"
  description = "To allow ip"
  scope       = "REGIONAL"

  ip_address_version = "IPV4"
  addresses          = var.address
}
