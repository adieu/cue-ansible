package google

gcp_compute_backend_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_backend_service: {

		// Indicates whether the backend service will be used with internal or external load balancing. A backend service created for one type of load balancing cannot be used with the other. Must be `EXTERNAL` or `INTERNAL_SELF_MANAGED` for a global backend service. Defaults to `EXTERNAL`.
		// Some valid choices include: "EXTERNAL", "INTERNAL_SELF_MANAGED"

		load_balancing_scheme?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value for TTL is one day.
		// When the load balancing scheme is INTERNAL, this field is not used.

		affinity_cookie_ttl_sec?: int

		// Settings for connection draining .

		connection_draining?: {...}

		// If true, enable Cloud CDN for this BackendService.

		enable_cdn?: bool

		// Settings for enabling Cloud Identity Aware Proxy.

		iap?: {...}

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Type of session affinity to use. The default is NONE. Session affinity is not applicable if the protocol is UDP.
		// Some valid choices include: "NONE", "CLIENT_IP", "CLIENT_IP_PORT_PROTO", "CLIENT_IP_PROTO", "GENERATED_COOKIE", "HEADER_FIELD", "HTTP_COOKIE"

		session_affinity?: string

		// The type of credential used.

		auth_kind: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Array of scopes to be used

		scopes?: [...]

		// The security policy associated with this backend service.

		security_policy?: string

		// The set of backends that serve this BackendService.

		backends?: [...]

		// Name of backend port. The same name should appear in the instance groups referenced by this service. Required when the load balancing scheme is EXTERNAL.

		port_name?: string

		// The protocol this BackendService uses to communicate with backends.
		// Possible values are HTTP, HTTPS, HTTP2, TCP, and SSL. The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer types and may result in errors if used with the GA API.
		// Some valid choices include: "HTTP", "HTTPS", "HTTP2", "TCP", "SSL"

		protocol?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is [1, 86400].

		timeout_sec?: int

		// Cloud CDN configuration for this BackendService.

		cdn_policy?: {...}

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource for health checking this BackendService. Currently at most one health check can be specified, and a health check is required.
		// For internal load balancing, a URL to a HealthCheck resource must be specified instead.

		health_checks: [...]
	}
}

gcp_compute_forwarding_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_forwarding_rule: {

		// The networking tier used for configuring this address. This field can take the following values: PREMIUM or STANDARD. If this field is not specified, it is assumed to be PREMIUM.
		// Some valid choices include: "PREMIUM", "STANDARD"

		network_tier?: string

		// Array of scopes to be used

		scopes?: [...]

		// For internal TCP/UDP load balancing (i.e. load balancing scheme is INTERNAL and protocol is TCP/UDP), set this to true to allow packets addressed to any ports to be forwarded to the backends configured with this forwarding rule. Used with backend service. Cannot be set if port or portRange are set.

		all_ports?: bool

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// ipVersion is not a valid field for regional forwarding rules.
		// Some valid choices include: "IPV4", "IPV6"

		ip_version?: string

		// This signifies what the ForwardingRule will be used for and can be EXTERNAL, INTERNAL, or INTERNAL_MANAGED. EXTERNAL is used for Classic Cloud VPN gateways, protocol forwarding to VMs from an external IP address, and HTTP(S), SSL Proxy, TCP Proxy, and Network TCP/UDP load balancers.
		// INTERNAL is used for protocol forwarding to VMs from an internal IP address, and internal TCP/UDP load balancers.
		// INTERNAL_MANAGED is used for internal HTTP(S) load balancers.
		// Some valid choices include: "EXTERNAL", "INTERNAL", "INTERNAL_MANAGED"

		load_balancing_scheme?: string

		// For internal load balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used.
		// This field is only used for INTERNAL load balancing.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network?: {...}

		// Whether the given object should exist in GCP

		state?: string

		// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// This field is used along with the target field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance.
		// Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed to ports in the specified range will be forwarded to target.
		// Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.
		// Some types of forwarding target have constraints on the acceptable ports: * TargetHttpProxy: 80, 8080 * TargetHttpsProxy: 443 * TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetVpnGateway: 500, 4500 .

		port_range?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional prefix to the service name for this Forwarding Rule.
		// If specified, will be the first label of the fully qualified service name.
		// The label must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
		// This field is only used for INTERNAL load balancing.

		service_label?: string

		// The subnetwork that the load balanced IP should belong to for this Forwarding Rule. This field is only used for INTERNAL load balancing.
		// If the network specified is in auto subnet mode, this field is optional. However, if the network is in custom subnet mode, a subnetwork must be specified.
		// This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to "{{ name-of-resource }}"

		subnetwork?: {...}

		// A BackendService to receive the matched traffic. This is used only for INTERNAL load balancing.
		// This field represents a link to a BackendService resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_backend_service task and then set this backend_service field to "{{ name-of-resource }}"

		backend_service?: {...}

		// The IP address that this forwarding rule is serving on behalf of.
		// Addresses are restricted based on the forwarding rule's load balancing scheme (EXTERNAL or INTERNAL) and scope (global or regional).
		// When the load balancing scheme is EXTERNAL, for global forwarding rules, the address must be a global IP, and for regional forwarding rules, the address must live in the same region as the forwarding rule. If this field is empty, an ephemeral IPv4 address from the same scope (global or regional) will be assigned. A regional forwarding rule supports IPv4 only. A global forwarding rule supports either IPv4 or IPv6.
		// When the load balancing scheme is INTERNAL, this can only be an RFC 1918 IP address belonging to the network/subnet configured for the forwarding rule. By default, if this field is empty, an ephemeral internal IP address will be automatically allocated from the IP range of the subnet or network configured for this forwarding rule.
		// An address can be specified either by a literal IP address or a URL reference to an existing Address resource. The following examples are all valid: * 100.1.2.3 * U(https://www.googleapis.com/compute/v1/projects/project/regions/region/addresses/address) * projects/project/regions/region/addresses/address * regions/region/addresses/address * global/addresses/address * address .

		ip_address?: string

		// The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP, AH, SCTP or ICMP.
		// When the load balancing scheme is INTERNAL, only TCP and UDP are valid.
		// Some valid choices include: "TCP", "UDP", "ESP", "AH", "SCTP", "ICMP"

		ip_protocol?: string

		// This field is used along with the backend_service field for internal load balancing.
		// When the load balancing scheme is INTERNAL, a single port or a comma separated list of ports can be configured. Only packets addressed to these ports will be forwarded to the backends configured with this forwarding rule.
		// You may specify a maximum of up to 5 ports.

		ports?: [...]

		// A reference to the region where the regional forwarding rule resides.
		// This field is not applicable to global forwarding rules.

		region: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// This field is only used for EXTERNAL load balancing.
		// A reference to a TargetPool resource to receive the matched traffic.
		// This target must live in the same region as the forwarding rule.
		// The forwarded traffic must be of a type appropriate to the target object.
		// This field represents a link to a TargetPool resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_target_pool task and then set this target field to "{{ name-of-resource }}"

		target?: {...}
	}
}

gcp_compute_http_health_check :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_http_health_check: {

		// The TCP port number for the HTTP health check request.
		// The default value is 80.

		port?: int

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// How often (in seconds) to send a health check. The default value is 5 seconds.

		check_interval_sec?: int

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.

		timeout_sec?: int

		// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.

		unhealthy_threshold?: int

		// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.

		healthy_threshold?: int

		// The value of the host header in the HTTP health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.

		host?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Whether the given object should exist in GCP

		state?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The request path of the HTTP health check request.
		// The default value is /.

		request_path?: string
	}
}

gcp_compute_instance_group_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_group_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A reference to the zone where the instance group resides.

		zone: string
	}
}

gcp_compute_target_https_proxy_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_https_proxy_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_target_ssl_proxy_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_ssl_proxy_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_cloudscheduler_job_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudscheduler_job_info: {

		// Region where the scheduler job resides .

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_https_health_check_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_https_health_check_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_instance_group_manager_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_group_manager_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The zone the managed instance group resides.

		zone: string

		// The type of credential used.

		auth_kind: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_instance_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_template: {

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Name of the resource. The name is 1-63 characters long and complies with RFC1035.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// The instance properties for this instance template.

		properties?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_mlengine_model :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_mlengine_model: {

		// The default version of the model. This version will be used to handle prediction requests that do not specify a version.

		default_version?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The description specified for the model when it was created.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// One or more labels that you can add, to organize your models.

		labels?: {...}

		// The name specified for the model.

		name: string

		// If true, online prediction access logs are sent to StackDriver Logging.

		online_prediction_logging?: bool

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging.

		online_prediction_console_logging?: bool

		// The list of regions where the model is going to be deployed.
		// Currently only one region per model is supported .

		regions?: [...]
	}
}

gcp_resourcemanager_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_resourcemanager_project: {

		// The type of credential used.

		auth_kind: string

		// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter.
		// Trailing hyphens are prohibited.

		id: string

		// The user-assigned display name of the Project. It must be 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.

		name?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The labels associated with this Project.
		// Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.
		// Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
		// No more than 256 labels can be associated with a given resource.
		// Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed .

		labels?: {...}

		// A parent organization.

		parent?: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_global_forwarding_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_global_forwarding_rule: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// This signifies what the GlobalForwardingRule will be used for.
		// The value of INTERNAL_SELF_MANAGED means that this will be used for Internal Global HTTP(S) LB. The value of EXTERNAL means that this will be used for External Global Load Balancing (HTTP(S) LB, External TCP/UDP LB, SSL Proxy) NOTE: Currently global forwarding rules cannot be used for INTERNAL load balancing.
		// Some valid choices include: "EXTERNAL", "INTERNAL_SELF_MANAGED"

		load_balancing_scheme?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// The IP address that this forwarding rule is serving on behalf of.
		// Addresses are restricted based on the forwarding rule's load balancing scheme (EXTERNAL or INTERNAL) and scope (global or regional).
		// When the load balancing scheme is EXTERNAL, for global forwarding rules, the address must be a global IP, and for regional forwarding rules, the address must live in the same region as the forwarding rule. If this field is empty, an ephemeral IPv4 address from the same scope (global or regional) will be assigned. A regional forwarding rule supports IPv4 only. A global forwarding rule supports either IPv4 or IPv6.
		// When the load balancing scheme is INTERNAL, this can only be an RFC 1918 IP address belonging to the network/subnet configured for the forwarding rule. By default, if this field is empty, an ephemeral internal IP address will be automatically allocated from the IP range of the subnet or network configured for this forwarding rule.
		// An address can be specified either by a literal IP address or a URL reference to an existing Address resource. The following examples are all valid: * 100.1.2.3 * U(https://www.googleapis.com/compute/v1/projects/project/regions/region/addresses/address) * projects/project/regions/region/addresses/address * regions/region/addresses/address * global/addresses/address * address .

		ip_address?: string

		// The IP Version that will be used by this global forwarding rule.
		// Valid options are IPV4 or IPV6.
		// Some valid choices include: "IPV4", "IPV6"

		ip_version?: string

		// This field is not used for external load balancing.
		// For INTERNAL_SELF_MANAGED load balancing, this field identifies the network that the load balanced IP should belong to for this global forwarding rule. If this field is not specified, the default network will be used.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network?: {...}

		// This field is used along with the target field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance.
		// Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed to ports in the specified range will be forwarded to target.
		// Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.
		// Some types of forwarding target have constraints on the acceptable ports: * TargetHttpProxy: 80, 8080 * TargetHttpsProxy: 443 * TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetVpnGateway: 500, 4500 .

		port_range?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The URL of the target resource to receive the matched traffic.
		// The forwarded traffic must be of a type appropriate to the target object.
		// For INTERNAL_SELF_MANAGED load balancing, only HTTP and HTTPS targets are valid.

		target: string

		// The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP, AH, SCTP or ICMP. When the load balancing scheme is INTERNAL_SELF_MANAGED, only TCP is valid.
		// Some valid choices include: "TCP", "UDP", "ESP", "AH", "SCTP", "ICMP"

		ip_protocol?: string

		// Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS clients present node metadata. If a match takes place, the relevant routing configuration is made available to those proxies.
		// For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels in the provided metadata.
		// metadataFilters specified here can be overridden by those specified in the UrlMap that this ForwardingRule references.
		// metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.

		metadata_filters?: [...]

		// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_network_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_network_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_url_map_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_url_map_info: {

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_iam_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_iam_role: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the role.

		name: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Human-readable description for the role.

		description?: string

		// Names of permissions this role grants when bound in an IAM policy.

		included_permissions?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The current launch stage of the role.
		// Some valid choices include: "ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"

		stage?: string

		// A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.

		title?: string

		// The type of credential used.

		auth_kind: string
	}
}

