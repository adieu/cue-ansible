package ansible

module: netapp_e_syslog: {
	module:            "netapp_e_syslog"
	short_description: "NetApp E-Series manage syslog settings"
	description: [
		"Allow the syslog settings to be configured for an individual E-Series storage-system",
	]
	version_added: "2.7"
	author:        "Nathan Swartz (@ndswartz)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			description: [
				"Add or remove the syslog server configuration for E-Series storage array.",
				"Existing syslog server configuration will be removed or updated when its address matches I(address).",
				"Fully qualified hostname that resolve to an IPv4 address that matches I(address) will not be treated as a match.",
			]

			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		address: description: [
			"The syslog server's IPv4 address or a fully qualified hostname.",
			"All existing syslog configurations will be removed when I(state=absent) and I(address=None).",
		]
		port: {
			description: [
				"This is the port the syslog server is using.",
			]
			default: 514
		}
		protocol: {
			description: [
				"This is the transmission protocol the syslog server's using to receive syslog messages.",
			]
			choices: [
				"udp",
				"tcp",
				"tls",
			]
			default: "udp"
		}
		components: {
			description: [
				"The e-series logging components define the specific logs to transfer to the syslog server.",
				"At the time of writing, 'auditLog' is the only logging component but more may become available.",
			]
			default: ["auditLog"]
		}
		test: {
			description: [
				"This forces a test syslog message to be sent to the stated syslog server.",
				"Only attempts transmission when I(state=present).",
			]
			type:    "bool"
			default: false
		}
		log_path: {
			description: [
				"This argument specifies a local path for logging purposes.",
			]
			required: false
		}
	}
	notes: [
		"Check mode is supported.",
		"This API is currently only supported with the Embedded Web Services API v2.12 (bundled with SANtricity OS 11.40.2) and higher.",
	]
}
