package ansible

module: panos_dag: {
	module:            "panos_dag"
	short_description: "create a dynamic address group"
	description: [
		"Create a dynamic address group object in the firewall used for policy rules",
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
		dag_name: {
			description: [
				"name of the dynamic address group",
			]
			required: true
		}
		dag_filter: {
			description: [
				"dynamic filter user by the dynamic address group",
			]
			required: true
		}
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
