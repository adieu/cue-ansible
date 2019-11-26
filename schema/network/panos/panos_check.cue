package ansible

module: panos_check: {
	module:            "panos_check"
	short_description: "check if PAN-OS device is ready for configuration"
	description: [
		"Check if PAN-OS device is ready for being configured (no pending jobs).",
		"The check could be done once or multiple times until the device is ready.",
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
		timeout: {
			description: [
				"timeout of API calls",
			]
			required: false
			default:  0
		}
		interval: {
			description: [
				"time waited between checks",
			]
			required: false
			default:  0
		}
	}
	extends_documentation_fragment: "panos"
}
