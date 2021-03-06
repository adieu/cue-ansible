package ansible

module: gcp_compute_global_forwarding_rule: {
	module: "gcp_compute_global_forwarding_rule"
	description: [
		"Represents a GlobalForwardingRule resource. Global forwarding rules are used to forward traffic to the correct load balancer for HTTP load balancing. Global forwarding rules can only be used for HTTP load balancing.",
		"For more information, see U(https://cloud.google.com/compute/docs/load-balancing/http/) .",
	]

	short_description: "Creates a GCP GlobalForwardingRule"
	version_added:     "2.6"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		ip_address: {
			description: [
				"The IP address that this forwarding rule is serving on behalf of.",
				"Addresses are restricted based on the forwarding rule's load balancing scheme (EXTERNAL or INTERNAL) and scope (global or regional).",
				"When the load balancing scheme is EXTERNAL, for global forwarding rules, the address must be a global IP, and for regional forwarding rules, the address must live in the same region as the forwarding rule. If this field is empty, an ephemeral IPv4 address from the same scope (global or regional) will be assigned. A regional forwarding rule supports IPv4 only. A global forwarding rule supports either IPv4 or IPv6.",
				"When the load balancing scheme is INTERNAL, this can only be an RFC 1918 IP address belonging to the network/subnet configured for the forwarding rule. By default, if this field is empty, an ephemeral internal IP address will be automatically allocated from the IP range of the subnet or network configured for this forwarding rule.",
				"An address can be specified either by a literal IP address or a URL reference to an existing Address resource. The following examples are all valid: * 100.1.2.3 * U(https://www.googleapis.com/compute/v1/projects/project/regions/region/addresses/address) * projects/project/regions/region/addresses/address * regions/region/addresses/address * global/addresses/address * address .",
			]

			required: false
			type:     "str"
		}
		ip_protocol: {
			description: [
				"The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP, AH, SCTP or ICMP. When the load balancing scheme is INTERNAL_SELF_MANAGED, only TCP is valid.",
				"Some valid choices include: \"TCP\", \"UDP\", \"ESP\", \"AH\", \"SCTP\", \"ICMP\"",
			]
			required: false
			type:     "str"
		}
		ip_version: {
			description: [
				"The IP Version that will be used by this global forwarding rule.",
				"Valid options are IPV4 or IPV6.",
				"Some valid choices include: \"IPV4\", \"IPV6\"",
			]
			required: false
			type:     "str"
		}
		load_balancing_scheme: {
			description: [
				"This signifies what the GlobalForwardingRule will be used for.",
				"The value of INTERNAL_SELF_MANAGED means that this will be used for Internal Global HTTP(S) LB. The value of EXTERNAL means that this will be used for External Global Load Balancing (HTTP(S) LB, External TCP/UDP LB, SSL Proxy) NOTE: Currently global forwarding rules cannot be used for INTERNAL load balancing.",
				"Some valid choices include: \"EXTERNAL\", \"INTERNAL_SELF_MANAGED\"",
			]
			required: false
			default:  "EXTERNAL"
			type:     "str"
		}
		metadata_filters: {
			description: [
				"Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS clients present node metadata. If a match takes place, the relevant routing configuration is made available to those proxies.",
				"For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels in the provided metadata.",
				"metadataFilters specified here can be overridden by those specified in the UrlMap that this ForwardingRule references.",
				"metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.",
			]

			required:      false
			type:          "list"
			version_added: "2.10"
			suboptions: {
				filter_match_criteria: {
					description: [
						"Specifies how individual filterLabel matches within the list of filterLabels contribute towards the overall metadataFilter match.",
						"MATCH_ANY - At least one of the filterLabels must have a matching label in the provided metadata.",
						"MATCH_ALL - All filterLabels must have matching labels in the provided metadata.",
						"Some valid choices include: \"MATCH_ANY\", \"MATCH_ALL\"",
					]
					required: true
					type:     "str"
				}
				filter_labels: {
					description: [
						"The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.",
					]

					required: true
					type:     "list"
					suboptions: {
						name: {
							description: [
								"Name of the metadata label. The length must be between 1 and 1024 characters, inclusive.",
							]

							required: true
							type:     "str"
						}
						value: {
							description: [
								"The value that the label must match. The value has a maximum length of 1024 characters.",
							]

							required: true
							type:     "str"
						}
					}
				}
			}
		}
		name: {
			description: [
				"Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		network: {
			description: [
				"This field is not used for external load balancing.",
				"For INTERNAL_SELF_MANAGED load balancing, this field identifies the network that the load balanced IP should belong to for this global forwarding rule. If this field is not specified, the default network will be used.",
				"This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		port_range: {
			description: [
				"This field is used along with the target field for TargetHttpProxy, TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool, TargetInstance.",
				"Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed to ports in the specified range will be forwarded to target.",
				"Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.",
				"Some types of forwarding target have constraints on the acceptable ports: * TargetHttpProxy: 80, 8080 * TargetHttpsProxy: 443 * TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1883, 5222 * TargetVpnGateway: 500, 4500 .",
			]

			required: false
			type:     "str"
		}
		target: {
			description: [
				"The URL of the target resource to receive the matched traffic.",
				"The forwarded traffic must be of a type appropriate to the target object.",
				"For INTERNAL_SELF_MANAGED load balancing, only HTTP and HTTPS targets are valid.",
			]
			required: true
			type:     "str"
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
}
