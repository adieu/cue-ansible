package ansible

module: vmware_target_canonical_info: {
	module:            "vmware_target_canonical_info"
	short_description: "Return canonical (NAA) from an ESXi host system"
	description: [
		"This module can be used to gather information about canonical (NAA) from an ESXi host based on SCSI target ID.",
	]
	version_added: "2.9"
	author: [
		"Joseph Callen (@jcpowermac)",
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: null
	requirements: [
		"Tested on vSphere 5.5 and 6.5",
		"PyVmomi installed",
	]
	options: {
		target_id: {
			description: [
				"The target id based on order of scsi device.",
				"version 2.6 onwards, this parameter is optional.",
			]
			required: false
			type:     "int"
		}
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Info about all SCSI devices for all host system in the given cluster is returned.",
				"This parameter is required, if C(esxi_hostname) is not provided.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"Name of the ESXi host system.",
				"Info about all SCSI devices for the given ESXi host system is returned.",
				"This parameter is required, if C(cluster_name) is not provided.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
