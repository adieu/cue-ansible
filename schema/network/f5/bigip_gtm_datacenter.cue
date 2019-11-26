package ansible

module: bigip_gtm_datacenter: {
	module:            "bigip_gtm_datacenter"
	short_description: "Manage Datacenter configuration in BIG-IP"
	description: [
		"Manage BIG-IP data center configuration. A data center defines the location where the physical network components reside, such as the server and link objects that share the same subnet on the network. This module is able to manipulate the data center definitions in a BIG-IP.",
	]

	version_added: 2.2
	options: {
		contact: {
			description: [
				"The name of the contact for the data center.",
			]
			type: "str"
		}
		description: {
			description: [
				"The description of the data center.",
			]
			type: "str"
		}
		location: {
			description: [
				"The location of the data center.",
			]
			type: "str"
		}
		name: {
			description: [
				"The name of the data center.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"The virtual address state. If C(absent), an attempt to delete the virtual address will be made. This will only succeed if this virtual address is not in use by a virtual server. C(present) creates the virtual address and enables it. If C(enabled), enable the virtual address if it exists. If C(disabled), create the virtual address if needed, and set state to C(disabled).",
			]

			type: "str"
			choices: [
				"present",
				"absent",
				"enabled",
				"disabled",
			]
			default: "present"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
