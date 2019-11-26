package ansible

module: vultr_server: {
	module:            "vultr_server"
	short_description: "Manages virtual servers on Vultr."
	description: [
		"Deploy, start, stop, update, restart, reinstall servers.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the server."]
			required: true
			aliases: ["label"]
			type: "str"
		}
		hostname: {
			description: ["The hostname to assign to this server."]
			type: "str"
		}
		os: {
			description: [
				"The operating system name or ID.",
				"Required if the server does not yet exist and is not restoring from a snapshot.",
			]
			type: "str"
		}
		snapshot: {
			version_added: "2.8"
			description: ["Name or ID of the snapshot to restore the server from."]
			type: "str"
		}
		firewall_group: {
			description: ["The firewall group description or ID to assign this server to."]
			type: "str"
		}
		plan: {
			description: [
				"Plan name or ID to use for the server.",
				"Required if the server does not yet exist.",
			]
			type: "str"
		}
		force: {
			description: [
				"Force stop/start the server if required to apply changes",
				"Otherwise a running server will not be changed.",
			]
			type:    "bool"
			default: false
		}
		notify_activate: {
			description: [
				"Whether to send an activation email when the server is ready or not.",
				"Only considered on creation.",
			]
			type: "bool"
		}
		private_network_enabled: {
			description: ["Whether to enable private networking or not."]
			type: "bool"
		}
		auto_backup_enabled: {
			description: ["Whether to enable automatic backups or not."]
			type: "bool"
		}
		ipv6_enabled: {
			description: ["Whether to enable IPv6 or not."]
			type: "bool"
		}
		tag: {
			description: ["Tag for the server."]
			type: "str"
		}
		user_data: {
			description: ["User data to be passed to the server."]
			type: "str"
		}
		startup_script: {
			description: [
				"Name or ID of the startup script to execute on boot.",
				"Only considered while creating the server.",
			]
			type: "str"
		}
		ssh_keys: {
			description: ["List of SSH key names or IDs passed to the server on creation."]
			aliases: ["ssh_key"]
			type: "list"
		}
		reserved_ip_v4: {
			description: [
				"IP address of the floating IP to use as the main IP of this server.",
				"Only considered on creation.",
			]
			type: "str"
		}
		region: {
			description: [
				"Region name or ID the server is deployed into.",
				"Required if the server does not yet exist.",
			]
			type: "str"
		}
		state: {
			description: ["State of the server."]
			default: "present"
			choices: ["present", "absent", "restarted", "reinstalled", "started", "stopped"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vultr"
}
