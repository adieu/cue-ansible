package ansible

module: vmware_portgroup_info: {
	module:            "vmware_portgroup_info"
	short_description: "Gathers info about an ESXi host's Port Group configuration"
	description: [
		"This module can be used to gather information about an ESXi host's Port Group configuration when ESXi hostname or Cluster name is given.",
	]
	version_added: "2.9"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		policies: {
			description: [
				"Gather information about Security, Traffic Shaping, as well as Teaming and failover.",
				"The property C(ts) stands for Traffic Shaping and C(lb) for Load Balancing.",
			]
			type:    "bool"
			default: false
		}
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Info will be returned for all hostsystem belonging to this cluster name.",
				"If C(esxi_hostname) is not given, this parameter is required.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname to gather information from.",
				"If C(cluster_name) is not given, this parameter is required.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
