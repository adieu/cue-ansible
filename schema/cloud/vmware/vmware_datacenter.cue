package ansible

module: vmware_datacenter: {
	module:            "vmware_datacenter"
	short_description: "Manage VMware vSphere Datacenters"
	description: [
		"This module can be used to manage (create, delete) VMware vSphere Datacenters.",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
		"Kamil Szczygiel (@kamsz)",
	]
	notes: [
		"Tested on vSphere 6.0, 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		datacenter_name: {
			description: [
				"The name of the datacenter the cluster will be created in.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"If the datacenter should be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
