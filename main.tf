resource "hsdp_iam_group" "producer_admins" {
  name                  = "PRODUCER_ADMINS_TF"
  roles                 = [hsdp_iam_role.producer_admin.id]
  services              = var.producer_admin_service_ids
  users                 = concat([], data.hsdp_iam_user.producer_admin.*.id)
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_group" "publishers" {
  name                  = "PUBLISHERS_TF"
  roles                 = [hsdp_iam_role.publisher.id]
  users                 = concat([], data.hsdp_iam_user.publisher.*.id)
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_group" "subscriber_admins" {
  name                  = "SUBSCRIBER_ADMINS_TF"
  roles                 = [hsdp_iam_role.subscriber_admin.id]
  users                 = concat([], data.hsdp_iam_user.subscriber_admin.*.id)
  services              = var.subscriber_admin_service_ids
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_group" "subscribers" {
  name                  = "SUBSCRIBERS_TF"
  roles                 = [hsdp_iam_role.subscriber.id]
  users                 = concat([], data.hsdp_iam_user.subscriber.*.id)
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_role" "producer_admin" {
  name = "PRODUCER_ADMIN_TF"
  permissions = [
    "ORGANIZATION.READ",
    "NS_PRODUCER.CREATE",
    "NS_PRODUCER.READ",
    "NS_PRODUCER.DELETE",
    "NS_TOPIC_SCOPE.READ",
    "NS_TOPIC.CREATE",
    "NS_TOPIC.READ",
    "NS_TOPIC.UPDATE",
    "NS_TOPIC.DELETE",
    "NS_SUBSCRIBER.READ",
    "NS_SUBSCRIPTION.READ"
  ]
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_role" "publisher" {
  name = "PUBLISHER_TF"
  permissions = [
    "NS_PUBLISH.CREATE",
    "NS_TOPIC.READ"
  ]
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_role" "subscriber_admin" {
  name = "SUBSCRIBER_ADMIN_TF"
  permissions = [
    "ORGANIZATION.READ",
    "NS_SUBSCRIBER.CREATE",
    "NS_SUBSCRIBER.DELETE",
    "NS_PRODUCER.READ",
    "NS_SUBSCRIPTION.READ"
  ]
  managing_organization = var.iam_org_id
}

resource "hsdp_iam_role" "subscriber" {
  name = "SUBSCRIBER_TF"
  permissions = [
    "NS_SUBSCRIPTION.CREATE",
    "NS_SUBSCRIPTION.READ",
    "NS_SUBSCRIPTION.DELETE",
    "NS_SUBSCRIPTION.CONFIRM",
    "NS_SUBSCRIPTION.SYNC",
    "NS_TOPIC.READ"
  ]
  managing_organization = var.iam_org_id
}
