package ansible

module: vmware_host_kernel_manager: {
	module:            "vmware_host_kernel_manager"
	short_description: "Manage kernel module options on ESXi hosts"
	description: [
		"This module can be used to manage kernel module options on ESXi hosts.",
		"All connected ESXi hosts in scope will be configured when specified.",
		"If a host is not connected at time of configuration, it will be marked as such in the output.",
		"Kernel module options may require a reboot to take effect which is not covered here.",
		"You can use M(reboot) or M(vmware_host_powerstate) module to reboot all ESXi host systems.",
	]
	version_added: "2.8"
	author: [
		"Aaron Longchamps (@alongchamps)",
	]
	notes: [
		"Tested on vSphere 6.0",
	]
	requirements: [
		"python >= 2.7",
		"PyVmomi",
	]
	options: {
		esxi_hostname: {
			description: [
				"Name of the ESXi host to work on.",
				"This parameter is required if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the VMware cluster to work on.",
				"All ESXi hosts in this cluster will be configured.",
				"This parameter is required if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
		kernel_module_name: {
			description: [
				"Name of the kernel module to be configured.",
			]
			required: true
			type:     "str"
		}
		kernel_module_option: {
			description: [
				"Specified configurations will be applied to the given module.",
				"These values are specified in key=value pairs and separated by a space when there are multiple options.",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
