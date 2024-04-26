variable "sentinel_token" {
  type        = string
  default     = "changeme"
  description = "SentinelOne registration token"
}

variable "sentinel_apikey" {
  type        = string
  default     = "changeme"
  description = "SentinelOne api key"
}

variable "subscription_id" {
  type        = string
  default     = "changeme"
  description = "SentinelOne azure subscription"
}

variable "tenant_id" {
  type        = string
  default     = "changeme"
  description = "SentinelOne azure tenant id"
}

variable "client_id" {
  type        = string
  default     = "changeme"
  description = "SentinelOne azure client id"
}

variable "client_secret" {
  type        = string
  default     = "changeme"
  description = "SentinelOne azure client secret"
}

variable "resource_group" {
  type        = string
  default     = "changeme"
  description = "resource group of vms to add sentinel one to"
}

variable "vm_names" {
  type        = list(string)
  description = "resource group of vms to add sentinel one to"
}
