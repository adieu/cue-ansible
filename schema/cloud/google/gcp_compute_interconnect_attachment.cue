package ansible

module: gcp_compute_interconnect_attachment: {
	module: "gcp_compute_interconnect_attachment"
	description: [
		"Represents an InterconnectAttachment (VLAN attachment) resource. For more information, see Creating VLAN Attachments.",
	]

	short_description: "Creates a GCP InterconnectAttachment"
	version_added:     "2.8"
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
		admin_enabled: {
			description: [
				"Whether the VLAN attachment is enabled or disabled. When using PARTNER type this will Pre-Activate the interconnect attachment .",
			]

			required:      false
			type:          "bool"
			version_added: "2.9"
		}
		interconnect: {
			description: [
				"URL of the underlying Interconnect object that this attachment's traffic will traverse through. Required if type is DEDICATED, must not be set if type is PARTNER.",
			]

			required: false
			type:     "str"
		}
		description: {
			description: [
				"An optional description of this resource.",
			]
			required: false
			type:     "str"
		}
		bandwidth: {
			description: [
				"Provisioned bandwidth capacity for the interconnect attachment.",
				"For attachments of type DEDICATED, the user can set the bandwidth.",
				"For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.",
				"Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, Defaults to BPS_10G .",
				"Some valid choices include: \"BPS_50M\", \"BPS_100M\", \"BPS_200M\", \"BPS_300M\", \"BPS_400M\", \"BPS_500M\", \"BPS_1G\", \"BPS_2G\", \"BPS_5G\", \"BPS_10G\", \"BPS_20G\", \"BPS_50G\"",
			]

			required:      false
			type:          "str"
			version_added: "2.9"
		}
		edge_availability_domain: {
			description: [
				"Desired availability domain for the attachment. Only available for type PARTNER, at creation time. For improved reliability, customers should configure a pair of attachments with one per availability domain. The selected availability domain will be provided to the Partner via the pairing key so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.",
			]

			required: false
			type:     "str"
		}
		type: {
			description: [
				"The type of InterconnectAttachment you wish to create. Defaults to DEDICATED.",
				"Some valid choices include: \"DEDICATED\", \"PARTNER\", \"PARTNER_PROVIDER\"",
			]
			required: false
			type:     "str"
		}
		router: {
			description: [
				"URL of the cloud router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.",
				"This field represents a link to a Router resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_router task and then set this router field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		candidate_subnets: {
			description: [
				"Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment.",
				"All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.",
			]

			required: false
			type:     "list"
		}
		vlan_tag8021q: {
			description: [
				"The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When using PARTNER type this will be managed upstream.",
			]

			required: false
			type:     "int"
		}
		region: {
			description: [
				"Region where the regional interconnect attachment resides.",
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
