Arguments needed for proxy create

1. name - (Required, ForceNew, String) The name of the proxy.
2. bundle - (Required, String) The filename of the bundle zip.
3. bundle_hash - (Required, String) The hash of the bundle zip used to detect changes of the contents of the zip.

**********************************************************************************************************************

Arguments needed for proxy deploy

1. proxy_name - (Required, ForceNew, String) The name of the proxy to be deployed.
2. environment_name - (Required, ForceNew, String) The environment to deploy the proxy to.
3. revision - (Required, Integer) The revision of the proxy to deploy. On create, it will assume the proxy has not been deployed in the given environment yet. On update, it will override any current deployment to the given environment.
4. delay - (Optional, Integer) Time interval, in seconds, to wait before undeploying the currently deployed revision. Default: 0. Ignored for calculating diffs.

***********************************************************************************************************************

Arguments needed for shared flow create

1. name - (Required, ForceNew, String) The name of the shared flow.
2. bundle - (Required, String) The filename of the bundle zip.
3. bundle_hash - (Required, String) The hash of the bundle zip used to detect changes of the contents of the zip.

************************************************************************************************************************

Arguments needed for shared flow deployments

1. shared_flow_name - (Required, ForceNew, String) The name of the shared_flow to be deployed.
2. environment_name - (Required, ForceNew, String) The environment to deploy the shared_flow to.
3. revision - (Required, Integer) The revision of the shared_flow to deploy. On create, it will assume the shared_flow has not been deployed in the given environment yet. On update, it will override any current deployment to the given environment.
4. delay - (Optional, Integer) Time interval, in seconds, to wait before undeploying the currently deployed revision. Default: 0. Ignored for calculating diffs.

************************************************************************************************************************

Arguments needed for encrypted KVM create

1. environment_name - (Required, ForceNew, String) The name of an environment
2. name - (Required, ForceNew, String) The name of the kvm
3. encrypted - (Optional, ForceNew, Boolean) Determine whether to encrypt the values within the kvm. Due to Apigee API, encrypted values can NOT be read back, therefore, a change will always be detected even when there may not be one. You can use lifecycle and ignore_changes to avoid this issue.
4. entry - (Optional, Map of String to String) Keys and values to be stored within the kvm when encrypted is false. Values will NOT be hidden from logs.
5. sensitive_entry - (Optional, Map of String to String) Keys and values to be stored within the kvm when encrypted is true. Values WILL be hidden from logs.

***********************************************************************************************************************

Arguments needed for creating product

1. name - (Required, ForceNew, String) The name of product.
2. display_name - (Required, String) The display name of product.
3. auto_approval_type - (Required, Boolean) Flag that specifies how API keys are approved to access the APIs defined by the API product.
4. description - (Optional, String) The description of product.
5. quota - (Optional, Integer) Number of request messages permitted per app by this API product for the specified quota_interval and quota_time_unit.
6. quota_interval - (Optional, Integer) Time interval over which the number of request messages is calculated.
7. quota_time_unit - (Optional, String) Time unit defined for the quota_interval. Allowed values: minute, hour, day, month.
8. api_resources - (Optional, List of String) API resources to be bundled in the API product. You can select a specific path, or you can select all subpaths with a wildcard (/** and /*).
9. environments - (Optional, List of String) Environment names to which the API product is bound.
10. proxies - (Optional, List of String) API proxy names to which this API product is bound.
11. scopes - (Optional, List of String) OAuth scopes that are validated at runtime.
11. attributes - (Optional, Map of String to String) Keys and values to be stored as custom attributes of the product. Use this property to specify the access level of the API product as either public, private, or internal
***********************************************************************************************************************

Arguments needed for creating developer app credentials

1. developer_email - (Required, ForceNew, String) The email address of a developer.
2. developer_app_name - (Required, ForceNew, String) The name of a developer app.
3. consumer_key - (Required, ForceNew, String) The key of credential.
4. consumer_secret - (Required, ForceNew, String) The secret of credential.
5. api_products - (Optional, List of String) The API products to associate this credential with.
6. scopes - (Optional, List of String) The scopes to allow this credential to be used with.
7. attributes - (Optional, Map of String to String) Keys and values to be stored as custom attributes of the credential.

*****************************************************************************************************************************

Arguments needed for creating company app credentials

1. company_name - (Required, ForceNew, String) The name of a company.
2. company_app_name - (Required, ForceNew, String) The name of a company app.
3. consumer_key - (Required, ForceNew, String) The key of credential.
4. consumer_secret - (Required, ForceNew, String) The secret of credential.
5. api_products - (Optional, List of String) The API products to associate this credential with.
6. scopes - (Optional, List of String) The scopes to allow this credential to be used with.
7. attributes - (Optional, Map of String to String) Keys and values to be stored as custom attributes of the credential.

*******************************************************************************************************************************

Arguments needed for creating developer app

1. developer_email - (Required, ForceNew, String) The email address of a developer.
2. name - (Required, ForceNew, String) The name of the app.
3. callback_url - (Optional, String) The callback URL of the app used in OAuth 2.0 authorization code flows.
4. attributes - (Optional, Map of String to String) Keys and values to be stored as custom attributes of the app.

********************************************************************************************************************************

Arguments needed for creating company app

1. company_name - (Required, ForceNew, String) The name of a company.
2. name - (Required, ForceNew, String) The name of the app.
3. callback_url - (Optional, String) The callback URL of the app used in OAuth 2.0 authorization code flows.
4. attributes - (Optional, Map of String to String) Keys and values to be stored as custom attributes of the app.

********************************************************************************************************************************