gcp_sourcerepo_repository_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sourcerepo_repository_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_global_forwarding_rule_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_global_forwarding_rule_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_region_disk_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_region_disk_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The type of credential used.

		auth_kind: string

		// A reference to the region where the disk resides.

		region: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_dns_managed_zone :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_dns_managed_zone: {

		// Array of scopes to be used

		scopes?: [...]

		// The type of credential used.

		auth_kind: string

		// DNSSEC configuration.

		dnssec_config?: {...}

		// A set of key/value label pairs to assign to this ManagedZone.

		labels?: {...}

		// User assigned name for this resource.
		// Must be unique within the project.

		name: string

		// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.

		private_visibility_config?: {...}

		// The DNS name of this managed zone, for instance "example.com.".

		dns_name: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users will leave this field unset.

		name_server_set?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
		// Must be one of: `public`, `private`.
		// Some valid choices include: "private", "public"

		visibility?: string

		// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.

		description: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_forwarding_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_forwarding_rule: {

		// Name of the Forwarding_Rule.

		forwarding_rule_name: string

		// For global forwarding rules, must be set to 80 or 8080 for TargetHttpProxy, and 443 for TargetHttpsProxy or TargetSslProxy.

		port_range?: string

		// For global forwarding rules, TCP, UDP, ESP, AH, SCTP or ICMP. Default is TCP.

		protocol?: string

		// The region for this forwarding rule. Currently, only 'global' is supported.

		region?: string

		// The state of the Forwarding Rule. 'present' or 'absent'

		state: string

		// Target resource for forwarding rule. For global proxy, this is a Global TargetProxy resource. Required for external load balancing (including Global load balancing)

		target?: string

		// IPv4 or named IP address. Must be of the same scope (regional, global). Reserved addresses can (and probably should) be used for global forwarding rules. You may reserve IPs from the console or via the gce_eip module.

		address?: string
	}
}

gcp_sql_database_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_database_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the Cloud SQL instance. This does not include the project ID.

		instance: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcdns_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcdns_record: {

		// The DNS domain name of the zone (e.g., example.com).
		// One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.
		// If both I(zone) and I(zone_id) are specified, I(zone_id) will be used.

		zone?: string

		// The Google Cloud ID of the zone (e.g., example-com).
		// One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.
		// These usually take the form of domain names with the dots replaced with dashes. A zone ID will never have any dots in it.
		// I(zone_id) can be faster than I(zone) in projects with a large number of zones.
		// If both I(zone) and I(zone_id) are specified, I(zone_id) will be used.

		zone_id?: string

		// The path to the JSON file associated with the service account email.

		credentials_file?: string

		// Whether an attempt to overwrite an existing record should succeed or fail. The behavior of this option depends on I(state).
		// If I(state) is C(present) and I(overwrite) is C(True), this module will replace an existing resource record of the same name with the provided I(record_data). If I(state) is C(present) and I(overwrite) is C(False), this module will fail if there is an existing resource record with the same name and type, but different resource data.
		// If I(state) is C(absent) and I(overwrite) is C(True), this module will remove the given resource record unconditionally. If I(state) is C(absent) and I(overwrite) is C(False), this module will fail if the provided record_data do not match exactly with the existing resource record's record_data.

		overwrite?: bool

		// The fully-qualified domain name of the resource record.

		record: string

		// The record_data to use for the resource record.
		// I(record_data) must be specified if I(state) is C(present) or I(overwrite) is C(True), or the module will fail.
		// Valid record_data vary based on the record's I(type). In addition, resource records that contain a DNS domain name in the value field (e.g., CNAME, PTR, SRV, .etc) MUST include a trailing dot in the value.
		// Individual string record_data for TXT records must be enclosed in double quotes.
		// For resource records that have the same name but different record_data (e.g., multiple A records), they must be defined as multiple list entries in a single record.

		record_data?: string

		// Whether the given resource record should or should not be present.

		state?: string

		// The type of resource record to add.

		type: string

		// The path to the PEM file associated with the service account email.
		// This option is deprecated and may be removed in a future release. Use I(credentials_file) instead.

		pem_file?: string

		// The Google Cloud Platform project ID to use.

		project_id?: string

		// The e-mail address for a service account with access to Google Cloud DNS.

		service_account_email?: string

		// The amount of time in seconds that a resource record will remain cached by a caching resolver.

		ttl?: string
	}
}

gcp_compute_region_disk :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_region_disk: {

		// URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk.

		type?: string

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Encrypts the disk using a customer-supplied encryption key.
		// After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later (e.g. to create a disk snapshot or an image, or to attach the disk to a virtual machine).
		// Customer-supplied encryption keys do not protect access to metadata of the disk.
		// If you do not provide an encryption key when creating the disk, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.

		disk_encryption_key?: {...}

		// Any applicable publicly visible licenses.

		licenses?: [...]

		// Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. Currently supported sizes are 4096 and 16384, other sizes may be added in the future.
		// If an unsupported value is requested, the error message will list the supported values for the caller's project.

		physical_block_size_bytes?: int

		// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.

		source_snapshot_encryption_key?: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// A reference to the region where the disk resides.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk.
		// If you specify this field along with sourceImage or sourceSnapshot, the value of sizeGb must not be less than the size of the sourceImage or the size of the snapshot.

		size_gb?: int

		// Labels to apply to this disk. A list of key->value pairs.

		labels?: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// URLs of the zones where the disk should be replicated to.

		replica_zones: [...]

		// The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
		// This field represents a link to a Snapshot resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_snapshot task and then set this source_snapshot field to "{{ name-of-resource }}"

		source_snapshot?: {...}

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_filestore_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_filestore_instance_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The name of the Filestore zone of the instance.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_cloudbuild_trigger_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudbuild_trigger_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_cloudfunctions_cloud_function :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudfunctions_cloud_function: {

		// Whether the given object should exist in GCP

		state?: string

		// The amount of memory in MB available for a function.

		available_memory_mb?: int

		// The location of this cloud function.

		location: string

		// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The source repository where a function is hosted.

		source_repository?: {...}

		// The name of the function (as defined in source code) that will be executed.
		// Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in source_location.

		entry_point?: string

		// Environment variables that shall be available during function execution.

		environment_variables?: {...}

		// An HTTPS endpoint type of source that can be triggered via URL.

		https_trigger?: {...}

		// A set of key/value label pairs associated with this Cloud Function.

		labels?: {...}

		// The runtime in which the function is going to run. If empty, defaults to Node.js 6.

		runtime?: string

		// The type of credential used.

		auth_kind: string

		// User-provided description of a function.

		description?: string

		// An HTTPS endpoint type of source that can be triggered via URL.

		event_trigger?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The Google Cloud Storage URL, starting with gs://, pointing to the zip archive which contains the function.

		source_archive_url?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The Google Cloud Storage signed URL used for source uploading.

		source_upload_url?: string

		// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.

		timeout?: string

		// Use HTTP to trigger this function.

		trigger_http?: bool
	}
}

gcp_cloudtasks_queue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudtasks_queue: {

		// The queue name.

		name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Rate limits for task dispatches. The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rateLimits, retryConfig, and the queue's state.
		// * System throttling due to 429 (Too Many Requests) or 503 (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.

		rate_limits?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// Settings that determine the retry behavior.

		retry_config?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Overrides for task-level appEngineRouting. These settings apply only to App Engine tasks in this queue .

		app_engine_routing_override?: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The current state of the queue.
		// Some valid choices include: "RUNNING", "PAUSED", "DISABLED"

		status?: string

		// The type of credential used.

		auth_kind: string

		// The location of the queue.

		location: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_runtimeconfig_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_runtimeconfig_config: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// The description to associate with the runtime config.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the runtime config.

		name: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gce_img :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_img: {

		// the name of the image to create or delete

		name: string

		// your GCE project ID

		project_id?: string

		// service account email

		service_account_email?: string

		// desired state of the image

		state?: string

		// timeout for the operation

		timeout?: string

		// the zone of the disk specified by source

		zone?: string

		// an optional description

		description?: string

		// an optional family name

		family?: string

		// path to the pem file associated with the service account email

		pem_file?: string

		// the source disk or the Google Cloud Storage URI to create the image from

		source?: string
	}
}

gce_net :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_net: {

		// path to the pem file associated with the service account email This option is deprecated. Use C(credentials_file).

		pem_file?: string

		// your GCE project ID

		project_id?: string

		// the source IPv4 address range in CIDR notation

		src_range?: string

		// description of subnet to create

		subnet_desc?: string

		// network mode for Google Cloud C(legacy) indicates a network with an IP address range; C(auto) automatically generates subnetworks in different regions; C(custom) uses networks to group subnets of user specified IP address ranges https://cloud.google.com/compute/docs/networking#network_types

		mode?: string

		// name of subnet to create

		subnet_name?: string

		// the protocol:ports to allow (I(tcp:80) or I(tcp:80,443) or I(tcp:80-800;udp:1-25)) this parameter is mandatory when creating or updating a firewall rule

		allowed?: string

		// name of the network

		name?: string

		// the source instance tags for creating a firewall rule

		src_tags?: string

		// desired state of the network or firewall

		state?: string

		// region of subnet to create

		subnet_region?: string

		// the target instance tags for creating a firewall rule

		target_tags?: string

		// path to the JSON file associated with the service account email

		credentials_file?: string

		// name of the firewall rule

		fwname?: string

		// the IPv4 address range in CIDR notation for the network this parameter is not mandatory when you specified existing network in name parameter, but when you create new network, this parameter is mandatory

		ipv4_range?: string

		// service account email

		service_account_email?: string
	}
}

gcp_bigquery_dataset_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_bigquery_dataset_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_https_health_check :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_https_health_check: {

		// The Google Cloud Platform project to use.

		project?: string

		// The request path of the HTTPS health check request.
		// The default value is /.

		request_path?: string

		// How often (in seconds) to send a health check. The default value is 5 seconds.

		check_interval_sec?: int

		// The TCP port number for the HTTPS health check request.
		// The default value is 80.

		port?: int

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Whether the given object should exist in GCP

		state?: string

		// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.

		unhealthy_threshold?: int

		// The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.

		host?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.

		timeout_sec?: int

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.

		healthy_threshold?: int
	}
}

gcp_container_node_pool_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_container_node_pool_info: {

		// The type of credential used.

		auth_kind: string

		// The cluster this node pool belongs to.
		// This field represents a link to a Cluster resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_container_cluster task and then set this cluster field to "{{ name-of-resource }}"

		cluster: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The location where the node pool is deployed.

		location: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_mlengine_version_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_mlengine_version_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The model that this version belongs to.
		// This field represents a link to a Model resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_mlengine_model task and then set this model field to "{{ name-of-resource }}"

		model: {...}
	}
}

gcp_pubsub_subscription :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_pubsub_subscription: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// A reference to a Topic resource.
		// This field represents a link to a Topic resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_pubsub_topic task and then set this topic field to "{{ name-of-resource }}"

		topic: {...}

		// This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis).
		// For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call subscriptions.modifyAckDeadline with the corresponding ackId if using pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes).
		// If this parameter is 0, a default value of 10 seconds is used.
		// For push delivery, this value is also used to set the request timeout for the call to the push endpoint.
		// If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.

		ack_deadline_seconds?: int

		// The type of credential used.

		auth_kind: string

		// A set of key/value label pairs to assign to this Subscription.

		labels?: {...}

		// Indicates whether to retain acknowledged messages. If `true`, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the messageRetentionDuration window.

		retain_acked_messages?: bool

		// How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If retainAckedMessages is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a subscriptions.seek can be done. Defaults to 7 days. Cannot be more than 7 days (`"604800s"`) or less than 10 minutes (`"600s"`).
		// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: `"600.5s"`.

		message_retention_duration?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A policy that specifies the conditions for this subscription's expiration.
		// A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If expirationPolicy is not set, a default policy with ttl of 31 days will be used. If it is set but left empty, the resource never expires. The minimum allowed value for expirationPolicy.ttl is 1 day.

		expiration_policy?: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Whether the given object should exist in GCP

		state?: string

		// Name of the subscription.

		name: string

		// If push delivery is used with this subscription, this field is used to configure it. An empty pushConfig signifies that the subscriber will pull and ack messages using API methods.

		push_config?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_autoscaler_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_autoscaler_info: {

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// URL of the zone where the instance group resides.

		zone: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance: {

		// The metadata key/value pairs to assign to instances that are created from this template. These pairs can consist of custom metadata or predefined keys.

		metadata?: {...}

		// Sets the scheduling options for this instance.

		scheduling?: {...}

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms .

		min_cpu_platform?: string

		// An array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Only one network interface is supported per instance.

		network_interfaces?: [...]

		// Configuration for various parameters related to shielded instances.

		shielded_instance_config?: {...}

		// A reference to the zone where the machine resides.

		zone: string

		// An array of disks that are associated with the instances that are created from this template.

		disks?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The hostname of the instance to be created. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.

		hostname?: string

		// A reference to a machine type which defines VM kind.

		machine_type?: string

		// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported.

		service_accounts?: [...]

		// The status of the instance. One of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, and TERMINATED.
		// As a user, use RUNNING to keep a machine "on" and TERMINATED to turn a machine off .
		// Some valid choices include: "PROVISIONING", "STAGING", "RUNNING", "STOPPING", "SUSPENDING", "SUSPENDED", "TERMINATED"

		status?: string

		// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes.

		can_ip_forward?: bool

		// Whether the resource should be protected against deletion.

		deletion_protection?: bool

		// List of the type and count of accelerator cards attached to the instance .

		guest_accelerators?: [...]

		// Labels to apply to this instance. A list of key->value pairs.

		labels?: {...}

		// A list of tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035.

		tags?: {...}
	}
}

