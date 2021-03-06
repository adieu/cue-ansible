package ansible

module: panos_mgtconfig: {
	module:            "panos_mgtconfig"
	short_description: "configure management settings of device"
	description: [
		"Configure management settings of device",
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
		dns_server_primary: description: [
			"address of primary DNS server",
		]
		dns_server_secondary: description: [
			"address of secondary DNS server",
		]
		panorama_primary: description: [
			"address of primary Panorama server",
		]
		panorama_secondary: description: [
			"address of secondary Panorama server",
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
