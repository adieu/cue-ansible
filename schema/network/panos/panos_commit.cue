package ansible

module: panos_commit: {
	module:            "panos_commit"
	short_description: "commit firewall's candidate configuration"
	description: [
		"PanOS module that will commit firewall's candidate configuration on",
		"the device. The new configuration will become active immediately.",
	]
	author: [
		"Luigi Mori (@jtschichold)",
		"Ivan Bojer (@ivanbojer)",
		"Tomi Raittinen (@traittinen)",
	]
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
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device.",
			]
			required: true
		}
		password: {
			description: [
				"Password for authentication. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_PASSWORD) will be used instead.",
			]

			required: true
		}
		username: {
			description: [
				"Username for authentication. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_USERNAME) will be used instead if defined. C(admin) will be used if nothing above is defined.",
			]

			default: "admin"
		}
		interval: {
			description: [
				"interval for checking commit job",
			]
			default: 0.5
		}
		timeout: description: [
			"timeout for commit job",
		]
		sync: {
			description: [
				"if commit should be synchronous",
			]
			type:    "bool"
			default: "yes"
		}
		description: {
			description: [
				"Commit description/comment",
			]
			type:          "str"
			version_added: "2.8"
		}
		commit_changes_by: {
			description: [
				"Commit changes made by specified admin",
			]
			type:          "list"
			version_added: "2.8"
		}
		commit_vsys: {
			description: [
				"Commit changes for specified VSYS",
			]
			type:          "list"
			version_added: "2.8"
		}
	}
}