gcp_compute_reservation :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_reservation: {

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource.

		description?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Reservation for instances with specific machine shapes.

		specific_reservation: {...}

		// When set to true, only VMs that target this reservation by name can consume this reservation. Otherwise, it can be consumed by VMs with affinity for any reservation. Defaults to false.

		specific_reservation_required?: bool

		// Whether the given object should exist in GCP

		state?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The zone where the reservation is made.

		zone: string
	}
}

gcp_compute_ssl_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_ssl_policy: {

		// Array of scopes to be used

		scopes?: [...]

		// The type of credential used.

		auth_kind: string

		// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.

		custom_features?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of `TLS_1_0`, `TLS_1_1`, `TLS_1_2`.
		// Some valid choices include: "TLS_1_0", "TLS_1_1", "TLS_1_2"

		min_tls_version?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of `COMPATIBLE`, `MODERN`, `RESTRICTED`, or `CUSTOM`. If using `CUSTOM`, the set of SSL features to enable must be specified in the `customFeatures` field.
		// Some valid choices include: "COMPATIBLE", "MODERN", "RESTRICTED", "CUSTOM"

		profile?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional description of this resource.

		description?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_target_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_instance: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// URL of the zone where the target instance resides.

		zone: string

		// An optional description of this resource.

		description?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// NAT option controlling how IPs are NAT'ed to the instance.
		// Currently only NO_NAT (default value) is supported.
		// Some valid choices include: "NO_NAT"

		nat_policy?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A URL to the virtual machine instance that handles traffic for this target instance. Accepts self-links or the partial paths with format `projects/project/zones/zone/instances/instance' or `zones/zone/instances/instance` .
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance task and then set this instance field to "{{ name-of-resource }}"

		instance: {...}
	}
}

gcp_compute_target_ssl_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_ssl_proxy: {

		// The Google Cloud Platform project to use.

		project?: string

		// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
		// Some valid choices include: "NONE", "PROXY_V1"

		proxy_header?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// A list of SslCertificate resources that are used to authenticate connections between users and the load balancer. Currently, exactly one SSL certificate must be specified.

		ssl_certificates: [...]

		// A reference to the SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
		// This field represents a link to a SslPolicy resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_ssl_policy task and then set this ssl_policy field to "{{ name-of-resource }}"

		ssl_policy?: {...}

		// The type of credential used.

		auth_kind: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// An optional description of this resource.

		description?: string

		// Array of scopes to be used

		scopes?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A reference to the BackendService resource.
		// This field represents a link to a BackendService resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_backend_service task and then set this service field to "{{ name-of-resource }}"

		service: {...}
	}
}

gcp_serviceusage_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_serviceusage_service: {

		// The type of credential used.

		auth_kind: string

		// Indicates if dependent services should also be disabled. Can only be turned on if service is disabled.

		disable_dependent_services?: bool

		// The resource name of the service .

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_bigquery_dataset :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_bigquery_dataset: {

		// An array of objects that define dataset access for one or more entities.

		access?: [...]

		// A descriptive name for the dataset.

		friendly_name?: string

		// The labels associated with this dataset. You can use these to organize and group your datasets .

		labels?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// The default encryption key for all tables in the dataset. Once this property is set, all newly-created partitioned tables in the dataset will have encryption key set to this value, unless table creation request (or query) overrides the key.

		default_encryption_configuration?: {...}

		// The default partition expiration for all partitioned tables in the dataset, in milliseconds.
		// Once this property is set, all newly-created partitioned tables in the dataset will have an `expirationMs` property in the `timePartitioning` settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value.
		// Setting this property overrides the use of `defaultTableExpirationMs` for partitioned tables: only one of `defaultTableExpirationMs` and `defaultPartitionExpirationMs` will be used for any new partitioned table. If you provide an explicit `timePartitioning.expirationMs` when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.

		default_partition_expiration_ms?: int

		// The default lifetime of all tables in the dataset, in milliseconds.
		// The minimum value is 3600000 milliseconds (one hour).
		// Once this property is set, all newly-created tables in the dataset will have an `expirationTime` property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the `expirationTime` for a given table is reached, that table will be deleted automatically.
		// If a table's `expirationTime` is modified or removed before the table expires, or if you provide an explicit `expirationTime` when creating a table, that value takes precedence over the default expiration time indicated by this property.

		default_table_expiration_ms?: int

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The geographic location where the dataset should reside.
		// See [official docs](U(https://cloud.google.com/bigquery/docs/dataset-locations)).
		// There are two types of locations, regional or multi-regional. A regional location is a specific geographic place, such as Tokyo, and a multi-regional location is a large geographic area, such as the United States, that contains at least two geographic places.
		// Possible regional values include: `asia-east1`, `asia-northeast1`, `asia-southeast1`, `australia-southeast1`, `europe-north1`, `europe-west2` and `us-east4`.
		// Possible multi-regional values: `EU` and `US`.
		// The default value is multi-regional location `US`.
		// Changing this forces a new resource to be created.

		location?: string

		// A reference that identifies the dataset.

		dataset_reference: {...}

		// A user-friendly description of the dataset.

		description?: string

		// Dataset name.

		name?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_backend_bucket_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_backend_bucket_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_backend_service_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_backend_service_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string
	}
}

gcp_filestore_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_filestore_instance: {

		// A description of the instance.

		description?: string

		// File system shares on the instance. For this version, only a single file share is supported.

		file_shares: [...]

		// VPC networks to which the instance is connected. For this version, only a single network is supported.

		networks: [...]

		// Array of scopes to be used

		scopes?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The service tier of the instance.
		// Some valid choices include: "TIER_UNSPECIFIED", "STANDARD", "PREMIUM"

		tier: string

		// The name of the Filestore zone of the instance.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Resource labels to represent user-provided metadata.

		labels?: {...}

		// The resource name of the instance.

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_target_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_pool: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of virtual machine instances serving this pool.
		// They must live in zones contained in the same region as this pool.

		instances?: [...]

		// The region where the target pool resides.

		region: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1].
		// backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool.
		// In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
		// This field represents a link to a TargetPool resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_target_pool task and then set this backup_pool field to "{{ name-of-resource }}"

		backup_pool?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// A reference to a HttpHealthCheck resource.
		// A member instance in this pool is considered healthy if and only if the health checks pass. If not specified it means all member instances will be considered healthy at all times.
		// This field represents a link to a HttpHealthCheck resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_http_health_check task and then set this health_check field to "{{ name-of-resource }}"

		health_check?: {...}

		// Session affinity option. Must be one of these values: - NONE: Connections from the same client IP may go to any instance in the pool.
		// - CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy.
		// - CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
		// Some valid choices include: "NONE", "CLIENT_IP", "CLIENT_IP_PROTO"

		session_affinity?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// An optional description of this resource.

		description?: string

		// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1].
		// If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool.
		// In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.

		failover_ratio?: string
	}
}

gcp_healthcheck :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_healthcheck: {

		// A so-far healthy instance will be marked unhealthy after this many consecutive failures.

		unhealthy_threshold?: string

		// Name of the Healthcheck.

		healthcheck_name: string

		// Type of Healthcheck.

		healthcheck_type: string

		// The value of the host header in the health check request. If left empty, the public IP on behalf of which this health check is performed will be used.

		host_header: string

		// Your GCP project ID

		project_id?: string

		// service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)

		service_account_permissions?: string

		// Path to the JSON file associated with the service account email

		credentials_file?: string

		// How often (in seconds) to send a health check.

		check_interval?: string

		// The request path of the HTTPS health check request.

		request_path?: string

		// service account email

		service_account_email?: string

		// How long (in seconds) to wait for a response before claiming failure. It is invalid for timeout to have a greater value than check_interval.

		timeout?: string

		// A so-far unhealthy instance will be marked healthy after this many consecutive successes.

		healthy_threshold?: string

		// The TCP port number for the health check request. The default value is 443 for HTTPS and 80 for HTTP.

		port?: string

		// State of the Healthcheck.

		state: string
	}
}

gcp_cloudscheduler_job :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudscheduler_job: {

		// The name of the job.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// The type of credential used.

		auth_kind: string

		// HTTP target.
		// If the job providers a http_target the cron will send a request to the targeted url .

		http_target?: {...}

		// Pub/Sub target If the job providers a Pub/Sub target the cron will publish a message to the provided topic .

		pubsub_target?: {...}

		// Region where the scheduler job resides .

		region: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Describes the schedule on which the job will be executed.

		schedule?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Specifies the time zone to be used in interpreting schedule.
		// The value of this field must be a time zone name from the tz database.

		time_zone?: string

		// App Engine HTTP target.
		// If the job providers a App Engine HTTP target the cron will send a request to the service instance .

		app_engine_http_target?: {...}

		// A human-readable description for the job. This string must not contain more than 500 characters.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// By default, if a job does not complete successfully, meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings .

		retry_config?: {...}
	}
}

gcp_compute_disk_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_disk_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// A reference to the zone where the disk resides.

		zone: string
	}
}

gcp_compute_firewall :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_firewall: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: U(https://www.googleapis.com/compute/v1/projects/myproject/global/) networks/my-network projects/myproject/global/networks/my-network global/networks/default .
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// If source tags are specified, the firewall will apply only to traffic with source IP that belongs to a tag listed in source tags. Source tags cannot be used to control traffic to an instance's external IP address. Because tags are associated with an instance, not an IP address. One or both of sourceRanges and sourceTags may be set. If both properties are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP that belongs to a tag listed in the sourceTags property. The connection does not need to match both properties for the firewall to apply.

		source_tags?: [...]

		// A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[].
		// targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.

		target_service_accounts?: [...]

		// The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.

		denied?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A list of instance tags indicating sets of instances located in the network that may make network connections as specified in allowed[].
		// If no targetTags are specified, the firewall rule applies to all instances on the specified network.

		target_tags?: [...]

		// The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.

		allowed?: [...]

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Priority for this rule. This is an integer between 0 and 65535, both inclusive. When not specified, the value assumed is 1000. Relative priorities determine precedence of conflicting rules. Lower value of priority implies higher precedence (eg, a rule with priority 0 has higher precedence than a rule with priority 1). DENY rules take precedence over ALLOW rules having equal priority.

		priority?: int

		// Array of scopes to be used

		scopes?: [...]

		// If source service accounts are specified, the firewall will apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both properties for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.

		source_service_accounts?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// If destination ranges are specified, the firewall will apply only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Only IPv4 is supported.

		destination_ranges?: [...]

		// Direction of traffic to which this firewall applies; default is INGRESS. Note: For INGRESS traffic, it is NOT supported to specify destinationRanges; For EGRESS traffic, it is NOT supported to specify sourceRanges OR sourceTags.
		// Some valid choices include: "INGRESS", "EGRESS"

		direction?: string

		// Denotes whether the firewall rule is disabled, i.e not applied to the network it is associated with. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.

		disabled?: bool

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// If source ranges are specified, the firewall will apply only to traffic that has source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both properties are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP that belongs to a tag listed in the sourceTags property. The connection does not need to match both properties for the firewall to apply. Only IPv4 is supported.

		source_ranges?: [...]
	}
}

gcp_compute_health_check_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_health_check_info: {

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_compute_image :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_image: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the image family to which this image belongs. You can create disks by specifying an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.

		family?: string

		// The parameters of the raw disk image.

		raw_disk?: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The source disk to create this image based on.
		// You must provide either this property or the rawDisk.source property but not both to create an image.
		// This field represents a link to a Disk resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_disk task and then set this source_disk field to "{{ name-of-resource }}"

		source_disk?: {...}

		// Size of the image when restored onto a persistent disk (in GB).

		disk_size_gb?: int

		// Encrypts the image using a customer-supplied encryption key.
		// After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image) .

		image_encryption_key?: {...}

		// Any applicable license URI.

		licenses?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// A list of features to enable on the guest operating system.
		// Applicable only for bootable images.

		guest_os_features?: [...]

		// Labels to apply to this Image.

		labels?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The ID value of the disk used to create this image. This value may be used to determine whether the image was taken from the current or a previous instance of a given disk name.

		source_disk_id?: string

		// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.

		source_disk_encryption_key?: {...}

		// The type of the image used to create this disk. The default and only value is RAW .
		// Some valid choices include: "RAW"

		source_type?: string
	}
}

gcp_compute_route_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_route_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_router :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_router: {

		// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// A reference to the network to which this router belongs.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// BGP information specific to this router.

		bgp?: {...}

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// The Google Cloud Platform project to use.

		project?: string

		// Region where the router resides.

		region: string
	}
}

gcp_compute_target_http_proxy_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_http_proxy_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_redis_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_redis_instance_info: {

		// The name of the Redis region of the instance.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_sql_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_user: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The host name from which the user can connect. For insert operations, host defaults to an empty string. For update operations, host is specified as part of the request URL. The host name cannot be updated after insertion.

		host: string

		// The name of the Cloud SQL instance. This does not include the project ID.
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_sql_instance task and then set this instance field to "{{ name-of-resource }}"

		instance: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// The name of the user in the Cloud SQL instance.

		name: string

		// The password for the user.

		password?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_cloudtasks_queue_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudtasks_queue_info: {

		// The location of the queue.

		location: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_spanner_database_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_spanner_database_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The instance to create the database on.
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_spanner_instance task and then set this instance field to "{{ name-of-resource }}"

		instance: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_tpu_node_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_tpu_node_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The GCP location for the TPU.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcpubsub_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcpubsub_info: {

		// Choices are 'topics' or 'subscriptions'

		view: string

		// list is the only valid option.

		state?: string

		// GCP pubsub topic name.  Only the name, not the full path, is required.

		topic?: string
	}
}

gcp_cloudbuild_trigger :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudbuild_trigger: {

		// Contents of the build template. Either a filename or build template must be provided.

		build?: {...}

		// Name of the trigger. Must be unique within the project.

		name?: string

		// Substitutions data for Build resource.

		substitutions?: {...}

		// Template describing the types of source changes to trigger a build.
		// Branch and tag names in trigger templates are interpreted as regular expressions. Any branch or tag change that matches that regular expression will trigger a build.

		trigger_template?: {...}

		// The type of credential used.

		auth_kind: string

		// Whether the trigger is disabled or not. If true, the trigger will never result in a build.

		disabled?: bool

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Path, from the source root, to a file whose contents is used for the template. Either a filename or build template must be provided.

		filename?: string

		// ignoredFiles and includedFiles are file glob matches using http://godoc/pkg/path/filepath#Match extended with support for `**`.
		// If ignoredFiles and changed files are both empty, then they are not used to determine whether or not to trigger a build.
		// If ignoredFiles is not empty, then we ignore any files that match any of the ignored_file globs. If the change has no files that are outside of the ignoredFiles globs, then we do not trigger a build.

		ignored_files?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Human-readable description of the trigger.

		description?: string

		// ignoredFiles and includedFiles are file glob matches using http://godoc/pkg/path/filepath#Match extended with support for `**`.
		// If any of the files altered in the commit pass the ignoredFiles filter and includedFiles is empty, then as far as this filter is concerned, we should trigger the build.
		// If any of the files altered in the commit pass the ignoredFiles filter and includedFiles is not empty, then we make sure that at least one of those files matches a includedFiles glob. If not, then we do not trigger a build.

		included_files?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// The unique identifier for the trigger.

		id?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_pubsub_topic :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_pubsub_topic: {

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. Your project's PubSub service account (`service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com`) must have `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
		// The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*` .

		kms_key_name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A set of key/value label pairs to assign to this Topic.

		labels?: {...}

		// Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.

		message_storage_policy?: {...}

		// Name of the topic.

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_bigquery_table_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_bigquery_table_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Name of the dataset.

		dataset?: string
	}
}

