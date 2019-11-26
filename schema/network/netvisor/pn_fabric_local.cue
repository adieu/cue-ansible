package ansible

module: pn_fabric_local: {
	module:            "pn_fabric_local"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to modify fabric-local"
	description: [
		"This module can be used to modify fabric local information.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(update) to modify the fabric-local.",
			]
			required: false
			type:     "str"
			choices: ["update"]
			default: "update"
		}
		pn_fabric_network: {
			description: [
				"fabric administration network.",
			]
			required: false
			choices: ["in-band", "mgmt", "vmgmt"]
			default: "mgmt"
		}
		pn_vlan: {
			description: [
				"VLAN assigned to fabric.",
			]
			required: false
			type:     "str"
		}
		pn_control_network: {
			description: [
				"control plane network.",
			]
			required: false
			choices: ["in-band", "mgmt", "vmgmt"]
		}
		pn_fabric_advertisement_network: {
			description: [
				"network to send fabric advertisements on.",
			]
			required: false
			choices: ["inband-mgmt", "inband-only", "inband-vmgmt", "mgmt-only"]
		}
	}
}
