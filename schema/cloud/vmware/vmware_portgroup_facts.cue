package ansible

module: vmware_portgroup_facts: {
	module: "vmware_portgroup_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_portgroup_info) instead."
	}
	short_description: "Gathers facts about an ESXi host's Port Group configuration"
	description: [
		"This module can be used to gather facts about an ESXi host's Port Group configuration when ESXi hostname or Cluster name is given.",
	]
	version_added: "2.6"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 6.5",
		"The C(vswitch_name) property is deprecated starting from Ansible v2.12",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		policies: {
			description: [
				"Gather facts about Security, Traffic Shaping, as well as Teaming and failover.",
				"The property C(ts) stands for Traffic Shaping and C(lb) for Load Balancing.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Facts will be returned for all hostsystem belonging to this cluster name.",
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
