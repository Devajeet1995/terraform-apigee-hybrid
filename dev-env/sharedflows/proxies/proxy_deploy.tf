resource "apigee_proxy_deployment" "Deployment-MerchantAPI" {
  proxy_name =apigee_proxy.MerchantAPI-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.MerchantAPI-Proxy.revision
}

resource "apigee_proxy_deployment" "Deployment-VISADirect-ICL-API" {
  proxy_name =apigee_proxy.VISADirect-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.VISADirect-Proxy.revision
}

resource "apigee_proxy_deployment" "Deployment-JWE-Encrypt-Decrypt" {
  proxy_name =apigee_proxy.JWE-Encrypt-Decrypt-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.JWE-Encrypt-Decrypt-Proxy.revision
}

resource "apigee_proxy_deployment" "Deployment-SET-KVM-Values" {
  proxy_name =apigee_proxy.SET-KVM-Values-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.SET-KVM-Values-Proxy.revision
}

resource "apigee_proxy_deployment" "Deployment-Mock-API" {
  proxy_name =apigee_proxy.Mock-API-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.Mock-API-Proxy.revision
}

resource "apigee_proxy_deployment" "Deployment-oauth" {
  proxy_name = apigee_proxy.oauth-Proxy.name
  environment_name = "test-env"
  revision = apigee_proxy.oauth-Proxy.revision
}
