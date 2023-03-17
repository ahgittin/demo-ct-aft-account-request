module "aft_demo_sample_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "demo-aft-aft_demo_sample_01@alex.heneveld.org"
    AccountName  = "aft_demo_sample_01"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "Sandbox (ou-96js-q8wf2g6k)"
    SSOUserEmail     = "demo-aft-aft_demo_sample_01@alex.heneveld.org"
    SSOUserFirstName = "Alex"
    SSOUserLastName  = "Heneveld"
  }

  account_tags = {
    "ABC:Owner"       = "demo-aft-aft_demo_sample_01@alex.heneveld.org"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Alex Heneveld"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations-alex"
}
