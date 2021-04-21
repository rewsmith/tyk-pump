# Generated by: tyk-ci/wf-gen
# Generated on: Wed 21 Apr 13:09:41 UTC 2021

# Generation commands:
# ./pr.zsh -title more tagging -branch releng/install -repos tyk-pump -base releng/install -p
# m4 -E -DxREPO=tyk-pump


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk-pump" {
  value = data.terraform_remote_state.integration.outputs.tyk-pump
  description = "ECR creds for tyk-pump repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
