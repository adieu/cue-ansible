package ansible

module: pn_admin_syslog: {
	module:            "pn_admin_syslog"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/modify/delete admin-syslog"
	description: [
		"This module can be used to create the scope and other parameters of syslog event collection.",
		"This module can be used to modify parameters of syslog event collection.",
		"This module can be used to delete the scope and other parameters of syslog event collection.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(present) to create admin-syslog and C(absent) to delete admin-syslog C(update) to modify the admin-syslog.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent", "update"]
		}
		pn_scope: {
			description: [
				"Scope of the system log.",
			]
			required: false
			type:     "str"
			choices: ["local", "fabric"]
		}
		pn_host: {
			description: [
				"Hostname to log system events.",
			]
			required: false
			type:     "str"
		}
		pn_port: {
			description: [
				"Host port.",
			]
			required: false
			type:     "str"
		}
		pn_transport: {
			description: [
				"Transport for log events - tcp/tls or udp.",
			]
			required: false
			type:     "str"
			choices: ["tcp-tls", "udp"]
			default: "udp"
		}
		pn_message_format: {
			description: [
				"message-format for log events - structured or legacy.",
			]
			required: false
			choices: ["structured", "legacy"]
			type: "str"
		}
		pn_name: {
			description: [
				"name of the system log.",
			]
			required: false
			type:     "str"
		}
	}
}
