package ansible

module: cloudscale_server: {
	module:            "cloudscale_server"
	short_description: "Manages servers on the cloudscale.ch IaaS service"
	description: [
		"Create, update, start, stop and delete servers on the cloudscale.ch IaaS service.",
	]
	notes: [
		"Since version 2.8, I(uuid) and I(name) or not mutually exclusive anymore.",
		"If I(uuid) option is provided, it takes precedence over I(name) for server selection. This allows to update the server's name.",
		"If no I(uuid) option is provided, I(name) is used for server selection. If more than one server with this name exists, execution is aborted.",
		"Only the I(name) and I(flavor) are evaluated for the update.",
		"The option I(force=true) must be given to allow the reboot of existing running servers for applying the changes.",
	]
	version_added: "2.3"
	author: [
		"Gaudenz Steinlin (@gaudenz)",
		"René Moser (@resmo)",
	]
	options: {
		state: {
			description: ["State of the server."]
			choices: ["running", "stopped", "absent"]
			default: "running"
			type:    "str"
		}
		name: {
			description: [
				"Name of the Server.",
				"Either I(name) or I(uuid) are required.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the server.",
				"Either I(name) or I(uuid) are required.",
			]
			type: "str"
		}
		flavor: {
			description: ["Flavor of the server."]
			type: "str"
		}
		image: {
			description: ["Image used to create the server."]
			type: "str"
		}
		volume_size_gb: {
			description: ["Size of the root volume in GB."]
			default: 10
			type:    "int"
		}
		bulk_volume_size_gb: {
			description: [
				"Size of the bulk storage volume in GB.",
				"No bulk storage volume if not set.",
			]
			type: "int"
		}
		ssh_keys: {
			description: [
				"List of SSH public keys.",
				"Use the full content of your .pub file here.",
			]
			type: "list"
		}
		password: {
			description: ["Password for the server."]
			type:          "str"
			version_added: "2.8"
		}
		use_public_network: {
			description: ["Attach a public network interface to the server."]
			default: true
			type:    "bool"
		}
		use_private_network: {
			description: ["Attach a private network interface to the server."]
			default: false
			type:    "bool"
		}
		use_ipv6: {
			description: ["Enable IPv6 on the public network interface."]
			default: true
			type:    "bool"
		}
		anti_affinity_with: {
			description: [
				"UUID of another server to create an anti-affinity group with.",
				"Mutually exclusive with I(server_groups).",
				"Deprecated, removed in version 2.11.",
			]
			type: "str"
		}
		server_groups: {
			description: [
				"List of UUID or names of server groups.",
				"Mutually exclusive with I(anti_affinity_with).",
			]
			type:          "list"
			version_added: "2.8"
		}
		user_data: {
			description: ["Cloud-init configuration (cloud-config) data to use for the server."]
			type: "str"
		}
		api_timeout: version_added: "2.5"
		force: {
			description: ["Allow to stop the running server for updating if necessary."]
			default:       false
			type:          "bool"
			version_added: "2.8"
		}
		tags: {
			description: ["Tags assosiated with the servers. Set this to C({}) to clear any tags."]
			type:          "dict"
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "cloudscale"
}
