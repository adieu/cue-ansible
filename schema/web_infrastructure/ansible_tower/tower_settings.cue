package ansible

module: tower_settings: {
	module:            "tower_settings"
	author:            "Nikhil Jain (@jainnikhil30)"
	version_added:     "2.7"
	short_description: "Modify Ansible Tower settings."
	description: [
		"Modify Ansible Tower settings. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"Name of setting to modify",
			]
			required: true
		}
		value: {
			description: [
				"Value to be modified for given setting.",
			]
			required: true
		}
	}
	extends_documentation_fragment: "tower"
}
