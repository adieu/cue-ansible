package ansible

module: vcenter_extension_info: {
	module:            "vcenter_extension_info"
	short_description: "Gather info vCenter extensions"
	description: [
		"This module can be used to gather information about vCenter extension.",
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
