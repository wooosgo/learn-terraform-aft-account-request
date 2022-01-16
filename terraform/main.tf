module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "woojun+004_terra@amazon.com"
    AccountName               = "aft-terra"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "woojun+004@amazon.com"
    SSOUserFirstName          = "AWS Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "createdBy" = "Jonas"
  }

  change_management_parameters = {
    change_requested_by = "Jonas"
    change_reason       = "AFT initial deployment"
  }

  custom_fields = {
    group = "aft-mgmt"
  }

  account_customizations_name = "sandbox"
}
