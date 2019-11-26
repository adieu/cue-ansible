package ansible

module: purefa_banner: {
	module:            "purefa_banner"
	version_added:     "2.9"
	short_description: "Configure Pure Storage FlashArray GUI and SSH MOTD message"
	description: [
		"Configure MOTD for Pure Storage FlashArrays.",
		"This will be shown during an SSH or GUI login to the array.",
		"Multiple line messages can be achieved using \\\\n.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: "Set ot delete the MOTD"
			default:     "present"
			type:        "str"
			choices: ["present", "absent"]
		}
		banner: {
			description: "Banner text, or MOTD, to use"
			type:        "str"
			default:     "Welcome to the machine..."
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
