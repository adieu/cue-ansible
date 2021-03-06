package ansible

module: vmware_category_info: {
	module:            "vmware_category_info"
	short_description: "Gather info about VMware tag categories"
	description: [
		"This module can be used to gather information about VMware tag categories.",
		"Tag feature is introduced in vSphere 6 version, so this module is not supported in earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
	]
	version_added: "2.9"
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
