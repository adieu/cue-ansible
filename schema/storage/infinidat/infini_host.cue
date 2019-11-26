package ansible

module: infini_host: {
	module:            "infini_host"
	version_added:     2.3
	short_description: "Create, Delete and Modify Hosts on Infinibox"
	description: [
		"This module creates, deletes or modifies hosts on Infinibox.",
	]
	author: "Gregory Shulov (@GR360RY)"
	options: {
		name: {
			description: [
				"Host Name",
			]
			required: true
		}
		state: {
			description: [
				"Creates/Modifies Host when present or removes when absent",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		wwns: {
			description: [
				"List of wwns of the host",
			]
			required: false
		}
		volume: {
			description: [
				"Volume name to map to the host",
			]
			required: false
		}
	}
	extends_documentation_fragment: ["infinibox"]
}
