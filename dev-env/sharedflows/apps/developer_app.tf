resource "apigee_product" "ProductVISAPayout" {
  name = "VISA-Payout-API test-env"
  display_name = "VISA-Payout-API test-env"
  auto_approval_type = true
  description = "App created through terraform"
  environments = [
    "test-env"
  ]
  proxies = [
   "VISADirect-ICL-API",
   "MerchantAPI",
   "JWE-Encrypt-Decrypt"
  ]
  scopes = [
    "openid",
    "profile"
  ]
  attributes = {
    access = "public"
  }
}
resource "apigee_developer" "MyDeveloper" {
  email = "devajeet.bharali@neosalpha.com"
  first_name = "Devajeet"
  last_name = "Bharali"
  user_name = "devajeet.bharali@neosalpha.com"
}
resource "apigee_developer_app" "APPVISADirect" {
  developer_email = apigee_developer.MyDeveloper.email
  name = "VISADirect-test-env-app"
  callback_url = "hello.com"
  attributes = {
    IS-PLATFORM = "false"
  }
}
resource "apigee_developer_app_credential" "example" {
  developer_email = apigee_developer.MyDeveloper.email
  developer_app_name = apigee_developer_app.APPVISADirect.name
  consumer_key = "f4b9ybMvDzfZpMQcCozhzEhKEmOtXclw"
  consumer_secret = "GtcBhqM1oKBCIJAA"
  api_products = [
    apigee_product.ProductVISAPayout.name
  ]
  scopes = [
    "openid"
  ]
}
