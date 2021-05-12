data "hsdp_iam_org" "org" {
  organization_id = var.iam_org_id
}

data "hsdp_iam_user" "producer_admin" {
  depends_on = [var.producer_admins]
  count      = length(var.producer_admins)
  username   = var.producer_admins[count.index]
}

data "hsdp_iam_user" "publisher" {
  depends_on = [var.publishers]
  count      = length(var.publishers)
  username   = var.publishers[count.index]
}

data "hsdp_iam_user" "subscriber_admin" {
  depends_on = [var.subscriber_admins]
  count      = length(var.subscriber_admins)
  username   = var.subscriber_admins[count.index]
}

data "hsdp_iam_user" "subscriber" {
  depends_on = [var.subscribers]
  count      = length(var.subscribers)
  username   = var.subscribers[count.index]
}
