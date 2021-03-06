package ansible

module: vmware_host_firewall_manager: {
	module:            "vmware_host_firewall_manager"
	short_description: "Manage firewall configurations about an ESXi host"
	description: [
		"This module can be used to manage firewall configurations about an ESXi host when ESXi hostname or Cluster name is given.",
	]
	version_added: "2.5"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Aaron Longchamps (@alongchamps)",
	]
	notes: [
		"Tested on vSphere 6.0, vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Firewall settings are applied to every ESXi host system in given cluster.",
				"If C(esxi_hostname) is not given, this parameter is required.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname.",
				"Firewall settings are applied to this ESXi host system.",
				"If C(cluster_name) is not given, this parameter is required.",
			]
			type: "str"
		}
		rules: {
			description: [
				"A list of Rule set which needs to be managed.",
				"Each member of list is rule set name and state to be set the rule.",
				"Both rule name and rule state are required parameters.",
				"Additional IPs and networks can also be specified",
				"Please see examples for more information.",
			]
			default: []
			type: "list"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
