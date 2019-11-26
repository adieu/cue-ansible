package ansible

module: purefa_phonehome: {
	module:            "purefa_phonehome"
	version_added:     "2.9"
	short_description: "Enable or Disable Pure Storage FlashArray Phonehome"
	description: [
		"Enable or Disable Phonehome for a Pure Storage FlashArray.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: state: {
		description: [
			"Define state of phonehome",
		]
		type:    "str"
		default: "present"
		choices: ["present", "absent"]
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
