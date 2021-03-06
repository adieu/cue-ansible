package ansible

module: vmware_host_hyperthreading: {
	module:            "vmware_host_hyperthreading"
	short_description: "Enables/Disables Hyperthreading optimization for an ESXi host system"
	description: [
		"This module can be used to enable or disable Hyperthreading optimization for ESXi host systems in given vCenter infrastructure.",
		"It also checks if Hyperthreading is activated/deactivated and if the host needs to be restarted.",
		"The module informs the user if Hyperthreading is enabled but inactive because the processor is vulnerable to L1 Terminal Fault (L1TF).",
	]
	version_added: 2.8
	author: [
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
		state: {
			description: [
				"Enable or disable Hyperthreading.",
				"You need to reboot the ESXi host if you change the configuration.",
				"Make sure that Hyperthreading is enabled in the BIOS. Otherwise, it will be enabled, but never activated.",
			]
			type: "str"
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		esxi_hostname: {
			description: [
				"Name of the host system to work with.",
				"This parameter is required if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster from which all host systems will be used.",
				"This parameter is required if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
