package ansible

module: vmware_drs_group_info: {
	author: [
		"Karsten Kaj Jakobsen (@karstenjakobsen)",
	]
	description: [
		"This module can be used to gather information about DRS VM/HOST groups from the given cluster.",
	]
	extends_documentation_fragment: "vmware.documentation"
	module:                         "vmware_drs_group_info"
	notes: [
		"Tested on vSphere 6.5 and 6.7",
	]
	options: {
		cluster_name: {
			description: [
				"Cluster to search for VM/Host groups.",
				"If set, information of DRS groups belonging this cluster will be returned.",
				"Not needed if C(datacenter) is set.",
			]
			required: false
			type:     "str"
		}
		datacenter: {
			aliases: [
				"datacenter_name",
			]
			description: [
				"Datacenter to search for DRS VM/Host groups.",
			]
			required: true
			type:     "str"
		}
	}
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	short_description: "Gathers info about DRS VM/Host groups on the given cluster"
	version_added:     "2.9"
}
