variable "region" {
  description = "A map of AWS regions."
  type        = map
  default     = {
    "ireland" = "eu-west-1"
    "london"  = "eu-west-2"
    "paris"   = "eu-west-3"
  }
}
