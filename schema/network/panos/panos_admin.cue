package ansible

module: panos_admin: {
	module:            "panos_admin"
	short_description: "Add or modify PAN-OS user accounts password."
	description: [
		"PanOS module that allows changes to the user account passwords by doing API calls to the Firewall using pan-api as the protocol.",
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
		admin_username: {
			description: [
				"username for admin user",
			]
			default: "admin"
		}
		admin_password: {
			description: [
				"password for admin user",
			]
			required: true
		}
		role: description: [
			"role for admin user",
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
