package ansible

module: cs_affinitygroup: {
	module:            "cs_affinitygroup"
	short_description: "Manages affinity groups on Apache CloudStack based clouds."
	description: [
		"Create and remove affinity groups.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the affinity group."]
			type:     "str"
			required: true
		}
		affinity_type: {
			description: ["Type of the affinity group. If not specified, first found affinity type is used."]
			type: "str"
		}
		description: {
			description: ["Description of the affinity group."]
			type: "str"
		}
		state: {
			description: ["State of the affinity group."]
			type: "str"
			choices: ["present", "absent"]
			default: "present"
		}
		domain: {
			description: ["Domain the affinity group is related to."]
			type: "str"
		}
		account: {
			description: ["Account the affinity group is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the affinity group is related to."]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
