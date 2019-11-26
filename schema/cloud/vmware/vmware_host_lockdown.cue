package ansible

module: vmware_host_lockdown: {
	module:            "vmware_host_lockdown"
	short_description: "Manage administrator permission for the local administrative account for the ESXi host"
	description: [
		"This module can be used to manage administrator permission for the local administrative account for the host when ESXi hostname is given.",
		"All parameters and VMware objects values are case sensitive.",
		"This module is destructive as administrator permission are managed using APIs used, please read options carefully and proceed.",
		"Please specify C(hostname) as vCenter IP or hostname only, as lockdown operations are not possible from standalone ESXi server.",
	]
	version_added: "2.5"
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
				"Name of cluster.",
				"All host systems from given cluster used to manage lockdown.",
				"Required parameter, if C(esxi_hostname) is not set.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"List of ESXi hostname to manage lockdown.",
				"Required parameter, if C(cluster_name) is not set.",
				"See examples for specifications.",
			]
			type: "list"
		}
		state: {
			description: [
				"State of hosts system",
				"If set to C(present), all host systems will be set in lockdown mode.",
				"If host system is already in lockdown mode and set to C(present), no action will be taken.",
				"If set to C(absent), all host systems will be removed from lockdown mode.",
				"If host system is already out of lockdown mode and set to C(absent), no action will be taken.",
			]
			default: "present"
			choices: ["present", "absent"]
			version_added: 2.5
			type:          "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
