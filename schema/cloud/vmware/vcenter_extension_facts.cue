package ansible

module: vcenter_extension_facts: {
	module: "vcenter_extension_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vcenter_extension_info) instead."
	}
	short_description: "Gather facts vCenter extensions"
	description: [
		"This module can be used to gather facts about vCenter extension.",
	]
	version_added: 2.8
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	extends_documentation_fragment: "vmware.documentation"
}
