package ansible

module: vmware_resource_pool_info: {
	module:            "vmware_resource_pool_info"
	short_description: "Gathers info about resource pool information"
	description: [
		"This module can be used to gather information about all resource configuration information.",
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
	]
	extends_documentation_fragment: "vmware.documentation"
}
