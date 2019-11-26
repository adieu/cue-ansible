package ansible

module: panos_restart: {
	module:            "panos_restart"
	short_description: "restart a device"
	description: [
		"Restart a device",
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
	extends_documentation_fragment: "panos"
}
