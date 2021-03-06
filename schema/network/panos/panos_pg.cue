package ansible

module: panos_pg: {
	module:            "panos_pg"
	short_description: "create a security profiles group"
	description: [
		"Create a security profile group",
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
		pg_name: {
			description: [
				"name of the security profile group",
			]
			required: true
		}
		data_filtering: description: [
			"name of the data filtering profile",
		]
		file_blocking: description: [
			"name of the file blocking profile",
		]
		spyware: description: [
			"name of the spyware profile",
		]
		url_filtering: description: [
			"name of the url filtering profile",
		]
		virus: description: [
			"name of the anti-virus profile",
		]
		vulnerability: description: [
			"name of the vulnerability profile",
		]
		wildfire: description: [
			"name of the wildfire analysis profile",
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
