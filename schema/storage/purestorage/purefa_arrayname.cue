package ansible

module: purefa_arrayname: {
	module:            "purefa_arrayname"
	version_added:     "2.9"
	short_description: "Configure Pure Storage FlashArray array name"
	description: [
		"Configure name of array for Pure Storage FlashArrays.",
		"Ideal for Day 0 initial configuration.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: "Set the array name"
			type:        "str"
			default:     "present"
			choices: ["present"]
		}
		name: {
			description: [
				"Name of the array. Must conform to correct naming schema.",
			]
			type:     "str"
			required: true
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
