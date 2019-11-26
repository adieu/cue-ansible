package ansible

module: pn_vtep: {
	module:            "pn_vtep"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to create/delete vtep"
	description: [
		"This module can be used to create a vtep and delete a vtep.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"vtep configuration command.",
			]
			required: false
			choices: ["present", "absent"]
			type:    "str"
			default: "present"
		}
		pn_name: {
			description: [
				"vtep name.",
			]
			required: false
			type:     "str"
		}
		pn_ip: {
			description: [
				"Primary IP address.",
			]
			required: false
			type:     "str"
		}
		pn_vrouter_name: {
			description: [
				"name of the vrouter service.",
			]
			required: false
			type:     "str"
		}
		pn_virtual_ip: {
			description: [
				"Virtual/Secondary IP address.",
			]
			required: false
			type:     "str"
		}
		pn_location: {
			description: [
				"switch name.",
			]
			required: false
			type:     "str"
		}
		pn_switch_in_cluster: {
			description: [
				"Tells whether switch in cluster or not.",
			]
			required: false
			type:     "bool"
			default:  true
		}
	}
}
