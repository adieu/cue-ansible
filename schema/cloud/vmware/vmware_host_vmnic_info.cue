package ansible

module: vmware_host_vmnic_info: {
	module:            "vmware_host_vmnic_info"
	short_description: "Gathers info about vmnics available on the given ESXi host"
	description: [
		"This module can be used to gather information about vmnics available on the given ESXi host.",
		"If C(cluster_name) is provided, then vmnic information about all hosts from given cluster will be returned.",
		"If C(esxi_hostname) is provided, then vmnic information about given host system will be returned.",
		"Additional details about vswitch and dvswitch with respective vmnic is also provided which is added in 2.7 version.",
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
		capabilities: {
			description: [
				"Gather information about general capabilities (Auto negotiation, Wake On LAN, and Network I/O Control).",
			]
			type:    "bool"
			default: false
		}
		directpath_io: {
			description: [
				"Gather information about DirectPath I/O capabilities and configuration.",
			]
			type:    "bool"
			default: false
		}
		sriov: {
			description: [
				"Gather information about SR-IOV capabilities and configuration.",
			]
			type:    "bool"
			default: false
		}
		esxi_hostname: {
			description: [
				"Name of the host system to work with.",
				"Vmnic information about this ESXi server will be returned.",
				"This parameter is required if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster from which all host systems will be used.",
				"Vmnic information about each ESXi server will be returned for the given cluster.",
				"This parameter is required if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
