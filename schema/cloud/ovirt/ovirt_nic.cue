package ansible

module: ovirt_nic: {
	module:            "ovirt_nic"
	short_description: "Module to manage network interfaces of Virtual Machines in oVirt/RHV"
	version_added:     "2.3"
	author: [
		"Ondra Machacek (@machacekondra)",
	]
	description: [
		"Module to manage network interfaces of Virtual Machines in oVirt/RHV.",
	]
	options: {
		id: {
			description: [
				"ID of the nic to manage.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the network interface to manage.",
			]
			required: true
		}
		vm: description: [
			"Name of the Virtual Machine to manage.",
			"You must provide either C(vm) parameter or C(template) parameter.",
		]
		template: {
			description: [
				"Name of the template to manage.",
				"You must provide either C(vm) parameter or C(template) parameter.",
			]
			version_added: "2.4"
		}
		state: {
			description: [
				"Should the Virtual Machine NIC be present/absent/plugged/unplugged.",
			]
			choices: ["absent", "plugged", "present", "unplugged"]
			default: "present"
		}
		network: description: [
			"Logical network to which the VM network interface should use, by default Empty network is used if network is not specified.",
		]

		profile: description: [
			"Virtual network interface profile to be attached to VM network interface.",
			"When not specified and network has only single profile it will be auto-selected, otherwise you must specify profile.",
		]
		interface: description: [
			"Type of the network interface. For example e1000, pci_passthrough, rtl8139, rtl8139_virtio, spapr_vlan or virtio.",
			"It's required parameter when creating the new NIC.",
		]
		mac_address: description: [
			"Custom MAC address of the network interface, by default it's obtained from MAC pool.",
		]
		linked: {
			description: [
				"Defines if the NIC is linked to the virtual machine.",
			]
			type:          "bool"
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "ovirt"
}
