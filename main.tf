
//org
# resource "tfe_workspace" "test" {
#   name         = "my-workspace-name"
#   organization = "asad-tech"
#   queue_all_runs       = false
#   auto_apply = true
#   vcs_repo {
#     branch             = "main"
#     identifier         = "asad-tfc/my-first-tfc-wspace"
#     oauth_token_id     = "ot-LNb94E2vdcoSfifj"
#   }
# }

resource "tfe_workspace" "test" {
  name         = var.workspace_name
  organization = var.organization
  queue_all_runs       = false
  auto_apply = true
  vcs_repo {
    branch             = var.branch
    identifier         = var.identifier
    oauth_token_id     = var.oauth_token_id
  }
}