gcp_compute_forwarding_rule_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_forwarding_rule_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A reference to the region where the regional forwarding rule resides.
		// This field is not applicable to global forwarding rules.

		region: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_target_tcp_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_tcp_proxy: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// An optional description of this resource.

		description?: string

		// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
		// Some valid choices include: "NONE", "PROXY_V1"

		proxy_header?: string

		// Array of scopes to be used

		scopes?: [...]

		// A reference to the BackendService resource.
		// This field represents a link to a BackendService resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_backend_service task and then set this service field to "{{ name-of-resource }}"

		service: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_target_vpn_gateway :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_vpn_gateway: {

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The network this VPN gateway is accepting traffic for.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The region this gateway should sit in.

		region: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_pubsub_subscription_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_pubsub_subscription_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_pubsub_topic_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_pubsub_topic_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcpubsub :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcpubsub: {

		// GCP pubsub topic name.
		// Only the name, not the full path, is required.

		topic: string

		// Subfield of subscription. Not required. Default deadline for subscriptions to ACK the message before it is resent. See examples.

		ack_deadline?: string

		// Subfield of subscription. Required if subscription is specified. See examples.

		name?: string

		// List of dictionaries describing messages and attributes to be published.  Dictionary is in message(str):attributes(dict) format. Only message is required.

		publish?: string

		// Subfield of subscription. Not required. If specified, messages will be retrieved from topic via the provided subscription name. max_messages (int; default None; max number of messages to pull), message_ack (bool; default False; acknowledge the message) and return_immediately (bool; default True, don't wait for messages to appear). If the messages are acknowledged, changed is set to True, otherwise, changed is False.

		pull?: string

		// Subfield of subscription.  Not required.  If specified, message will be sent to an endpoint. See U(https://cloud.google.com/pubsub/docs/advanced#push_endpoints) for more information.

		push_endpoint?: string

		// State of the topic or queue.
		// Applies to the most granular resource.
		// If subscription isspecified we remove it.
		// If only topic is specified, that is what is removed.
		// NOTE - A topic can be removed without first removing the subscription.

		state?: string

		// Dictionary containing a subscription name associated with a topic (required), along with optional ack_deadline, push_endpoint and pull. For pulling from a subscription, message_ack (bool), max_messages (int) and return_immediate are available as subfields. See subfields name, push_endpoint and ack_deadline for more information.

		subscription?: string
	}
}

gce :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce: {

		// image string to use for the instance (default will follow latest stable debian image)

		image?: string

		// image family from which to select the image.  The most recent non-deprecated image in the family will be used.

		image_family?: string

		// service account email

		service_account_email?: string

		// service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)

		service_account_permissions?: string

		// desired state of the resource

		state?: string

		// if set boot disk will be removed after instance destruction

		disk_auto_delete?: bool

		// a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).

		disks?: string

		// type of external ip, ephemeral by default; alternatively, a fixed gce ip or ip name can be given. Specify 'none' if no external ip is desired.

		external_ip?: string

		// a comma-separated list of tags to associate with the instance

		tags?: string

		// the GCE zone to use. The list of available zones is at U(https://cloud.google.com/compute/docs/regions-zones/regions-zones#available).

		zone: string

		// machine type to use for the instance, use 'n1-standard-1' by default

		machine_type?: string

		// a hash/dictionary of custom data for the instance; '{"key":"value", ...}'

		metadata?: string

		// path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.

		pem_file?: string

		// path to the JSON file associated with the service account email

		credentials_file?: string

		// A list of other projects (accessible with the provisioning credentials) to be searched for the image.

		external_projects?: string

		// a comma-separated list of instance names to create or destroy

		instance_names?: string

		// either a name of a single instance or when used with 'num_instances', the base name of a cluster of nodes

		name?: string

		// name of the network, 'default' will be used if not specified

		network?: string

		// if set, create the instance with a persistent boot disk

		persistent_boot_disk?: bool

		// if set to C(yes), instances will be preemptible and time-limited. (requires libcloud >= 0.20.0)

		preemptible?: bool

		// your GCE project ID

		project_id?: string

		// name of the subnetwork in which the instance should be created

		subnetwork?: string

		// The size of the boot disk created for this instance (in GB)

		disk_size?: string

		// set to C(yes) if the instance can forward ip packets (useful for gateways)

		ip_forward?: bool

		// can be used with 'name', specifies the number of nodes to provision using 'name' as a base name

		num_instances?: string
	}
}

gcp_compute_http_health_check_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_http_health_check_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_dns_resource_record_set :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_dns_resource_record_set: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) .

		target?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// For example, U(www.example.com).

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// Number of seconds that this ResourceRecordSet can be cached by resolvers.

		ttl?: int

		// The type of credential used.

		auth_kind: string

		// Identifies the managed zone addressed by this request. This must be a dictionary that contains both a 'name' key and a 'dnsName' key. You can pass in the results of the gcp_dns_managed_zone module, which will contain both.

		managed_zone: {...}

		// Whether the given object should exist in GCP

		state?: string

		// One of valid DNS resource types.
		// Some valid choices include: "A", "AAAA", "CAA", "CNAME", "MX", "NAPTR", "NS", "PTR", "SOA", "SPF", "SRV", "TLSA", "TXT"

		type: string
	}
}

gcp_kms_key_ring :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_kms_key_ring: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The resource name for the KeyRing.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// The location for the KeyRing.
		// A full list of valid locations can be found by running `gcloud kms locations list`.

		location: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_network_endpoint_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_network_endpoint_group: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The default port used if the port number is not specified in the network endpoint.

		default_port?: int

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// Zone where the network endpoint group is located.

		zone: string

		// The network to which all network endpoints in the NEG belong.
		// Uses "default" project network if unspecified.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network: {...}

		// The type of credential used.

		auth_kind: string

		// Whether the given object should exist in GCP

		state?: string

		// Optional subnetwork to which all network endpoints in the NEG belong.
		// This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to "{{ name-of-resource }}"

		subnetwork?: {...}

		// Type of network endpoints in this network endpoint group. Currently the only supported value is GCE_VM_IP_PORT.
		// Some valid choices include: "GCE_VM_IP_PORT"

		network_endpoint_type?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_subnetwork_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_subnetwork_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// URL of the GCP region for this subnetwork.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The type of credential used.

		auth_kind: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_dns_managed_zone_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_dns_managed_zone_info: {

		// Restricts the list to return only zones with this domain name.

		dns_name?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string
	}
}

gcp_serviceusage_service_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_serviceusage_service_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gce_labels :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_labels: {

		// A list of labels (key/value pairs) to add or remove for the resource.

		labels?: string

		// The location of resource (global, us-central1-f, etc.)

		resource_location?: string

		// The name of resource.

		resource_name?: string

		// The type of resource (instances, disks, snapshots, images)

		resource_type?: string

		// The 'self_link' for the resource (instance, disk, snapshot, etc)

		resource_url?: string
	}
}

gce_lb :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_lb: {

		// the GCE region where the load-balancer is defined

		region?: string

		// service account email

		service_account_email?: string

		// number of consecutive successful checks before marking a node healthy

		httphealthcheck_healthy_count?: string

		// the url path to use for HTTP health checking

		httphealthcheck_path?: string

		// the timeout in seconds before a request is considered a failed check

		httphealthcheck_timeout?: string

		// path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.

		pem_file?: string

		// the external static IPv4 (or auto-assigned) address for the LB

		external_ip?: string

		// the duration in seconds between each health check request

		httphealthcheck_interval?: string

		// your GCE project ID

		project_id?: string

		// desired state of the LB

		state?: string

		// the port (range) to forward, e.g. 80 or 8000-8888 defaults to all ports

		port_range?: string

		// the name identifier for the HTTP health check

		httphealthcheck_name?: string

		// the TCP port to use for HTTP health checking

		httphealthcheck_port?: string

		// a list of zone/nodename pairs, e.g ['us-central1-a/www-a', ...]

		members?: string

		// name of the load-balancer resource

		name?: string

		// path to the JSON file associated with the service account email

		credentials_file?: string

		// host header to pass through on HTTP check requests

		httphealthcheck_host?: string

		// number of consecutive failed checks before marking a node unhealthy

		httphealthcheck_unhealthy_count?: string

		// the protocol used for the load-balancer packet forwarding, tcp or udp

		protocol?: string
	}
}

gcp_cloudfunctions_cloud_function_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_cloudfunctions_cloud_function_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The location of this cloud function.

		location: string
	}
}

gcp_spanner_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_spanner_instance: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// A unique identifier for the instance, which cannot be changed after the instance is created. The name must be between 6 and 30 characters in length.

		name: string

		// The number of nodes allocated to this instance.

		node_count?: int

		// The Google Cloud Platform project to use.

		project?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.

		labels?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The name of the instance's configuration (similar but not quite the same as a region) which defines defines the geographic placement and replication of your databases in this instance. It determines where your data is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
		// In order to obtain a valid list please consult the [Configuration section of the docs](U(https://cloud.google.com/spanner/docs/instances)).

		config: string

		// The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.

		display_name: string
	}
}

