package ansible

module: vultr_block_storage: {
	module:            "vultr_block_storage"
	short_description: "Manages block storage volumes on Vultr."
	description: [
		"Manage block storage volumes on Vultr.",
	]
	version_added: "2.7"
	author:        "Yanis Guenane (@Spredzy)"
	options: {
		name: {
			description: [
				"Name of the block storage volume.",
			]
			required: true
			aliases: ["description", "label"]
		}
		size: {
			description: [
				"Size of the block storage volume in GB.",
			]
			required: true
		}
		region: {
			description: [
				"Region the block storage volume is deployed into.",
			]
			required: true
		}
		state: {
			description: [
				"State of the block storage volume.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vultr"
}
