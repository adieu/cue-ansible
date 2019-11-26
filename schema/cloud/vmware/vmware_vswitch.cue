package ansible

module: vmware_vswitch: {
	module:            "vmware_vswitch"
	short_description: "Manage a VMware Standard Switch to an ESXi host."
	description: [
		"This module can be used to add, remove and update a VMware Standard Switch to an ESXi host.",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
		"Russell Teague (@mtnbikenc)",
		"Abhijeet Kasurde (@Akasurde) <akasurde@redhat.com>",
	]
	notes: [
		"Tested on vSphere 5.5 and 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		switch: {
			description: [
				"vSwitch name to add.",
				"Alias C(switch) is added in version 2.4.",
			]
			required: true
			aliases: ["switch_name"]
			type: "str"
		}
		nics: {
			description: [
				"A list of vmnic names or vmnic name to attach to vSwitch.",
				"Alias C(nics) is added in version 2.4.",
			]
			aliases: ["nic_name"]
			default: []
			type: "list"
		}
		number_of_ports: {
			description: [
				"Number of port to configure on vSwitch.",
			]
			default: 128
			type:    "int"
		}
		mtu: {
			description: [
				"MTU to configure on vSwitch.",
			]
			default: 1500
			type:    "int"
		}
		state: {
			description: [
				"Add or remove the switch.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"Manage the vSwitch using this ESXi host system.",
			]
			version_added: "2.5"
			aliases: ["host"]
			type: "str"
		}
	}
	extends_documentation_fragment: ["vmware.documentation"]
}
