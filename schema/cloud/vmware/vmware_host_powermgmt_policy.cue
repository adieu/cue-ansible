package ansible

module: vmware_host_powermgmt_policy: {
	module:            "vmware_host_powermgmt_policy"
	short_description: "Manages the Power Management Policy of an ESXI host system"
	description: [
		"This module can be used to manage the Power Management Policy of ESXi host systems in given vCenter infrastructure.",
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
		policy: {
			description: [
				"Set the Power Management Policy of the host system.",
			]
			choices: ["high-performance", "balanced", "low-power", "custom"]
			default: "balanced"
			type:    "str"
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
