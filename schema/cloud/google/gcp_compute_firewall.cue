package ansible

module: gcp_compute_firewall: {
	module: "gcp_compute_firewall"
	description: [
		"Each network has its own firewall controlling access to and from the instances.",
		"All traffic to instances, even from other instances, is blocked by the firewall unless firewall rules are created to allow it.",
		"The default network has automatically created firewall rules that are shown in default firewall rules. No manually created network has automatically created firewall rules except for a default \"allow\" rule for outgoing traffic and a default \"deny\" for incoming traffic. For all networks except the default network, you must create any firewall rules you need.",
	]

	short_description: "Creates a GCP Firewall"
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
		allowed: {
			description: [
				"The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.",
			]

			required: false
			type:     "list"
			suboptions: {
				ip_protocol: {
					description: [
						"The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number.",
					]

					required: true
					type:     "str"
				}
				ports: {
					description: [
						"An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port.",
						"Example inputs include: [\"22\"], [\"80\",\"443\"], and [\"12345-12349\"].",
					]
					required: false
					type:     "list"
				}
			}
		}
		denied: {
			description: [
				"The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.",
			]

			required:      false
			type:          "list"
			version_added: "2.8"
			suboptions: {
				ip_protocol: {
					description: [
						"The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number.",
					]

					required: true
					type:     "str"
				}
				ports: {
					description: [
						"An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port.",
						"Example inputs include: [\"22\"], [\"80\",\"443\"], and [\"12345-12349\"].",
					]
					required: false
					type:     "list"
				}
			}
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		destination_ranges: {
			description: [
				"If destination ranges are specified, the firewall will apply only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Only IPv4 is supported.",
			]

			required:      false
			type:          "list"
			version_added: "2.8"
		}
		direction: {
			description: [
				"Direction of traffic to which this firewall applies; default is INGRESS. Note: For INGRESS traffic, it is NOT supported to specify destinationRanges; For EGRESS traffic, it is NOT supported to specify sourceRanges OR sourceTags.",
				"Some valid choices include: \"INGRESS\", \"EGRESS\"",
			]
			required:      false
			type:          "str"
			version_added: "2.8"
		}
		disabled: {
			description: [
				"Denotes whether the firewall rule is disabled, i.e not applied to the network it is associated with. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.",
			]

			required:      false
			type:          "bool"
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		network: {
			description: [
				"URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: U(https://www.googleapis.com/compute/v1/projects/myproject/global/) networks/my-network projects/myproject/global/networks/my-network global/networks/default .",
				"This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to \"{{ name-of-resource }}\"",
			]

			required: false
			default: selfLink: "global/networks/default"
			type: "dict"
		}
		priority: {
			description: [
				"Priority for this rule. This is an integer between 0 and 65535, both inclusive. When not specified, the value assumed is 1000. Relative priorities determine precedence of conflicting rules. Lower value of priority implies higher precedence (eg, a rule with priority 0 has higher precedence than a rule with priority 1). DENY rules take precedence over ALLOW rules having equal priority.",
			]

			required:      false
			default:       "1000"
			type:          "int"
			version_added: "2.8"
		}
		source_ranges: {
			description: [
				"If source ranges are specified, the firewall will apply only to traffic that has source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both properties are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP that belongs to a tag listed in the sourceTags property. The connection does not need to match both properties for the firewall to apply. Only IPv4 is supported.",
			]

			required: false
			type:     "list"
		}
		source_service_accounts: {
			description: [
				"If source service accounts are specified, the firewall will apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both properties for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.",
			]

			required:      false
			type:          "list"
			version_added: "2.8"
		}
		source_tags: {
			description: [
				"If source tags are specified, the firewall will apply only to traffic with source IP that belongs to a tag listed in source tags. Source tags cannot be used to control traffic to an instance's external IP address. Because tags are associated with an instance, not an IP address. One or both of sourceRanges and sourceTags may be set. If both properties are set, the firewall will apply to traffic that has source IP address within sourceRanges OR the source IP that belongs to a tag listed in the sourceTags property. The connection does not need to match both properties for the firewall to apply.",
			]

			required: false
			type:     "list"
		}
		target_service_accounts: {
			description: [
				"A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[].",
				"targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.",
			]

			required:      false
			type:          "list"
			version_added: "2.8"
		}
		target_tags: {
			description: [
				"A list of instance tags indicating sets of instances located in the network that may make network connections as specified in allowed[].",
				"If no targetTags are specified, the firewall rule applies to all instances on the specified network.",
			]

			required: false
			type:     "list"
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
	notes: [
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/firewalls)",
		"Official Documentation: U(https://cloud.google.com/vpc/docs/firewalls)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
