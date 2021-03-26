resource "apigee_proxy" "MerchantAPI-Proxy" {
  name = "MerchantAPI"
  bundle = "/home/apigee/terraformWA/VISA/test-env/MerchantAPI.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/MerchantAPI.zip")
}

resource "apigee_proxy" "VISADirect-Proxy" {
  name = "VISADirect-ICL-API"
  bundle = "/home/apigee/terraformWA/VISA/test-env/VISADirect-ICL-API.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/VISADirect-ICL-API.zip")
}

resource "apigee_proxy" "JWE-Encrypt-Decrypt-Proxy" {
  name = "JWE-Encrypt-Decrypt"
  bundle = "/home/apigee/terraformWA/VISA/test-env/JWE-Encrypt-Decrypt.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/JWE-Encrypt-Decrypt.zip")
}

resource "apigee_proxy" "SET-KVM-Values-Proxy" {
  name = "SET-KVM-Values"
  bundle = "/home/apigee/terraformWA/VISA/test-env/SET-KVM-Values.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/SET-KVM-Values.zip")
}

resource "apigee_proxy" "Mock-API-Proxy" {
  name = "Mock-API"
  bundle = "/home/apigee/terraformWA/VISA/test-env/Mock-API.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/Mock-API.zip")
}

resource "apigee_proxy" "oauth-Proxy" {
  name = "oauth"
  bundle = "/home/apigee/terraformWA/VISA/test-env/oauth.zip"
  bundle_hash = filebase64sha256("/home/apigee/terraformWA/VISA/test-env/oauth.zip")
}
