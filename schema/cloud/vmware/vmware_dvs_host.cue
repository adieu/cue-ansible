package ansible

module: vmware_dvs_host: {
	module:            "vmware_dvs_host"
	short_description: "Add or remove a host from distributed virtual switch"
	description: [
		"Manage a host system from distributed virtual switch.",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
		"Abhijeet Kasurde (@Akasurde)",
		"Joseph Andreatta (@vmwjoseph)",
	]
	notes: [
		"Tested on vSphere 5.5",
	]
	requirements: [
		"python >= 2.7",
		"PyVmomi",
	]
	options: {
		esxi_hostname: {
			description: [
				"The ESXi hostname.",
			]
			required: true
			type:     "str"
		}
		switch_name: {
			description: [
				"The name of the Distributed vSwitch.",
			]
			required: true
			type:     "str"
		}
		vmnics: {
			description: [
				"The ESXi hosts vmnics to use with the Distributed vSwitch.",
			]
			required: true
			type:     "list"
		}
		state: {
			description: [
				"If the host should be present or absent attached to the vSwitch.",
			]
			choices: ["present", "absent"]
			required: true
			default:  "present"
			type:     "str"
		}
		vendor_specific_config: {
			description: [
				"List of key,value dictionaries for the Vendor Specific Configuration.",
				"Element attributes are:",
				"- C(key) (str): Key of setting. (default: None)",
				"- C(value) (str): Value of setting. (default: None)",
			]
			required:      false
			version_added: "2.9"
			type:          "list"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
