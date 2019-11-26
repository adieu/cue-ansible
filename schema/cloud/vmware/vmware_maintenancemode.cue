package ansible

module: vmware_maintenancemode: {
	module:            "vmware_maintenancemode"
	short_description: "Place a host into maintenance mode"
	description: [
		"This module can be used for placing a ESXi host into maintenance mode.",
		"Support for VSAN compliant maintenance mode when selected.",
	]
	author: [
		"Jay Jahns (@jjahns) <jjahns@vmware.com>",
		"Abhijeet Kasurde (@Akasurde)",
	]
	version_added: "2.1"
	notes: [
		"Tested on vSphere 5.5, 6.0 and 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		esxi_hostname: {
			description: [
				"Name of the host as defined in vCenter.",
			]
			required: true
			type:     "str"
		}
		vsan: {
			description: [
				"Specify which VSAN compliant mode to enter.",
			]
			choices: [
				"ensureObjectAccessibility",
				"evacuateAllData",
				"noAction",
			]
			required: false
			aliases: ["vsan_mode"]
			type: "str"
		}
		evacuate: {
			description: [
				"If set to C(True), evacuate all powered off VMs.",
			]
			default:  false
			required: false
			type:     "bool"
		}
		timeout: {
			description: [
				"Specify a timeout for the operation.",
			]
			required: false
			default:  0
			type:     "int"
		}
		state: {
			description: [
				"Enter or exit maintenance mode.",
			]
			choices: [
				"present",
				"absent",
			]
			default:  "present"
			required: false
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
