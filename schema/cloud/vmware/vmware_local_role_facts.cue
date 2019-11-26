package ansible

module: vmware_local_role_facts: {
	module: "vmware_local_role_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_local_role_info) instead."
	}
	short_description: "Gather facts about local roles on an ESXi host"
	description: [
		"This module can be used to gather facts about local role facts on an ESXi host",
	]
	version_added: 2.7
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on ESXi 6.5",
		"Be sure that the ESXi user used for login, has the appropriate rights to view roles",
		"The module returns a list of dict in version 2.8 and above.",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	extends_documentation_fragment: "vmware.documentation"
}
