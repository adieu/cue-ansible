package ansible

module: panos_loadcfg: {
	module:            "panos_loadcfg"
	short_description: "load configuration on PAN-OS device"
	description: [
		"Load configuration on PAN-OS device",
	]
	author:        "Luigi Mori (@jtschichold), Ivan Bojer (@ivanbojer)"
	version_added: "2.3"
	requirements: [
		"pan-python",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	options: {
		file: description: [
			"configuration file to load",
		]
		commit: {
			description: [
				"commit if changed",
			]
			type:    "bool"
			default: "yes"
		}
	}
	extends_documentation_fragment: "panos"
}
