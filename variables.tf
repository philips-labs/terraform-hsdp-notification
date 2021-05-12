variable "iam_org_id" {
  description = "IAM organization (GUID) you want to onboard to Notification services"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.iam_org_id))
    error_message = "The iam_org_id value must be a valid GUID."
  }
}

variable "producer_admins" {
  description = "List of producer admins"
  type        = list(string)
  default     = []
}

variable "publisher_admins" {
  description = "List of publisher admins"
  type        = list(string)
  default     = []
}

variable "subscriber_admins" {
  description = "List of subscriber admins"
  type        = list(string)
  default     = []
}

variable "producer_admin_service_ids" {
  description = "List of producer admin service IDs"
  type        = list(string)
  default     = []
}

variable "publishers" {
  description = "List of publishers"
  type        = list(string)
  default     = []
}

variable "subscribers" {
  description = "List of subscribers"
  type        = list(string)
  default     = []
}

variable "publisher_service_ids" {
  description = "List of publisher service IDS"
  type        = list(string)
  default     = []
}

variable "subscriber_admin_service_ids" {
  description = "List of subscriber admin service IDS"
  type        = list(string)
  default     = []
}

variable "subscriber_service_ids" {
  description = "List of subscriber service IDS"
  type        = list(string)
  default     = []
}
