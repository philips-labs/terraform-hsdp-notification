<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# HSDP Notification onboarding module
This module creates all necessary IAM groups and roles to support successful onboarding onto the HSDP Notification services. Example usage:

```hcl
module "notification" {
  source = "philips-labs/notification/hsdp"

  iam_org_id = var.iam_org_id
  
  producer_admins = ["bosmang"]
  producer_admin_service_ids = []
  subscriber_admins = ["bosmang"]
  subscriber_admin_service_ids = []
  
  publishers = ["bosmang"]
  publisher_service_ids = []
 
  subscribers = ["bosmang"]
  subscriber_service_ids = []
}
```
<!--- BEGIN_TF_DOCS --->

<!--- END_TF_DOCS --->

# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
