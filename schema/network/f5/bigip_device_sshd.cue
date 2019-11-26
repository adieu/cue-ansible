package ansible

module: bigip_device_sshd: {
	module:            "bigip_device_sshd"
	short_description: "Manage the SSHD settings of a BIG-IP"
	description: [
		"Manage the SSHD settings of a BIG-IP.",
	]
	version_added: 2.2
	options: {
		allow: {
			description: [
				"Specifies, if you have enabled SSH access, the IP address or address range for other systems that can use SSH to communicate with this system.",
				"To specify all addresses, use the value C(all).",
				"IP address can be specified, such as 172.27.1.10.",
				"IP rangees can be specified, such as 172.27.*.* or 172.27.0.0/255.255.0.0.",
				"To remove SSH access specify an empty list or an empty string.",
			]
			type: "list"
		}
		banner: {
			description: [
				"Whether to enable the banner or not.",
			]
			type: "str"
			choices: [
				"enabled",
				"disabled",
			]
		}
		banner_text: {
			description: [
				"Specifies the text to include on the pre-login banner that displays when a user attempts to login to the system using SSH.",
			]

			type: "str"
		}
		inactivity_timeout: {
			description: [
				"Specifies the number of seconds before inactivity causes an SSH session to log out.",
			]

			type: "int"
		}
		log_level: {
			description: [
				"Specifies the minimum SSHD message level to include in the system log.",
			]
			type: "str"
			choices: [
				"debug",
				"debug1",
				"debug2",
				"debug3",
				"error",
				"fatal",
				"info",
				"quiet",
				"verbose",
			]
		}
		login: {
			description: [
				"Specifies, when checked C(enabled), that the system accepts SSH communications.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
			]
		}
		port: {
			description: [
				"Port that you want the SSH daemon to run on.",
			]
			type: "int"
		}
	}
	notes: [
		"Requires BIG-IP version 12.0.0 or greater",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
