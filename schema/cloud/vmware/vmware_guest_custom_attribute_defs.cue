package ansible

module: vmware_guest_custom_attribute_defs: {
	module:            "vmware_guest_custom_attribute_defs"
	short_description: "Manage custom attributes definitions for virtual machine from VMware"
	description: [
		"This module can be used to add and remove custom attributes definitions for the given virtual machine from VMware.",
	]
	version_added: 2.7
	author: [
		"Jimmy Conner (@cigamit)",
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		attribute_key: {
			description: [
				"Name of the custom attribute definition.",
				"This is required parameter, if C(state) is set to C(present) or C(absent).",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"Manage definition of custom attributes.",
				"If set to C(present) and definition not present, then custom attribute definition is created.",
				"If set to C(present) and definition is present, then no action taken.",
				"If set to C(absent) and definition is present, then custom attribute definition is removed.",
				"If set to C(absent) and definition is absent, then no action taken.",
			]
			default: "present"
			choices: ["present", "absent"]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
