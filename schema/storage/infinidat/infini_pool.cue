package ansible

module: infini_pool: {
	module:            "infini_pool"
	version_added:     2.3
	short_description: "Create, Delete and Modify Pools on Infinibox"
	description: [
		"This module to creates, deletes or modifies pools on Infinibox.",
	]
	author: "Gregory Shulov (@GR360RY)"
	options: {
		name: {
			description: [
				"Pool Name",
			]
			required: true
		}
		state: {
			description: [
				"Creates/Modifies Pool when present or removes when absent",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		size: {
			description: [
				"Pool Physical Capacity in MB, GB or TB units. If pool size is not set on pool creation, size will be equal to 1TB. See examples.",
			]

			required: false
		}
		vsize: {
			description: [
				"Pool Virtual Capacity in MB, GB or TB units. If pool vsize is not set on pool creation, Virtual Capacity will be equal to Physical Capacity. See examples.",
			]

			required: false
		}
		ssd_cache: {
			description: [
				"Enable/Disable SSD Cache on Pool",
			]
			required: false
			default:  true
			type:     "bool"
		}
	}
	notes: [
		"Infinibox Admin level access is required for pool modifications",
	]
	extends_documentation_fragment: [
		"infinibox",
	]
	requirements: ["capacity"]
}
