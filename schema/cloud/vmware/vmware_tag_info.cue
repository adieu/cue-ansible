package ansible

module: vmware_tag_info: {
	module:            "vmware_tag_info"
	short_description: "Manage VMware tag info"
	description: [
		"This module can be used to collect information about VMware tags.",
		"Tag feature is introduced in vSphere 6 version, so this module is not supported in the earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
		"This module was called C(vmware_tag_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"vSphere Automation SDK",
	]
	extends_documentation_fragment: "vmware_rest_client.documentation"
}