gcp_storage_bucket :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_storage_bucket: {

		// The Google Cloud Platform project to use.

		project?: string

		// The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage.
		// Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
		// Some valid choices include: "MULTI_REGIONAL", "REGIONAL", "STANDARD", "NEARLINE", "COLDLINE", "DURABLE_REDUCED_AVAILABILITY"

		storage_class?: string

		// The bucket's Cross-Origin Resource Sharing (CORS) configuration.

		cors?: [...]

		// The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.

		location?: string

		// The metadata generation of this bucket.

		metageneration?: int

		// The name of the bucket.

		name?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.

		website?: {...}

		// The type of credential used.

		auth_kind: string

		// Default access controls to apply to new objects when no ACL is provided.

		default_object_acl?: [...]

		// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.

		logging?: {...}

		// Apply a predefined set of default object access controls to this bucket.
		// Acceptable values are: - "authenticatedRead": Object owner gets OWNER access, and allAuthenticatedUsers get READER access.
		// - "bucketOwnerFullControl": Object owner gets OWNER access, and project team owners get OWNER access.
		// - "bucketOwnerRead": Object owner gets OWNER access, and project team owners get READER access.
		// - "private": Object owner gets OWNER access.
		// - "projectPrivate": Object owner gets OWNER access, and project team members get access according to their roles.
		// - "publicRead": Object owner gets OWNER access, and allUsers get READER access.
		// Some valid choices include: "authenticatedRead", "bucketOwnerFullControl", "bucketOwnerRead", "private", "projectPrivate", "publicRead"

		predefined_default_object_acl?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Access controls on the bucket.

		acl?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The bucket's lifecycle configuration.
		// See U(https://developers.google.com/storage/docs/lifecycle) for more information.

		lifecycle?: {...}

		// The owner of the bucket. This is always the project team's owner group.

		owner?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The bucket's versioning configuration.

		versioning?: {...}
	}
}

gcp_target_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_target_proxy: {

		// Name of the Target_Proxy.

		target_proxy_name: string

		// Type of Target_Proxy. HTTP, HTTPS or SSL. Only HTTP is currently supported.

		target_proxy_type: string

		// Name of the Url Map.  Required if type is HTTP or HTTPS proxy.

		url_map_name?: string
	}
}

gcp_compute_backend_bucket :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_backend_bucket: {

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// An optional textual description of the resource; provided by the client when the resource is created.

		description?: string

		// If true, enable Cloud CDN for this BackendBucket.

		enable_cdn?: bool

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// Cloud Storage bucket name.

		bucket_name: string

		// Cloud CDN configuration for this Backend Bucket.

		cdn_policy?: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_compute_region_backend_service_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_region_backend_service_info: {

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// A reference to the region where the regional backend service resides.

		region: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_snapshot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_snapshot: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A reference to the disk used to create this snapshot.
		// This field represents a link to a Disk resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_compute_disk task and then set this source_disk field to "{{ name-of-resource }}"

		source_disk: {...}

		// Labels to apply to this Snapshot.

		labels?: {...}

		// A reference to the zone where the disk is hosted.

		zone?: string

		// An optional description of this resource.

		description?: string

		// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The customer-supplied encryption key of the snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.

		snapshot_encryption_key?: {...}

		// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.

		source_disk_encryption_key?: {...}

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_dns_resource_record_set_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_dns_resource_record_set_info: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Identifies the managed zone addressed by this request. This must be a dictionary that contains both a 'name' key and a 'dnsName' key. You can pass in the results of the gcp_dns_managed_zone module, which will contain both.

		managed_zone: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gce_instance_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_instance_template: {

		// Defines whether the instance should be automatically restarted when it is terminated by Compute Engine.

		automatic_restart?: bool

		// path to the JSON file associated with the service account email

		credentials_file?: string

		// The name of the GCE instance template.

		name?: string

		// Defines whether the instance is preemptible.

		preemptible?: bool

		// your GCE project ID

		project_id?: string

		// The desired machine type for the instance template.

		size?: string

		// The image to use to create the instance. Cannot specify both both I(image) and I(source).

		image?: string

		// service account email

		service_account_email?: string

		// Indicate that the boot disk should be deleted when the Node is deleted.

		disk_auto_delete?: bool

		// a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).

		disks?: string

		// Support passing in the GCE-specific formatted formatted disks[] structure. Case sensitive. see U(https://cloud.google.com/compute/docs/reference/latest/instanceTemplates#resource) for detailed information

		disks_gce_struct?: string

		// The external IP address to use. If C(ephemeral), a new non-static address will be used.  If C(None), then no external address will be used.  To use an existing static IP address specify address name.

		external_ip?: string

		// The image family to use to create the instance. If I(image) has been used I(image_family) is ignored. Cannot specify both I(image) and I(source).

		image_family?: string

		// The network to associate with the instance.

		network?: string

		// A source disk to attach to the instance. Cannot specify both I(image) and I(source).

		source?: string

		// The desired state for the instance template.

		state?: string

		// Region that subnetwork resides in. (Required for subnetwork to successfully complete)

		subnetwork_region?: string

		// a comma-separated list of tags to associate with the instance

		tags?: string

		// Set to C(yes) to allow instance to send/receive non-matching src/dst packets.

		can_ip_forward?: bool

		// description of instance template

		description?: string

		// Specify a C(pd-standard) disk or C(pd-ssd) for an SSD disk.

		disk_type?: string

		// a hash/dictionary of custom data for the instance; '{"key":"value", ...}'

		metadata?: string

		// Support passing in the GCE-specific formatted networkInterfaces[] structure.

		nic_gce_struct?: string

		// path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.

		pem_file?: string

		// service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)

		service_account_permissions?: string

		// The Subnetwork resource name for this instance.

		subnetwork?: string
	}
}

gcp_appengine_firewall_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_appengine_firewall_rule: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The action to take if this rule matches.
		// Some valid choices include: "UNSPECIFIED_ACTION", "ALLOW", "DENY"

		action: string

		// The type of credential used.

		auth_kind: string

		// An optional string description of this rule.

		description?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// IP address or range, defined using CIDR notation, of requests that this rule applies to.

		source_range: string

		// Whether the given object should exist in GCP

		state?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A positive integer that defines the order of rule evaluation.
		// Rules with the lowest priority are evaluated first.
		// A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.

		priority?: int
	}
}

gcp_backend_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_backend_service: {

		// Name of the port on the managed instance group (MIG) that backend services can forward data to. Required for external load balancing.

		port_name?: string

		// GCE project ID.

		project_id?: string

		// The protocol this Backend Service uses to communicate with backends. Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.

		protocol?: string

		// How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is 1-86400.

		timeout?: string

		// If true, enable Cloud CDN for this Backend Service.

		enable_cdn?: bool

		// List of backends that make up the backend service. A backend is made up of an instance group and optionally several other parameters.  See U(https://cloud.google.com/compute/docs/reference/latest/backendServices) for details.

		backends: string

		// Path to the JSON file associated with the service account email.

		credentials_file?: string

		// List of healthchecks. Only one healthcheck is supported.

		healthchecks: string

		// Service account email

		service_account_email?: string

		// Desired state of the resource

		state?: string

		// Name of the Backend Service.

		backend_service_name: string
	}
}

gcp_compute_autoscaler :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_autoscaler: {

		// URL of the zone where the instance group resides.

		zone: string

		// An optional description of this resource.

		description?: string

		// Name of the resource. The name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// URL of the managed instance group that this autoscaler will scale.
		// This field represents a link to a InstanceGroupManager resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance_group_manager task and then set this target field to "{{ name-of-resource }}"

		target: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// The configuration parameters for the autoscaling algorithm. You can define one or more of the policies for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization.
		// If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%.

		autoscaling_policy: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_disk :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_disk: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk.
		// If you specify this field along with sourceImage or sourceSnapshot, the value of sizeGb must not be less than the size of the sourceImage or the size of the snapshot.

		size_gb?: int

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Labels to apply to this disk. A list of key->value pairs.

		labels?: {...}

		// Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. Currently supported sizes are 4096 and 16384, other sizes may be added in the future.
		// If an unsupported value is requested, the error message will list the supported values for the caller's project.

		physical_block_size_bytes?: int

		// Whether the given object should exist in GCP

		state?: string

		// URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk.

		type?: string

		// A reference to the zone where the disk resides.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The source image used to create this disk. If the source image is deleted, this field will not be set.
		// To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-8 to use the latest Debian 8 image: projects/debian-cloud/global/images/family/debian-8 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD To create a disk with a private image that you created, specify the image name in the following format: global/images/my-private-image You can also specify a private image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-private-family .

		source_image?: string

		// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.

		source_snapshot_encryption_key?: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.

		source_image_encryption_key?: {...}

		// Encrypts the disk using a customer-supplied encryption key.
		// After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later (e.g. to create a disk snapshot or an image, or to attach the disk to a virtual machine).
		// Customer-supplied encryption keys do not protect access to metadata of the disk.
		// If you do not provide an encryption key when creating the disk, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.

		disk_encryption_key?: {...}

		// Any applicable publicly visible licenses.

		licenses?: [...]

		// The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
		// This field represents a link to a Snapshot resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_snapshot task and then set this source_snapshot field to "{{ name-of-resource }}"

		source_snapshot?: {...}
	}
}

gcp_compute_health_check :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_health_check: {

		// A nested object resource.

		ssl_health_check?: {...}

		// How long (in seconds) to wait before claiming failure.
		// The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.

		timeout_sec?: int

		// Specifies the type of the healthCheck, either TCP, SSL, HTTP or HTTPS. If not specified, the default is TCP. Exactly one of the protocol-specific health check field must be specified, which must match type field.
		// Some valid choices include: "TCP", "SSL", "HTTP", "HTTPS", "HTTP2"

		type?: string

		// A nested object resource.

		http2_health_check?: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// A nested object resource.

		tcp_health_check?: {...}

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A nested object resource.

		https_health_check?: {...}

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// How often (in seconds) to send a health check. The default value is 5 seconds.

		check_interval_sec?: int

		// A nested object resource.

		http_health_check?: {...}

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.

		unhealthy_threshold?: int

		// The type of credential used.

		auth_kind: string

		// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.

		healthy_threshold?: int
	}
}

gcp_compute_instance_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_group: {

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// The name of the instance group.
		// The name must be 1-63 characters long, and comply with RFC1035.

		name?: string

		// Assigns a name to a port number.
		// For example: {name: "http", port: 80}.
		// This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports.
		// For example: [{name: "http", port: 80},{name: "http", port: 8080}] Named ports apply to all instances in this instance group.

		named_ports?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The subnetwork to which all instances in the instance group belong.
		// This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to "{{ name-of-resource }}"

		subnetwork?: {...}

		// A reference to the zone where the instance group resides.

		zone: string

		// The type of credential used.

		auth_kind: string

		// The list of instances associated with this InstanceGroup.
		// All instances must be created before being added to an InstanceGroup.
		// All instances not in this list will be removed from the InstanceGroup and will not be deleted.
		// Only the full identifier of the instance will be returned.

		instances?: [...]

		// The region where the instance group is located (for regional resources).

		region?: string

		// Array of scopes to be used

		scopes?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// The network to which all instances in the instance group belong.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network?: {...}

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_info: {

		// A reference to the zone where the machine resides.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_vpn_tunnel_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_vpn_tunnel_info: {

		// The region where the tunnel is located.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_kms_crypto_key_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_kms_crypto_key_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The KeyRing that this key belongs to.
		// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.

		key_ring: string
	}
}

gce_eip :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_eip: {

		// Name of Address.

		name: string

		// Region to create the address in. Set to 'global' to create a global address.

		region: string

		// The state the address should be in. C(present) or C(absent) are the only valid options.

		state?: string
	}
}

gce_tag :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_tag: {

		// Your GCE project ID.

		project_id?: string

		// Service account email.

		service_account_email?: string

		// Desired state of the tags.

		state?: string

		// Comma-separated list of tags to add or remove.

		tags: string

		// The zone of the disk specified by source.

		zone?: string

		// The name of the GCE instance to add/remove tags.
		// Required if C(instance_pattern) is not specified.

		instance_name?: string

		// The pattern of GCE instance names to match for adding/removing tags.  Full-Python regex is supported. See U(https://docs.python.org/2/library/re.html) for details.
		// If C(instance_name) is not specified, this field is required.

		instance_pattern?: string

		// Path to the PEM file associated with the service account email.

		pem_file?: string
	}
}

