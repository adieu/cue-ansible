package ansible

module: eos_eapi: {
	module:            "eos_eapi"
	version_added:     "2.1"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Manage and configure Arista EOS eAPI."
	requirements: [
		"EOS v4.12 or greater",
	]
	description: [
		"Use to enable or disable eAPI access, and set the port and state of http, https, local_http and unix-socket servers.",
		"When enabling eAPI access the default is to enable HTTP on port 80, enable HTTPS on port 443, disable local HTTP, and disable Unix socket server. Use the options listed below to override the default configuration.",
		"Requires EOS v4.12 or greater.",
	]
	extends_documentation_fragment: "eos"
	options: {
		http: {
			description: [
				"The C(http) argument controls the operating state of the HTTP transport protocol when eAPI is present in the running-config. When the value is set to True, the HTTP protocol is enabled and when the value is set to False, the HTTP protocol is disabled. By default, when eAPI is first configured, the HTTP protocol is disabled.",
			]

			type:    "bool"
			default: "no"
			aliases: ["enable_http"]
		}
		http_port: {
			description: [
				"Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.",
			]

			default: 80
		}
		https: {
			description: [
				"The C(https) argument controls the operating state of the HTTPS transport protocol when eAPI is present in the running-config. When the value is set to True, the HTTPS protocol is enabled and when the value is set to False, the HTTPS protocol is disabled. By default, when eAPI is first configured, the HTTPS protocol is enabled.",
			]

			type:    "bool"
			default: "yes"
			aliases: ["enable_https"]
		}
		https_port: {
			description: [
				"Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.",
			]

			default: 443
		}
		local_http: {
			description: [
				"The C(local_http) argument controls the operating state of the local HTTP transport protocol when eAPI is present in the running-config.  When the value is set to True, the HTTP protocol is enabled and restricted to connections from localhost only.  When the value is set to False, the HTTP local protocol is disabled.",
				"Note is value is independent of the C(http) argument",
			]
			type:    "bool"
			default: "no"
			aliases: ["enable_local_http"]
		}
		local_http_port: {
			description: [
				"Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.",
			]

			default: 8080
		}
		socket: {
			description: [
				"The C(socket) argument controls the operating state of the UNIX Domain Socket used to receive eAPI requests.  When the value of this argument is set to True, the UDS will listen for eAPI requests.  When the value is set to False, the UDS will not be available to handle requests.  By default when eAPI is first configured, the UDS is disabled.",
			]

			type:    "bool"
			default: "no"
			aliases: ["enable_socket"]
		}
		timeout: {
			description: [
				"The time (in seconds) to wait for the eAPI configuration to be reflected in the running-config.",
			]

			type:    "int"
			default: 30
		}
		vrf: {
			description: [
				"The C(vrf) argument will configure eAPI to listen for connections in the specified VRF.  By default, eAPI transports will listen for connections in the global table.  This value requires the VRF to already be created otherwise the task will fail.",
			]

			default:       "default"
			version_added: "2.2"
		}
		config: {
			description: [
				"The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.",
			]

			version_added: "2.2"
		}
		state: {
			description: [
				"The C(state) argument controls the operational state of eAPI on the remote device.  When this argument is set to C(started), eAPI is enabled to receive requests and when this argument is C(stopped), eAPI is disabled and will not receive requests.",
			]

			default: "started"
			choices: ["started", "stopped"]
		}
	}
}
