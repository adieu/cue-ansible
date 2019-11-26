package ansible

module: aci_firmware_group_node: {
	module: "aci_firmware_group_node"

	short_description: "This modules adds and remove nodes from the firmware group"

	version_added: "2.8"

	description: [
		"This module addes/deletes a node to the firmware group. This modules assigns 1 node at a time.",
	]

	options: {
		group: {
			description: [
				"This is the name of the firmware group",
			]
			type:     "str"
			required: true
		}
		node: {
			description: [
				"The node to be added to the firmware group - the value equals the NodeID",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present", "query"]
		}
	}

	extends_documentation_fragment: [
		"aci",
	]

	author: ["Steven Gerhart (@sgerhart)"]
}