gcp_compute_node_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_node_template: {

		// Node type to use for nodes group that are created from this template.
		// Only one of nodeTypeFlexibility and nodeType can be specified.

		node_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional textual description of the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Flexible properties for the desired node type. Node groups that use this node template will create nodes of a type that matches these properties. Only one of nodeTypeFlexibility and nodeType can be specified.

		node_type_flexibility?: {...}

		// Region where nodes using the node template will be created .

		region: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// Name of the resource.

		name?: string

		// Labels to use for node affinity, which will be used in instance scheduling.

		node_affinity_labels?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_subnetwork :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_subnetwork: {

		// The Google Cloud Platform project to use.

		project?: string

		// URL of the GCP region for this subnetwork.

		region: string

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.

		description?: string

		// The network this subnet belongs to.
		// Only networks that are in the distributed mode can have subnetworks.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network: {...}

		// The range of internal addresses that are owned by this subnetwork.
		// Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported.

		ip_cidr_range: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges.

		secondary_ip_ranges?: [...]

		// Whether to enable flow logging for this subnetwork.

		enable_flow_logs?: bool

		// When enabled, VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access.

		private_ip_google_access?: bool

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_logging_metric_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_logging_metric_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_mlengine_version :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_mlengine_version: {

		// Specifies the service account for resource access control.

		service_account?: string

		// The machine learning framework AI Platform uses to train this version of the model.
		// Some valid choices include: "FRAMEWORK_UNSPECIFIED", "TENSORFLOW", "SCIKIT_LEARN", "XGBOOST"

		framework?: string

		// The type of machine on which to serve the model. Currently only applies to online prediction service.
		// Some valid choices include: "mls1-c1-m2", "mls1-c4-m2"

		machine_type?: string

		// Manually select the number of nodes to use for serving the model. You should generally use autoScaling with an appropriate minNodes instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.

		manual_scaling?: {...}

		// The name specified for the version when it was created.
		// The version name must be unique within the model it is created in.

		name: string

		// The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the packageUris field.

		prediction_class?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// The Cloud Storage location of the trained model used to create the version.

		deployment_uri: string

		// The description specified for the version when it was created.

		description?: string

		// One or more labels that you can add, to organize your model versions.

		labels?: {...}

		// The AI Platform runtime version to use for this deployment.

		runtime_version?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.

		auto_scaling?: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// If true, this version will be used to handle prediction requests that do not specify a version.

		is_default?: bool

		// The model that this version belongs to.
		// This field represents a link to a Model resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_mlengine_model task and then set this model field to "{{ name-of-resource }}"

		model: {...}

		// The version of Python used in prediction. If not set, the default version is '2.7'. Python '3.5' is available when runtimeVersion is set to '1.4' and above. Python '2.7' works with all supported runtime versions.
		// Some valid choices include: "2.7", "3.5"

		python_version?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_sql_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_instance: {

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The maximum disk size of the instance in bytes.

		max_disk_size?: int

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name and status of the failover replica. This property is applicable only to Second Generation instances.

		failover_replica?: {...}

		// The instance type. This can be one of the following.
		// * CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating from a master.
		// * ON_PREMISES_INSTANCE: An instance running on the customer's premises.
		// * READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a read-replica.
		// Some valid choices include: "CLOUD_SQL_INSTANCE", "ON_PREMISES_INSTANCE", "READ_REPLICA_INSTANCE"

		instance_type?: string

		// The type of credential used.

		auth_kind: string

		// The database engine type and version. For First Generation instances, can be MYSQL_5_5, or MYSQL_5_6. For Second Generation instances, can be MYSQL_5_6 or MYSQL_5_7. Defaults to MYSQL_5_6.
		// PostgreSQL instances: POSTGRES_9_6 The databaseVersion property can not be changed after instance creation.
		// Some valid choices include: "MYSQL_5_5", "MYSQL_5_6", "MYSQL_5_7", "POSTGRES_9_6"

		database_version?: string

		// The IPv6 address assigned to the instance. This property is applicable only to First Generation instances.

		ipv6_address?: string

		// The name of the instance which will act as master in the replication setup.

		master_instance_name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Connection name of the Cloud SQL instance used in connection strings.

		connection_name?: string

		// Name of the Cloud SQL instance. This does not include the project ID.

		name: string

		// The geographical region. Defaults to us-central or us-central1 depending on the instance type (First Generation or Second Generation/PostgreSQL).

		region?: string

		// Configuration specific to failover replicas and read replicas.

		replica_configuration?: {...}

		// The user settings.

		settings?: {...}

		// Whether the given object should exist in GCP

		state?: string

		// * FIRST_GEN: First Generation instance. MySQL only.
		// * SECOND_GEN: Second Generation instance or PostgreSQL instance.
		// * EXTERNAL: A database server that is not managed by Google.
		// Some valid choices include: "FIRST_GEN", "SECOND_GEN", "EXTERNAL"

		backend_type?: string
	}
}

gcp_sql_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_instance_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gce_mig :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_mig: {

		// A dictionary of configuration for the autoscaler. 'enabled (bool)', 'name (str)' and policy.max_instances (int) are required fields if autoscaling is used. See U(https://cloud.google.com/compute/docs/reference/beta/autoscalers) for more information on Autoscaling.

		autoscaling?: string

		// Name of the Managed Instance Group.

		name: string

		// Define named ports that backend services can forward data to.  Format is a a list of name:port dictionaries.

		named_ports?: string

		// service account email

		service_account_email?: string

		// The GCE zone to use for this Managed Instance Group.

		zone: string

		// Path to the JSON file associated with the service account email

		credentials_file?: string

		// GCE project ID

		project_id?: string

		// Size of Managed Instance Group.  If MIG already exists, it will be resized to the number provided here.  Required for creating MIGs.

		size?: string

		// desired state of the resource

		state?: string

		// Instance Template to be used in creating the VMs.  See U(https://cloud.google.com/compute/docs/instance-templates) to learn more about Instance Templates.  Required for creating MIGs.

		template?: string
	}
}

gcp_compute_global_address :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_global_address: {

		// The static external IP address represented by this resource.

		address?: string

		// The URL of the network in which to reserve the IP range. The IP range must be in RFC1918 space. The network cannot be deleted if there are any reserved IP ranges referring to it.
		// This should only be set when using an Internal address.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of the address to reserve, default is EXTERNAL.
		// * EXTERNAL indicates public/external single IP address.
		// * INTERNAL indicates internal IP ranges belonging to some network.
		// Some valid choices include: "EXTERNAL", "INTERNAL"

		address_type?: string

		// The type of credential used.

		auth_kind: string

		// The IP Version that will be used by this address. Valid options are `IPV4` or `IPV6`. The default value is `IPV4`.
		// Some valid choices include: "IPV4", "IPV6"

		ip_version?: string

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The prefix length of the IP range. If not present, it means the address field is a single IP address.
		// This field is not applicable to addresses with addressType=EXTERNAL.

		prefix_length?: int

		// The purpose of the resource. For global internal addresses it can be * VPC_PEERING - for peer networks This should only be set when using an Internal address.
		// Some valid choices include: "VPC_PEERING"

		purpose?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_node_group_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_node_group_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Zone where this node group is located .

		zone: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_runtimeconfig_variable :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_runtimeconfig_variable: {

		// The name of the runtime config that this variable belongs to.

		config: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the variable resource.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The string value of the variable. Either this or `value` can be set.

		text?: string

		// The type of credential used.

		auth_kind: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// The binary value of the variable. Either this or `text` can be set.

		value?: string
	}
}

gcp_sourcerepo_repository :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sourcerepo_repository: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// Resource name of the repository, of the form projects/{{project}}/repos/{{repo}}.
		// The repo name may contain slashes. eg, projects/myproject/repos/name/with/slash .

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_sql_user_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_user_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the Cloud SQL instance. This does not include the project ID.
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_sql_instance task and then set this instance field to "{{ name-of-resource }}"

		instance: {...}

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_node_template_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_node_template_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The Google Cloud Platform project to use.

		project?: string

		// Region where nodes using the node template will be created .

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_compute_ssl_certificate :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_ssl_certificate: {

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The write-only private key in PEM format.

		private_key: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The certificate in PEM format.
		// The certificate chain must be no greater than 5 certs long.
		// The chain must include at least one intermediate cert.

		certificate: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_target_http_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_http_proxy: {

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource.

		description?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A reference to the UrlMap resource that defines the mapping from URL to the BackendService.
		// This field represents a link to a UrlMap resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_url_map task and then set this url_map field to "{{ name-of-resource }}"

		url_map: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_compute_target_pool_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_pool_info: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The region where the target pool resides.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_container_node_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_container_node_pool: {

		// Which conditions caused the current node pool state.

		conditions?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The initial node count for the pool. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota.

		initial_node_count: int

		// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.

		max_pods_constraint?: {...}

		// The name of the node pool.

		name?: string

		// The type of credential used.

		auth_kind: string

		// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.

		autoscaling?: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The location where the node pool is deployed.

		location: string

		// Management configuration for this NodePool.

		management?: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// The version of the Kubernetes of this node.

		version?: string

		// The cluster this node pool belongs to.
		// This field represents a link to a Cluster resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_container_cluster task and then set this cluster field to "{{ name-of-resource }}"

		cluster: {...}

		// The node configuration of the pool.

		config?: {...}

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_iam_role_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_iam_role_info: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_iam_service_account :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_iam_service_account: {

		// The type of credential used.

		auth_kind: string

		// User specified description of service account.

		display_name?: string

		// The name of the service account.

		name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_kms_key_ring_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_kms_key_ring_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The location for the KeyRing.
		// A full list of valid locations can be found by running `gcloud kms locations list`.

		location: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_mlengine_model_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_mlengine_model_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_image_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_image_info: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_instance_group_manager :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_group_manager: {

		// The type of credential used.

		auth_kind: string

		// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name.
		// The base instance name must comply with RFC1035.

		base_instance_name: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// The instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group.
		// This field represents a link to a InstanceTemplate resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance_template task and then set this instance_template field to "{{ name-of-resource }}"

		instance_template: {...}

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The zone the managed instance group resides.

		zone: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Named ports configured for the Instance Groups complementary to this Instance Group Manager.

		named_ports?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.

		target_pools?: [...]

		// The target number of running instances for this managed instance group. Deleting or abandoning instances reduces this number. Resizing the group changes this number.

		target_size?: int
	}
}

gce_pd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_pd: {

		// the source image to use for the disk

		image?: string

		// GCE mount mode of disk, READ_ONLY (default) or READ_WRITE

		mode?: string

		// your GCE project ID

		project_id?: string

		// the source snapshot to use for the disk

		snapshot?: string

		// If C(yes), deletes the volume when instance is terminated

		delete_on_termination?: bool

		// type of disk provisioned

		disk_type?: string

		// whole integer size of disk (in GB) to create, default is 10 GB

		size_gb?: string

		// desired state of the persistent disk

		state?: string

		// zone in which to create the disk

		zone?: string

		// instance name if you wish to attach or detach the disk

		instance_name?: string

		// name of the disk

		name: string

		// path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.

		pem_file?: string

		// service account email

		service_account_email?: string

		// path to the JSON file associated with the service account email

		credentials_file?: string

		// do not destroy the disk, merely detach it from an instance

		detach_only?: bool
	}
}

gcp_compute_ssl_certificate_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_ssl_certificate_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_iam_service_account_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_iam_service_account_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_kms_crypto_key :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_kms_crypto_key: {

		// The KeyRing that this key belongs to.
		// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.

		key_ring: string

		// Labels with user-defined metadata to apply to this resource.

		labels?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A template describing settings for new crypto key versions.

		version_template?: {...}

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Immutable purpose of CryptoKey. See U(https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose) for inputs.
		// Some valid choices include: "ENCRYPT_DECRYPT", "ASYMMETRIC_SIGN", "ASYMMETRIC_DECRYPT"

		purpose?: string

		// The resource name for the CryptoKey.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
		// The first rotation will take place after the specified period. The rotation period has the format of a decimal number with up to 9 fractional digits, followed by the letter `s` (seconds). It must be greater than a day (ie, 86400).

		rotation_period?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_logging_metric :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_logging_metric: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the valueExtractor field.

		label_extractors?: {...}

		// The metric descriptor associated with the logs-based metric.

		metric_descriptor: {...}

		// The client-assigned metric identifier. Examples - "error_count", "nginx/requests".
		// Metric identifiers are limited to 100 characters and can include only the following characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.

		name: string

		// The type of credential used.

		auth_kind: string

		// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.

		bucket_options?: {...}

		// A valueExtractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax (U(https://github.com/google/re2/wiki/Syntax)) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.

		value_extractor?: string

		// A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.

		description?: string

		// An advanced logs filter (U(https://cloud.google.com/logging/docs/view/advanced-filters)) which is used to match log entries.

		filter: string

		// The Google Cloud Platform project to use.

		project?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_redis_instance :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_redis_instance: {

		// The CIDR range of internal addresses that are reserved for this instance. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique and non-overlapping with existing subnets in an authorized network.

		reserved_ip_range?: string

		// The type of credential used.

		auth_kind: string

		// The zone where the instance will be provisioned. If not provided, the service will choose a zone for the instance. For STANDARD_HA tier, instances will be created across two zones for protection against zonal failures. If [alternativeLocationId] is also provided, it must be different from [locationId].

		location_id?: string

		// Redis memory size in GiB.

		memory_size_gb: int

		// The Google Cloud Platform project to use.

		project?: string

		// The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: - REDIS_4_0 for Redis 4.0 compatibility - REDIS_3_2 for Redis 3.2 compatibility .

		redis_version?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// An arbitrary and optional user-provided name for the instance.

		display_name?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Resource labels to represent user provided metadata.

		labels?: {...}

		// Redis configuration parameters, according to U(http://redis.io/topics/config).
		// Please check Memorystore documentation for the list of supported parameters: U(https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs) .

		redis_configs?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// The ID of the instance or a fully qualified identifier for the instance. .

		name: string

		// The name of the Redis region of the instance.

		region: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The service tier of the instance. Must be one of these values: - BASIC: standalone instance - STANDARD_HA: highly available primary/replica instances .
		// Some valid choices include: "BASIC", "STANDARD_HA"

		tier?: string

		// Only applicable to STANDARD_HA tier which protects the instance against zonal failures by provisioning it across two zones.
		// If provided, it must be a different zone from the one provided in [locationId].

		alternative_location_id?: string

		// The full name of the Google Compute Engine network to which the instance is connected. If left unspecified, the default network will be used.

		authorized_network?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_url_map :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_url_map: {

		// The list of named PathMatchers to use against the URL. Contains path_rules, which is a list of paths and an associated service. A default_service can also be specified for each path_matcher.
		// The 'name' parameter to which this path_matcher is referred by the host_rule.
		// The 'default_service' parameter is the name of the BackendService resource. This will be used if none of the path_rules defined by this path_matcher is matched by the URL's path portion.
		// The 'path_rules' parameter is a list of dictionaries containing a list of paths and a service to direct traffic to. Each path item must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or

		path_matchers?: string

		// Name of the Url_Map.

		url_map_name: string

		// Default Backend Service if no host rules match.

		default_service: string

		// The list of HostRules to use against the URL. Contains a list of hosts and an associated path_matcher.
		// The 'hosts' parameter is a list of host patterns to match. They must be valid hostnames, except * will match any string of ([a-z0-9-.]*). In that case, * must be the first character and must be followed in the pattern by either - or ..
		// The 'path_matcher' parameter is name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.

		host_rules?: string
	}
}

gcp_compute_firewall_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_firewall_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_global_address_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_global_address_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]
	}
}

gcp_compute_vpn_tunnel :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_vpn_tunnel: {

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional description of this resource.

		description?: string

		// IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway.
		// Acceptable IKE versions are 1 or 2. Default version is 2.

		ike_version?: int

		// The region where the tunnel is located.

		region: string

		// Remote traffic selector to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example `192.168.0.0/16`. The ranges should be disjoint.
		// Only IPv4 is supported.

		remote_traffic_selector?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// IP address of the peer VPN gateway. Only IPv4 is supported.

		peer_ip?: string

		// URL of router resource to be used for dynamic routing.
		// This field represents a link to a Router resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_router task and then set this router field to "{{ name-of-resource }}"

		router?: {...}

		// Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.

		shared_secret: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Local traffic selector to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example `192.168.0.0/16`. The ranges should be disjoint.
		// Only IPv4 is supported.

		local_traffic_selector?: [...]

		// URL of the Target VPN gateway with which this VPN tunnel is associated.
		// This field represents a link to a TargetVpnGateway resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_target_vpn_gateway task and then set this target_vpn_gateway field to "{{ name-of-resource }}"

		target_vpn_gateway?: {...}
	}
}

