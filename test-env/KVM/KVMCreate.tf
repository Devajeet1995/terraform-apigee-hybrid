resource "apigee_environment_kvm" "KVM-VisaPayoutsKVM" {
  environment_name = "test-env"
  name = "VisaPayoutsKVM"
  encrypted = true
}
resource "apigee_environment_kvm" "KVM-Validation-API-KVM" {
  environment_name = "test-env"
  name = "Validation-API-KVM"
  encrypted = true
}
resource "apigee_environment_kvm" "KVM-Merchant-Credentials" {
  environment_name = "test-env"
  name = "Merchant-Credentials"
  encrypted = true
}
