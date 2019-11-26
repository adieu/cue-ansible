package ansible

module: vmware_vswitch_facts: {
	module: "vmware_vswitch_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_vswitch_info) instead."
	}
	short_description: "Gathers facts about an ESXi host's vswitch configurations"
	description: [
		"This module can be used to gather facts about an ESXi host's vswitch configurations when ESXi hostname or Cluster name is given.",
		"The vSphere Client shows the value for the number of ports as elastic from vSphere 5.5 and above.",
		"Other tools like esxcli might show the number of ports as 1536 or 5632.",
		"See U(https://kb.vmware.com/s/article/2064511) for more details.",
	]
	version_added: "2.6"
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
	options: {
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Facts about vswitch belonging to every ESXi host systems under this cluster will be returned.",
				"If C(esxi_hostname) is not given, this parameter is required.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname to gather facts from.",
				"If C(cluster_name) is not given, this parameter is required.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