gcp_compute_address_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_address_info: {

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The Google Cloud Platform project to use.

		project?: string

		// URL of the region where the regional address resides.
		// This field is not applicable to global addresses.

		region: string
	}
}

gcp_compute_region_backend_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_region_backend_service: {

		// The protocol this RegionBackendService uses to communicate with backends.
		// Possible values are HTTP, HTTPS, HTTP2, SSL, TCP, and UDP. The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer types and may result in errors if used with the GA API.
		// Some valid choices include: "HTTP", "HTTPS", "HTTP2", "SSL", "TCP", "UDP"

		protocol?: string

		// A reference to the region where the regional backend service resides.

		region: string

		// Whether the given object should exist in GCP

		state?: string

		// How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is [1, 86400].

		timeout_sec?: int

		// The set of backends that serve this RegionBackendService.

		backends?: [...]

		// An optional description of this resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The set of URLs to HealthCheck resources for health checking this RegionBackendService. Currently at most one health check can be specified, and a health check is required.

		health_checks: [...]

		// Indicates what kind of load balancing this regional backend service will be used for. A backend service created for one type of load balancing cannot be used with the other(s). Must be `INTERNAL` or `INTERNAL_MANAGED`. Defaults to `INTERNAL`.
		// Some valid choices include: "INTERNAL", "INTERNAL_MANAGED"

		load_balancing_scheme?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Settings for connection draining .

		connection_draining?: {...}

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Type of session affinity to use. The default is NONE. Session affinity is not applicable if the protocol is UDP.
		// Some valid choices include: "NONE", "CLIENT_IP", "CLIENT_IP_PORT_PROTO", "CLIENT_IP_PROTO", "GENERATED_COOKIE", "HEADER_FIELD", "HTTP_COOKIE"

		session_affinity?: string
	}
}

gcp_compute_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_route: {

		// The type of credential used.

		auth_kind: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// URL to a gateway that should handle matching packets.
		// Currently, you can only specify the internet gateway, using a full or partial valid URL: * U(https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway) * projects/project/global/gateways/default-internet-gateway * global/gateways/default-internet-gateway .

		next_hop_gateway?: string

		// Network IP address of an instance that should handle matching packets.

		next_hop_ip?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// A list of instance tags to which this route applies.

		tags?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The network that this route applies to.
		// This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to "{{ name-of-resource }}"

		network: {...}

		// URL to a VpnTunnel that should handle matching packets.
		// This field represents a link to a VpnTunnel resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_vpn_tunnel task and then set this next_hop_vpn_tunnel field to "{{ name-of-resource }}"

		next_hop_vpn_tunnel?: {...}

		// The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length.
		// In the case of two routes with equal prefix length, the one with the lowest-numbered priority value wins.
		// Default value is 1000. Valid range is 0 through 65535.

		priority?: int

		// Whether the given object should exist in GCP

		state?: string

		// The destination range of outgoing packets that this route applies to.
		// Only IPv4 is supported.

		dest_range: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// URL to an instance that should handle matching packets.
		// You can specify this as a full or partial URL. For example: * U(https://www.googleapis.com/compute/v1/projects/project/zones/zone/) instances/instance * projects/project/zones/zone/instances/instance * zones/zone/instances/instance .
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance task and then set this next_hop_instance field to "{{ name-of-resource }}"

		next_hop_instance?: {...}

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_snapshot_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_snapshot_info: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_container_cluster_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_container_cluster_info: {

		// The location where the cluster is deployed.

		location: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string
	}
}

gcp_iam_service_account_key :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_iam_service_account_key: {

		// The name of the serviceAccount.
		// This field represents a link to a ServiceAccount resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_iam_service_account task and then set this service_account field to "{{ name-of-resource }}"

		service_account?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Output format for the service account key.
		// Some valid choices include: "TYPE_UNSPECIFIED", "TYPE_PKCS12_FILE", "TYPE_GOOGLE_CREDENTIALS_FILE"

		private_key_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Specifies the algorithm for the key.
		// Some valid choices include: "KEY_ALG_UNSPECIFIED", "KEY_ALG_RSA_1024", "KEY_ALG_RSA_2048"

		key_algorithm?: string

		// The full name of the file that will hold the service account private key. The management of this file will depend on the value of sync_file parameter.
		// File path must be absolute.

		path?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_spanner_database :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_spanner_database: {

		// The type of credential used.

		auth_kind: string

		// The instance to create the database on.
		// This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_spanner_instance task and then set this instance field to "{{ name-of-resource }}"

		instance: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// An optional list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.

		extra_statements?: [...]

		// A unique identifier for the database, which cannot be changed after the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_storage_object :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_storage_object: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// 'Overwrite the file on the bucket/local machine. If overwrite is false and a difference exists between GCS + local, module will fail with error' .

		overwrite?: bool

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Source location of file (may be local machine or cloud depending on action).

		src?: string

		// Whether the given object should exist in GCP

		state?: string

		// Upload or download from the bucket.
		// Some valid choices include: "download", "upload"

		action?: string

		// The name of the bucket.

		bucket?: string

		// Destination location of file (may be local machine or cloud depending on action).

		dest?: string
	}
}

gce_snapshot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gce_snapshot: {

		// The path to the credentials file associated with the service account

		credentials_file: string

		// A list of disks to create snapshots for. If none is provided, all of the volumes will be snapshotted

		disks?: string

		// The GCE instance to snapshot

		instance_name: string

		// The GCP project ID to use

		project_id: string

		// GCP service account email for the project where the instance resides

		service_account_email: string

		// The name of the snapshot to manage

		snapshot_name?: string

		// Whether a snapshot should be C(present) or C(absent)

		state?: string
	}
}

gcp_compute_target_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_instance_info: {

		// URL of the zone where the target instance resides.

		zone: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_resourcemanager_project_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_resourcemanager_project_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_tpu_node :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_tpu_node: {

		// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address).
		// Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.

		cidr_block: string

		// The name of a network to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.

		network?: string

		// Array of scopes to be used

		scopes?: [...]

		// The type of credential used.

		auth_kind: string

		// The immutable name of the TPU.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// The version of Tensorflow running in the Node.

		tensorflow_version: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The GCP location for the TPU.

		zone: string

		// The type of hardware accelerators associated with this node.

		accelerator_type: string

		// The user-supplied description of the TPU. Maximum of 512 characters.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Resource labels to represent user provided metadata.

		labels?: {...}

		// Sets the scheduling options for this TPU instance.

		scheduling_config?: {...}
	}
}

gc_storage :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gc_storage: {

		// This option let's the user set the canned permissions on the object/bucket that are created. The permissions that can be set are 'private', 'public-read', 'authenticated-read'.

		permission?: string

		// Time limit (in seconds) for the URL generated and returned by GCA when performing a mode=put or mode=get_url operation. This url is only available when public-read is the acl for the object.

		expiration?: string

		// Forces an overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations.

		force?: bool

		// GS access key. If not set then the value of the GS_ACCESS_KEY_ID environment variable is used.

		gs_access_key: string

		// GS secret key. If not set then the value of the GS_SECRET_ACCESS_KEY environment variable is used.

		gs_secret_key: string

		// Headers to attach to object.

		headers?: string

		// Keyname of the object inside the bucket. Can be also be used to create "virtual directories" (see examples).

		object?: string

		// Bucket name.

		bucket: string

		// The destination file path when downloading an object/key with a GET operation.

		dest?: string

		// Switches the module behaviour between upload, download, get_url (return download url) , get_str (download object as string), create (bucket) and delete (bucket).

		mode: string

		// The gs region to use. If not defined then the value 'US' will be used. See U(https://cloud.google.com/storage/docs/bucket-locations)

		region?: string

		// The source file path when performing a PUT operation.

		src?: string

		// Whether versioning is enabled or disabled (note that once versioning is enabled, it can only be suspended)

		versioning?: bool
	}
}

gcp_compute_target_vpn_gateway_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_vpn_gateway_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The region this gateway should sit in.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcdns_zone :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcdns_zone: {

		// The path to the PEM file associated with the service account email.
		// This option is deprecated and may be removed in a future release. Use I(credentials_file) instead.

		pem_file?: string

		// The Google Cloud Platform project ID to use.

		project_id?: string

		// The e-mail address for a service account with access to Google Cloud DNS.

		service_account_email?: string

		// Whether the given zone should or should not be present.

		state?: string

		// The DNS domain name of the zone.
		// This is NOT the Google Cloud DNS zone ID (e.g., example-com). If you attempt to specify a zone ID, this module will attempt to create a TLD and will fail.

		zone: string

		// The path to the JSON file associated with the service account email.

		credentials_file?: string

		// An arbitrary text string to use for the zone description.

		description?: string
	}
}

gcp_compute_node_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_node_group: {

		// The URL of the node template to which this node group belongs.
		// This field represents a link to a NodeTemplate resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_node_template task and then set this node_template field to "{{ name-of-resource }}"

		node_template: {...}

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The total number of nodes in the node group.

		size: int

		// Whether the given object should exist in GCP

		state?: string

		// An optional textual description of the resource.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource.

		name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// Zone where this node group is located .

		zone: string

		// The type of credential used.

		auth_kind: string
	}
}

gcp_runtimeconfig_config_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_runtimeconfig_config_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_runtimeconfig_variable_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_runtimeconfig_variable_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The name of the runtime config that this variable belongs to.

		config: string
	}
}

