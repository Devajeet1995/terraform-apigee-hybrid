resource "apigee_shared_flow_deployment" "deploy_shared_flow-CORS-Preflow" {
  shared_flow_name = apigee_shared_flow.sharedflow-CORS-Preflow.name
  environment_name = "dev-env"
  revision = apigee_shared_flow.sharedflow-CORS-Preflow.revision
}

resource "apigee_shared_flow_deployment" "deploy_shared_flow-CORS-Postflow" {
  shared_flow_name = apigee_shared_flow.sharedflow-CORS-Postflow.name
  environment_name = "dev-env"
  revision = apigee_shared_flow.sharedflow-CORS-Postflow.revision
}

resource "apigee_shared_flow_deployment" "deploy_shared_flow-Visa-ICL-OAuthV2" {
  shared_flow_name = apigee_shared_flow.sharedflow-Visa-ICL-OAuthV2.name
  environment_name = "dev-env"
  revision = apigee_shared_flow.sharedflow-Visa-ICL-OAuthV2.revision
}
