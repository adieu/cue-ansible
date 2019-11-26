package ansible

module: nictagadm: {
	module:            "nictagadm"
	short_description: "Manage nic tags on SmartOS systems"
	description: [
		"Create or delete nic tags on SmartOS systems.",
	]
	version_added: "2.8"
	author: [
		"Bruce Smith (@SmithX10)",
	]
	options: {
		name: {
			description: [
				"Name of the nic tag.",
			]
			required: true
			type:     "str"
		}
		mac: {
			description: [
				"Specifies the I(mac) address to attach the nic tag to when not creating an I(etherstub).",
				"Parameters I(mac) and I(etherstub) are mutually exclusive.",
			]
			type: "str"
		}
		etherstub: {
			description: [
				"Specifies that the nic tag will be attached to a created I(etherstub).",
				"Parameter I(etherstub) is mutually exclusive with both I(mtu), and I(mac).",
			]
			type:    "bool"
			default: false
		}
		mtu: {
			description: [
				"Specifies the size of the I(mtu) of the desired nic tag.",
				"Parameters I(mtu) and I(etherstub) are mutually exclusive.",
			]
			type: "int"
		}
		force: {
			description: [
				"When I(state) is absent set this switch will use the C(-f) parameter and delete the nic tag regardless of existing VMs.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Create or delete a SmartOS nic tag.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
	}
}
