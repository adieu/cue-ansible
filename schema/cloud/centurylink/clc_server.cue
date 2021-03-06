package ansible

module: clc_server: {
	module:            "clc_server"
	short_description: "Create, Delete, Start and Stop servers in CenturyLink Cloud."
	description: [
		"An Ansible module to Create, Delete, Start and Stop servers in CenturyLink Cloud.",
	]
	version_added: "2.0"
	options: {
		additional_disks: {
			description: [
				"The list of additional disks for the server",
			]
			default: []
		}
		add_public_ip: {
			description: [
				"Whether to add a public ip to the server",
			]
			type:    "bool"
			default: "no"
		}
		alias: description: [
			"The account alias to provision the servers under.",
		]
		anti_affinity_policy_id: description: [
			"The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_name'.",
		]
		anti_affinity_policy_name: description: [
			"The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_id'.",
		]
		alert_policy_id: description: [
			"The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_name'.",
		]
		alert_policy_name: description: [
			"The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_id'.",
		]
		count: {
			description: [
				"The number of servers to build (mutually exclusive with exact_count)",
			]
			default: 1
		}
		count_group: description: [
			"Required when exact_count is specified.  The Server Group use to determine how many servers to deploy.",
		]
		cpu: {
			description: [
				"How many CPUs to provision on the server",
			]
			default: 1
		}
		cpu_autoscale_policy_id: description: [
			"The autoscale policy to assign to the server.",
		]
		custom_fields: {
			description: [
				"The list of custom fields to set on the server.",
			]
			default: []
		}
		description: description: [
			"The description to set for the server.",
		]
		exact_count: description: [
			"Run in idempotent mode.  Will insure that this exact number of servers are running in the provided group, creating and deleting them to reach that count.  Requires count_group to be set.",
		]

		group: {
			description: [
				"The Server Group to create servers under.",
			]
			default: "Default Group"
		}
		ip_address: description: [
			"The IP Address for the server. One is assigned if not provided.",
		]
		location: description: [
			"The Datacenter to create servers in.",
		]
		managed_os: {
			description: [
				"Whether to create the server as 'Managed' or not.",
			]
			type:     "bool"
			default:  "no"
			required: false
		}
		memory: {
			description: [
				"Memory in GB.",
			]
			default: 1
		}
		name: description: [
			"A 1 to 6 character identifier to use for the server. This is required when state is 'present'",
		]
		network_id: description: [
			"The network UUID on which to create servers.",
		]
		packages: {
			description: [
				"The list of blue print packages to run on the server after its created.",
			]
			default: []
		}
		password: description: [
			"Password for the administrator / root user",
		]
		primary_dns: description: [
			"Primary DNS used by the server.",
		]
		public_ip_protocol: {
			description: [
				"The protocol to use for the public ip if add_public_ip is set to True.",
			]
			default: "TCP"
			choices: ["TCP", "UDP", "ICMP"]
		}
		public_ip_ports: {
			description: [
				"A list of ports to allow on the firewall to the servers public ip, if add_public_ip is set to True.",
			]
			default: []
		}
		secondary_dns: description: [
			"Secondary DNS used by the server.",
		]
		server_ids: {
			description: [
				"Required for started, stopped, and absent states. A list of server Ids to insure are started, stopped, or absent.",
			]

			default: []
		}
		source_server_password: description: [
			"The password for the source server if a clone is specified.",
		]
		state: {
			description: [
				"The state to insure that the provided resources are in.",
			]
			default: "present"
			choices: ["present", "absent", "started", "stopped"]
		}
		storage_type: {
			description: [
				"The type of storage to attach to the server.",
			]
			default: "standard"
			choices: ["standard", "hyperscale"]
		}
		template: description: [
			"The template to use for server creation.  Will search for a template if a partial string is provided. This is required when state is 'present'",
		]

		ttl: description: [
			"The time to live for the server in seconds.  The server will be deleted when this time expires.",
		]
		type: {
			description: [
				"The type of server to create.",
			]
			default: "standard"
			choices: ["standard", "hyperscale", "bareMetal"]
		}
		configuration_id: description: [
			"Only required for bare metal servers. Specifies the identifier for the specific configuration type of bare metal server to deploy.",
		]

		os_type: {
			description: [
				"Only required for bare metal servers. Specifies the OS to provision with the bare metal server.",
			]

			choices: ["redHat6_64Bit", "centOS6_64Bit", "windows2012R2Standard_64Bit", "ubuntu14_64Bit"]
		}
		wait: {
			description: [
				"Whether to wait for the provisioning tasks to finish before returning.",
			]
			type:    "bool"
			default: "yes"
		}
	}
	requirements: [
		"python = 2.7",
		"requests >= 2.5.0",
		"clc-sdk",
	]
	author: "CLC Runner (@clc-runner)"
	notes: [
		"To use this module, it is required to set the below environment variables which enables access to the Centurylink Cloud - CLC_V2_API_USERNAME, the account login id for the centurylink cloud - CLC_V2_API_PASSWORD, the account password for the centurylink cloud",
		"Alternatively, the module accepts the API token and account alias. The API token can be generated using the CLC account login and password via the HTTP api call @ https://api.ctl.io/v2/authentication/login - CLC_V2_API_TOKEN, the API token generated from https://api.ctl.io/v2/authentication/login - CLC_ACCT_ALIAS, the account alias associated with the centurylink cloud",
		"Users can set CLC_V2_API_URL to specify an endpoint for pointing to a different CLC environment.",
	]
}
