package ansible

module: gcp_compute_subnetwork: {
	module: "gcp_compute_subnetwork"
	description: [
		"A VPC network is a virtual version of the traditional physical networks that exist within and between physical data centers. A VPC network provides connectivity for your Compute Engine virtual machine (VM) instances, Container Engine containers, App Engine Flex services, and other network-related resources.",
		"Each GCP project contains one or more VPC networks. Each VPC network is a global entity spanning all GCP regions. This global VPC network allows VM instances and other resources to communicate with each other via internal, private IP addresses.",
		"Each VPC network is subdivided into subnets, and each subnet is contained within a single region. You can have more than one subnet in a region for a given VPC network. Each subnet has a contiguous private RFC1918 IP space. You create instances, containers, and the like in these subnets.",
		"When you create an instance, you must create it in a subnet, and the instance draws its internal IP address from that subnet.",
		"Virtual machine (VM) instances in a VPC network can communicate with instances in all other subnets of the same VPC network, regardless of region, using their RFC1918 private IP addresses. You can isolate portions of the network, even entire subnets, using firewall rules.",
	]

	short_description: "Creates a GCP Subnetwork"
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
				"An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.",
			]

			required: false
			type:     "str"
		}
		ip_cidr_range: {
			description: [
				"The range of internal addresses that are owned by this subnetwork.",
				"Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported.",
			]

			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		network: {
			description: [
				"The network this subnet belongs to.",
				"Only networks that are in the distributed mode can have subnetworks.",
				"This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		enable_flow_logs: {
			description: [
				"Whether to enable flow logging for this subnetwork.",
			]
			required:      false
			type:          "bool"
			version_added: "2.8"
		}
		secondary_ip_ranges: {
			description: [
				"An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges.",
			]

			required:      false
			type:          "list"
			version_added: "2.8"
			suboptions: {
				range_name: {
					description: [
						"The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the subnetwork.",
					]

					required: true
					type:     "str"
				}
				ip_cidr_range: {
					description: [
						"The range of IP addresses belonging to this subnetwork secondary range. Provide this property when you create the subnetwork.",
						"Ranges must be unique and non-overlapping with all primary and secondary IP ranges within a network. Only IPv4 is supported.",
					]

					required: true
					type:     "str"
				}
			}
		}
		private_ip_google_access: {
			description: [
				"When enabled, VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access.",
			]

			required: false
			type:     "bool"
		}
		region: {
			description: [
				"URL of the GCP region for this subnetwork.",
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
	notes: [
		"API Reference: U(https://cloud.google.com/compute/docs/reference/rest/beta/subnetworks)",
		"Private Google Access: U(https://cloud.google.com/vpc/docs/configure-private-google-access)",
		"Cloud Networking: U(https://cloud.google.com/vpc/docs/using-vpc)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
