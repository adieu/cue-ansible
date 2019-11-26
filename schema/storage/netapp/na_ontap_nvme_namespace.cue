package ansible

module: na_ontap_nvme_namespace: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Delete NVME namespace",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_nvme_namespace"
	options: {
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified namespace should exist or not.",
			]
			default: "present"
		}
		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			required: true
		}
		ostype: {
			description: [
				"Specifies the ostype for initiators",
			]
			choices: ["windows", "linux", "vmware", "xen", "hyper_v"]
		}
		size: {
			description: [
				"Size in bytes. Range is [0..2^63-1].",
			]

			type: "int"
		}
		path: {
			description: [
				"Namespace path.",
			]
			type: "str"
		}
	}
	short_description: "NetApp ONTAP Manage NVME Namespace"
	version_added:     "2.8"
}
