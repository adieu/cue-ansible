package ansible

module: icx_system: {
	module:            "icx_system"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage the system attributes on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of node system attributes on Ruckus ICX 7000 series switches.  It provides an option to configure host system parameters or remove those parameters from the device active configuration.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		hostname: {
			description: [
				"Configure the device hostname parameter. This option takes an ASCII string value.",
			]
			type: "str"
		}
		domain_name: {
			description: [
				"Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the hostname to create a fully-qualified domain name.",
			]

			type: "list"
		}
		domain_search: {
			description: [
				"Provides the list of domain names to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.",
			]

			type: "list"
		}
		name_servers: {
			description: [
				"List of DNS name servers by IP address to use to perform name resolution lookups.",
			]

			type: "list"
		}
		aaa_servers: {
			description: [
				"Configures radius/tacacs server",
			]
			type: "list"
			suboptions: {
				type: {
					description: [
						"specify the type of the server",
					]
					type: "str"
					choices: ["radius", "tacacs"]
				}
				hostname: {
					description: [
						"Configures the host name of the RADIUS server",
					]
					type: "str"
				}
				auth_port_type: {
					description: [
						"specifies the type of the authentication port",
					]
					type: "str"
					choices: ["auth-port"]
				}
				auth_port_num: {
					description: [
						"Configures the authentication UDP port. The default value is 1812.",
					]
					type: "str"
				}
				acct_port_num: {
					description: [
						"Configures the accounting UDP port. The default value is 1813.",
					]
					type: "str"
				}
				acct_type: {
					description: [
						"Usage of the accounting port.",
					]
					type: "str"
					choices: ["accounting-only", "authentication-only", "authorization-only", "default"]
				}
				auth_key: {
					description: [
						"Configure the key for the server",
					]
					type: "str"
				}
				auth_key_type: {
					description: [
						"List of authentication level specified in the choices",
					]
					type: "list"
					choices: ["dot1x", "mac-auth", "web-auth"]
				}
			}
		}
		state: {
			description: [
				"State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration",
			]

			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
