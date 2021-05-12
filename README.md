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
## Requirements

| Name | Version |
|------|---------|
| hsdp | >= 0.15.3 |

## Providers

| Name | Version |
|------|---------|
| hsdp | >= 0.15.3 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [hsdp_iam_group](https://registry.terraform.io/providers/philips-software/hsdp/0.15.3/docs/resources/iam_group) |
| [hsdp_iam_org](https://registry.terraform.io/providers/philips-software/hsdp/0.15.3/docs/data-sources/iam_org) |
| [hsdp_iam_role](https://registry.terraform.io/providers/philips-software/hsdp/0.15.3/docs/resources/iam_role) |
| [hsdp_iam_user](https://registry.terraform.io/providers/philips-software/hsdp/0.15.3/docs/data-sources/iam_user) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| iam\_org\_id | IAM organization (GUID) you want to onboard to Notification services | `string` | n/a | yes |
| producer\_admin\_service\_ids | List of producer admin service IDs | `list(string)` | `[]` | no |
| producer\_admins | List of producer admins | `list(string)` | `[]` | no |
| publisher\_admins | List of publisher admins | `list(string)` | `[]` | no |
| publisher\_service\_ids | List of publisher service IDS | `list(string)` | `[]` | no |
| publishers | List of publishers | `list(string)` | `[]` | no |
| subscriber\_admin\_service\_ids | List of subscriber admin service IDS | `list(string)` | `[]` | no |
| subscriber\_admins | List of subscriber admins | `list(string)` | `[]` | no |
| subscriber\_service\_ids | List of subscriber service IDS | `list(string)` | `[]` | no |
| subscribers | List of subscribers | `list(string)` | `[]` | no |

## Outputs

No output.
<!--- END_TF_DOCS --->

# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
