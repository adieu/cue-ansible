package ansible

module: vmware_local_user_info: {
	module:            "vmware_local_user_info"
	short_description: "Gather info about users on the given ESXi host"
	description: [
		"This module can be used to gather information about users present on the given ESXi host system in VMware infrastructure.",
		"All variables and VMware object names are case sensitive.",
		"User must hold the 'Authorization.ModifyPermissions' privilege to invoke this module.",
	]
	version_added: "2.9"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on ESXi 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	extends_documentation_fragment: "vmware.documentation"
}
