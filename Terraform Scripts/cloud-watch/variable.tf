variable "alarm_name" {
  default = "cloud-watch-alarm"
}

variable "comparison_operator" {
  default = "GreaterThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  default = "2"
}

variable "metric_name" {
  default = "CPUUtilization"
} 

variable "namespace" {
  default = "AWS/EC2"
}

variable "period" {
  default = "120"
}

variable "statistic" {
  default = "Average"
}

variable "threshold" {
  default = "80"
}

variable "alarm_description" {
  default = "This metric monitors ec2 cpu utilization"
}