package ansible

module: vmware_host_ipv6: {
	module:            "vmware_host_ipv6"
	short_description: "Enables/Disables IPv6 support for an ESXi host system"
	description: [
		"This module can be used to enable or disable IPv6 support for ESXi host systems in given vCenter infrastructure.",
		"It also checks if the host needs to be restarted.",
	]
	version_added: 2.8
	author: [
		"Christian Kotte (@ckotte) <christian.kotte@gmx.de>",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		state: {
			description: [
				"Enable or disable IPv6 support.",
				"You need to reboot the ESXi host if you change the configuration.",
			]
			type: "str"
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		esxi_hostname: {
			description: [
				"Name of the host system to work with.",
				"This is required parameter if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster from which all host systems will be used.",
				"This is required parameter if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
