package ansible

module: vmware_appliance_access_info: {
	module:            "vmware_appliance_access_info"
	short_description: "Gathers info about modes of access to the vCenter appliance using REST API."
	description: [
		"This module can be used to gather information about the four modes of accessing the VCSA.",
		"This module is based on REST API and uses httpapi connection plugin for persistent connection.",
		"The Appliance API works against the VCSA and uses the \"administrator@vsphere.local\" user.",
	]
	version_added: "2.10"
	author: [
		"Paul Knight (@n3pjk)",
	]
	notes: [
		"Tested on vSphere 6.7",
	]
	requirements: [
		"python >= 2.6",
	]
	options: access_mode: {
		description: [
			"Method of access to get to appliance",
			"If not specified, all modes will be returned.",
		]
		required: false
		choices: ["consolecli", "dcui", "shell", "ssh"]
		type: "str"
	}
	extends_documentation_fragment: "VmwareRestModule.documentation"
}
