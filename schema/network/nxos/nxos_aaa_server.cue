package ansible

module: nxos_aaa_server: {
	module:                         "nxos_aaa_server"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages AAA server global configuration."
	description: [
		"Manages AAA server global configuration",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"The server_type parameter is always required.",
		"If encrypt_type is not supplied, the global AAA server key will be stored as encrypted (type 7).",
		"Changes to the global AAA server key with encrypt_type=0 are not idempotent.",
		"state=default will set the supplied parameters to their default values. The parameters that you want to default must also be set to default. If global_key=default, the global key will be removed.",
	]

	options: {
		server_type: {
			description: [
				"The server type is either radius or tacacs.",
			]
			required: true
			choices: ["radius", "tacacs"]
		}
		global_key: description: [
			"Global AAA shared secret or keyword 'default'.",
		]
		encrypt_type: {
			description: [
				"The state of encryption applied to the entered global key. O clear text, 7 encrypted. Type-6 encryption is not supported.",
			]

			choices: ["0", "7"]
		}
		deadtime: description: [
			"Duration for which a non-reachable AAA server is skipped, in minutes or keyword 'default. Range is 1-1440. Device default is 0.",
		]

		server_timeout: description: [
			"Global AAA server timeout period, in seconds or keyword 'default. Range is 1-60. Device default is 5.",
		]

		directed_request: {
			description: [
				"Enables direct authentication requests to AAA server or keyword 'default' Device default is disabled.",
			]

			choices: ["enabled", "disabled"]
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "default"]
		}
	}
}
