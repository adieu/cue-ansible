package ansible

module: vmware_host_ntp_info: {
	module:            "vmware_host_ntp_info"
	short_description: "Gathers info about NTP configuration on an ESXi host"
	description: [
		"This module can be used to gather information about NTP configurations on an ESXi host.",
	]
	version_added: "2.9"
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
				"NTP config information about each ESXi server will be returned for the given cluster.",
				"If C(esxi_hostname) is not given, this parameter is required.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname.",
				"NTP config information about this ESXi server will be returned.",
				"If C(cluster_name) is not given, this parameter is required.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
