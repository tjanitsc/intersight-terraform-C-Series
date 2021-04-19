resource "intersight_smtp_policy" "smtp_policy" {
  name        = "${var.prefix}_smtp_policy"
  description = "${var.prefix} SMTP Policy"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  enabled      = var.smtp_enabled
  smtp_server  = var.smtp_server_ip
  smtp_port    = var.smtp_port
  min_severity = var.smtp_min_severity

  sender_email = var.smtp_sender_email
  smtp_recipients = [
    var.smtp_receipients_email_1,
    var.smtp_receipients_email_2,
    # var.smtp_receipients_email_3,
    # var.smtp_receipients_email_4
  ]
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
