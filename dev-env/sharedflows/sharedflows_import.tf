resource "apigee_shared_flow" "sharedflow-CORS-Preflow" {
  name = "CORS-Preflow"
  bundle = "/home/apigee/terraformWA/VISA/dev-env/CORS-Preflow.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/dev-env/CORS-Preflow.zip")
}

resource "apigee_shared_flow" "sharedflow-CORS-Postflow" {
  name = "CORS-Postflow"
  bundle = "/home/apigee/terraformWA/VISA/dev-env/CORS-Postflow.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/dev-env/CORS-Postflow.zip")
}

resource "apigee_shared_flow" "sharedflow-Visa-ICL-OAuthV2" {
  name = "Visa-ICL-OAuthV2"
  bundle = "/home/apigee/terraformWA/VISA/dev-env/Visa-ICL-OAuthV2.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/dev-env/Visa-ICL-OAuthV2.zip")
}
