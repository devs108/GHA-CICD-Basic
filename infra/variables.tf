variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "cicdproject"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

