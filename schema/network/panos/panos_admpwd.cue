package ansible

module: panos_admpwd: {
	module:            "panos_admpwd"
	short_description: "change admin password of PAN-OS device using SSH with SSH key"
	description: [
		"Change the admin password of PAN-OS via SSH using a SSH key for authentication.",
		"Useful for AWS instances where the first login should be done via SSH.",
	]
	author:        "Luigi Mori (@jtschichold), Ivan Bojer (@ivanbojer)"
	version_added: "2.3"
	requirements: [
		"paramiko",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	options: {
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device",
			]
			required: true
		}
		username: {
			description: [
				"username for initial authentication",
			]
			required: false
			default:  "admin"
		}
		key_filename: {
			description: [
				"filename of the SSH Key to use for authentication",
			]
			required: true
		}
		newpassword: {
			description: [
				"password to configure for admin on the PAN-OS device",
			]
			required: true
		}
	}
}
