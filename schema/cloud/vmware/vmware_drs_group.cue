package ansible

module: vmware_drs_group: {
	author: [
		"Karsten Kaj Jakobsen (@karstenjakobsen)",
	]
	description: [
		"This module can be used to create VM/Host groups in a given cluster. Creates a vm group if C(vms) is set. Creates a host group if C(hosts) is set.",
	]
	extends_documentation_fragment: "vmware.documentation"
	module:                         "vmware_drs_group"
	notes: [
		"Tested on vSphere 6.5 and 6.7",
	]
	options: {
		cluster_name: {
			description: [
				"Cluster to create vm/host group.",
			]
			required: true
			type:     "str"
		}
		datacenter: {
			aliases: [
				"datacenter_name",
			]
			description: [
				"Datacenter to search for given cluster. If not set, we use first cluster we encounter with C(cluster_name).",
			]
			required: false
			type:     "str"
		}
		group_name: {
			description: [
				"The name of the group to create or remove.",
			]
			required: true
			type:     "str"
		}
		hosts: {
			description: [
				"List of hosts to create in group.",
				"Required only if C(vms) is not set.",
			]
			required: false
			type:     "list"
		}
		state: {
			choices: [
				"present",
				"absent",
			]
			default: "present"
			description: [
				"If set to C(present) and the group doesn't exists then the group will be created.",
				"If set to C(absent) and the group exists then the group will be deleted.",
			]
			required: true
			type:     "str"
		}
		vms: {
			description: [
				"List of vms to create in group.",
				"Required only if C(hosts) is not set.",
			]
			required: false
			type:     "list"
		}
	}
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	short_description: "Creates vm/host group in a given cluster."
	version_added:     "2.8"
}
