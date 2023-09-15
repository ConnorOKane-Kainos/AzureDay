resource "null_resource" "create_azure_ad_group" {
  provisioner "local-exec" {
    command = "./create-azure-ad-group.sh"
  }
}