gcp_spanner_instance_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_spanner_instance_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_sql_database :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_sql_database: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The collation value. See MySQL's [Supported Character Sets and Collations](U(https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)) and Postgres' [Collation Support](U(https://www.postgresql.org/docs/9.6/static/collation.html)) for more details and supported values. Postgres databases only support a value of `en_US.UTF8` at creation time.

		collation?: string

		// The charset value. See MySQL's [Supported Character Sets and Collations](U(https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)) and Postgres' [Character Set Support](U(https://www.postgresql.org/docs/9.6/static/multibyte.html)) for more details and supported values. Postgres databases only support a value of `UTF8` at creation time.

		charset?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The name of the Cloud SQL instance. This does not include the project ID.

		instance: string

		// The name of the database in the Cloud SQL instance.
		// This does not include the project ID or instance name.

		name: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcspanner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcspanner: {

		// Name of database contained on the instance.

		database_name?: string

		// To delete an instance, this argument must exist and be true (along with state being equal to absent).

		force_instance_delete?: bool

		// Name of Instance to display.
		// If not specified, instance_id will be used instead.

		instance_display_name?: string

		// GCP spanner instance name.

		instance_id: string

		// Number of nodes in the instance.

		node_count?: string

		// State of the instance or database. Applies to the most granular resource.
		// If a C(database_name) is specified we remove it.
		// If only C(instance_id) is specified, that is what is removed.

		state?: string

		// Configuration the instance should use.
		// Examples are us-central1, asia-east1 and europe-west1.

		configuration: string
	}
}

gcp_compute_address :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_address: {

		// The type of credential used.

		auth_kind: string

		// URL of the region where the regional address resides.
		// This field is not applicable to global addresses.

		region: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The static external IP address represented by this resource. Only IPv4 is supported. An address may only be specified for INTERNAL address types. The IP address must be inside the specified subnetwork, if any.

		address?: string

		// The type of address to reserve, either INTERNAL or EXTERNAL.
		// If unspecified, defaults to EXTERNAL.
		// Some valid choices include: "INTERNAL", "EXTERNAL"

		address_type?: string

		// An optional description of this resource.

		description?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The networking tier used for configuring this address. This field can take the following values: PREMIUM or STANDARD. If this field is not specified, it is assumed to be PREMIUM.
		// Some valid choices include: "PREMIUM", "STANDARD"

		network_tier?: string

		// The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, internal load balancers, and similar resources.
		// This should only be set when using an Internal address.
		// Some valid choices include: "GCE_ENDPOINT"

		purpose?: string

		// Array of scopes to be used

		scopes?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range.
		// This field can only be used with INTERNAL type with GCE_ENDPOINT/DNS_RESOLVER purposes.
		// This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to "{{ name-of-resource }}"

		subnetwork?: {...}
	}
}

gcp_compute_interconnect_attachment :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_interconnect_attachment: {

		// Whether the VLAN attachment is enabled or disabled. When using PARTNER type this will Pre-Activate the interconnect attachment .

		admin_enabled?: bool

		// An optional description of this resource.

		description?: string

		// URL of the cloud router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
		// This field represents a link to a Router resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_router task and then set this router field to "{{ name-of-resource }}"

		router: {...}

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of InterconnectAttachment you wish to create. Defaults to DEDICATED.
		// Some valid choices include: "DEDICATED", "PARTNER", "PARTNER_PROVIDER"

		type?: string

		// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When using PARTNER type this will be managed upstream.

		vlan_tag8021q?: int

		// URL of the underlying Interconnect object that this attachment's traffic will traverse through. Required if type is DEDICATED, must not be set if type is PARTNER.

		interconnect?: string

		// Region where the regional interconnect attachment resides.

		region: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Provisioned bandwidth capacity for the interconnect attachment.
		// For attachments of type DEDICATED, the user can set the bandwidth.
		// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
		// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, Defaults to BPS_10G .
		// Some valid choices include: "BPS_50M", "BPS_100M", "BPS_200M", "BPS_300M", "BPS_400M", "BPS_500M", "BPS_1G", "BPS_2G", "BPS_5G", "BPS_10G", "BPS_20G", "BPS_50G"

		bandwidth?: string

		// Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
		// All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.

		candidate_subnets?: [...]

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// Array of scopes to be used

		scopes?: [...]

		// Whether the given object should exist in GCP

		state?: string

		// The type of credential used.

		auth_kind: string

		// Desired availability domain for the attachment. Only available for type PARTNER, at creation time. For improved reliability, customers should configure a pair of attachments with one per availability domain. The selected availability domain will be provided to the Partner via the pairing key so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.

		edge_availability_domain?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string
	}
}

gcp_compute_target_https_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_https_proxy: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A reference to the SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource will not have any SSL policy configured.
		// This field represents a link to a SslPolicy resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_ssl_policy task and then set this ssl_policy field to "{{ name-of-resource }}"

		ssl_policy?: {...}

		// Specifies the QUIC override policy for this resource. This determines whether the load balancer will attempt to negotiate QUIC with clients or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is specified, uses the QUIC policy with no user overrides, which is equivalent to DISABLE. Not specifying this field is equivalent to specifying NONE.
		// Some valid choices include: "NONE", "ENABLE", "DISABLE"

		quic_override?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// A list of SslCertificate resources that are used to authenticate connections between users and the load balancer. Currently, exactly one SSL certificate must be specified.

		ssl_certificates: [...]

		// Whether the given object should exist in GCP

		state?: string

		// A reference to the UrlMap resource that defines the mapping from URL to the BackendService.
		// This field represents a link to a UrlMap resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_url_map task and then set this url_map field to "{{ name-of-resource }}"

		url_map: {...}

		// The type of credential used.

		auth_kind: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// An optional description of this resource.

		description?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_url_map :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_url_map: {

		// Array of scopes to be used

		scopes?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The list of named PathMatchers to use against the URL.

		path_matchers?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// An optional description of this resource. Provide this property when you create the resource.

		description?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The list of expected URL mappings. Requests to update this UrlMap will succeed only if all of the test cases pass.

		tests?: [...]

		// The list of HostRules to use against the URL.

		host_rules?: [...]

		// A reference to BackendService resource if none of the hostRules match.
		// This field represents a link to a BackendService resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_backend_service task and then set this default_service field to "{{ name-of-resource }}"

		default_service: {...}

		// The type of credential used.

		auth_kind: string
	}
}

gcp_compute_interconnect_attachment_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_interconnect_attachment_info: {

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Region where the regional interconnect attachment resides.

		region: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_compute_network_endpoint_group_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_network_endpoint_group_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Zone where the network endpoint group is located.

		zone: string

		// Array of scopes to be used

		scopes?: [...]

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// The type of credential used.

		auth_kind: string
	}
}

gcp_compute_reservation_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_reservation_info: {

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The zone where the reservation is made.

		zone: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string
	}
}

gcp_compute_target_tcp_proxy_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_target_tcp_proxy_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_container_cluster :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_container_cluster: {

		// The list of Google Compute Engine zones in which the cluster's nodes should be located.

		locations?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Configurations for the various addons available to run in the cluster.

		addons_config?: {...}

		// Configuration for controlling how IPs are allocated in the cluster.

		ip_allocation_policy?: {...}

		// Configuration for the legacy ABAC authorization mode.

		legacy_abac?: {...}

		// An optional description of this cluster.

		description?: string

		// The path that the kubectl config file will be written to.
		// The file will not be created if this path is unset.
		// Any existing file at this path will be completely overwritten.
		// This requires the PyYaml library.

		kubectl_path?: string

		// The name of the Google Compute Engine subnetwork to which the cluster is connected.

		subnetwork?: string

		// The logging service the cluster should use to write logs. Currently available options: logging.googleapis.com - the Google Cloud Logging service.
		// none - no logs will be exported from the cluster.
		// if left as an empty string,logging.googleapis.com will be used.
		// Some valid choices include: "logging.googleapis.com", "none"

		logging_service?: string

		// The name of this cluster. The name must be unique within this project and location, and can be up to 40 characters. Must be Lowercase letters, numbers, and hyphens only. Must start with a letter. Must end with a number or a letter.

		name?: string

		// The name of the context for the kubectl config file. Will default to the cluster name.

		kubectl_context?: string

		// Parameters used in creating the cluster's nodes.
		// For requests, this field should only be used in lieu of a "nodePool" object, since this configuration (along with the "initialNodeCount") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a nodePool at the same time. For responses, this field will be populated with the node configuration of the first node pool. If unspecified, the defaults are used.

		node_config?: {...}

		// Array of scopes to be used

		scopes?: [...]

		// Enable the ability to use Cloud TPUs in this cluster.

		enable_tpu?: bool

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Configuration for a private cluster.

		private_cluster_config?: {...}

		// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.

		resource_labels?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string

		// Configuration for controlling how IPs are allocated in the cluster.

		master_authorized_networks_config?: {...}

		// Configuration options for the NetworkPolicy feature.

		network_policy?: {...}

		// The number of nodes to create in this cluster. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "nodePool" object, since this configuration (along with the "nodeConfig") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a nodePool at the same time.
		// This field has been deprecated. Please use nodePool.initial_node_count instead.

		initial_node_count?: int

		// The authentication information for accessing the master endpoint.

		master_auth?: {...}

		// The monitoring service the cluster should use to write metrics.
		// Currently available options: monitoring.googleapis.com - the Google Cloud Monitoring service.
		// none - no metrics will be exported from the cluster.
		// if left as an empty string, monitoring.googleapis.com will be used.
		// Some valid choices include: "monitoring.googleapis.com", "none"

		monitoring_service?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The type of credential used.

		auth_kind: string

		// The IP address range of the container pods in this cluster, in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8.

		cluster_ipv4_cidr?: string

		// The name of the Google Compute Engine network to which the cluster is connected. If left unspecified, the default network will be used.

		network?: string

		// The IP address range of the Cloud TPUs in this cluster, in CIDR notation.

		tpu_ipv4_cidr_block?: string

		// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster.
		// Only honored if cluster created with IP Alias support.

		default_max_pods_constraint?: {...}

		// The location where the cluster is deployed.

		location: string
	}
}

gcp_storage_bucket_access_control :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_storage_bucket_access_control: {

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The name of the bucket.
		// This field represents a link to a Bucket resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_storage_bucket task and then set this bucket field to "{{ name-of-resource }}"

		bucket: {...}

		// The entity holding the permission, in one of the following forms: user-userId user-email group-groupId group-email domain-domain project-team-projectId allUsers allAuthenticatedUsers Examples: The user liz@example.com would be user-liz@example.com.
		// The group example@googlegroups.com would be group-example@googlegroups.com.
		// To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.

		entity: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// The access permission for the entity.
		// Some valid choices include: "OWNER", "READER", "WRITER"

		role?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// Whether the given object should exist in GCP

		state?: string
	}
}

gcp_appengine_firewall_rule_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_appengine_firewall_rule_info: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]
	}
}

gcp_bigquery_table :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_bigquery_table: {

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// Whether the given object should exist in GCP

		state?: string

		// One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.

		clustering?: [...]

		// A user-friendly description of the dataset.

		description?: string

		// Custom encryption configuration.

		encryption_configuration?: {...}

		// The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely.

		expiration_time?: int

		// Name of the table.

		name?: string

		// Describes the schema of this table.

		schema?: {...}

		// Reference describing the ID of this table.

		table_reference?: {...}

		// The view definition.

		view?: {...}

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A descriptive name for this table.

		friendly_name?: string

		// The Google Cloud Platform project to use.

		project?: string

		// If specified, configures time-based partitioning for this table.

		time_partitioning?: {...}

		// The number of rows of data in this table, excluding any data in the streaming buffer.

		num_rows?: int

		// Array of scopes to be used

		scopes?: [...]

		// Name of the dataset.

		dataset?: string

		// Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.

		external_data_configuration?: {...}

		// The labels associated with this dataset. You can use these to organize and group your datasets .

		labels?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_instance_template_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_instance_template_info: {

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string
	}
}

gcp_compute_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_network: {

		// The Google Cloud Platform project to use.

		project?: string

		// The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.

		routing_config?: {...}

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string

		// The type of credential used.

		auth_kind: string

		// When set to `true`, the network is created in "auto subnet mode" and it will create a subnet for each region automatically across the `10.128.0.0/9` address range.
		// When set to `false`, the network is created in "custom subnet mode" so the user can explicitly connect subnetwork resources.

		auto_create_subnetworks?: bool

		// If this field is specified, a deprecated legacy network is created.
		// You will no longer be able to create a legacy network on Feb 1, 2020.
		// See the [legacy network docs](U(https://cloud.google.com/vpc/docs/legacy)) for more details.
		// The range of internal addresses that are legal on this legacy network.
		// This range is a CIDR specification, for example: `192.168.0.0/16`.
		// The resource must be recreated to modify this field.

		ipv4_range?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// Whether the given object should exist in GCP

		state?: string

		// An optional description of this resource. The resource must be recreated to modify this field.

		description?: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.

		name: string
	}
}

gcp_compute_router_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_router_info: {

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// Region where the router resides.

		region: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// The Google Cloud Platform project to use.

		project?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}

gcp_compute_ssl_policy_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gcp_compute_ssl_policy_info: {

		// The path of a Service Account JSON file if serviceaccount is selected as type.

		service_account_file?: string

		// The type of credential used.

		auth_kind: string

		// Specifies which Ansible environment you're running this module within.
		// This should not be set unless you know what you're doing.
		// This only alters the User Agent string for any API requests.

		env_type?: string

		// A list of filter value pairs. Available filters are listed here U(https://cloud.google.com/sdk/gcloud/reference/topic/filters).
		// Each additional filter in the list will act be added as an AND condition (filter1 and filter2) .

		filters?: [...]

		// The Google Cloud Platform project to use.

		project?: string

		// Array of scopes to be used

		scopes?: [...]

		// The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.

		service_account_contents?: string

		// An optional service account email address if machineaccount is selected and the user does not wish to use the default email.

		service_account_email?: string
	}
}
