package ansible

module: openvswitch_bridge: {
	module:            "openvswitch_bridge"
	version_added:     1.4
	author:            "David Stygstra (@stygstra)"
	short_description: "Manage Open vSwitch bridges"
	requirements: ["ovs-vsctl"]
	description: [
		"Manage Open vSwitch bridges",
	]
	options: {
		bridge: {
			required: true
			description: [
				"Name of bridge or fake bridge to manage",
			]
		}
		parent: {
			version_added: "2.3"
			description: [
				"Bridge parent of the fake bridge to manage",
			]
		}
		vlan: {
			version_added: "2.3"
			description: [
				"The VLAN id of the fake bridge to manage (must be between 0 and 4095). This parameter is required if I(parent) parameter is set.",
			]
		}

		state: {
			default: "present"
			choices: ["present", "absent"]
			description: [
				"Whether the bridge should exist",
			]
		}
		timeout: {
			default: 5
			description: [
				"How long to wait for ovs-vswitchd to respond",
			]
		}
		external_ids: {
			version_added: 2.0
			description: [
				"A dictionary of external-ids. Omitting this parameter is a No-op. To  clear all external-ids pass an empty value.",
			]
		}

		fail_mode: {
			version_added: 2.0
			choices: ["secure", "standalone"]
			description: [
				"Set bridge fail-mode. The default value (None) is a No-op.",
			]
		}
		set: {
			version_added: 2.3
			description: [
				"Run set command after bridge configuration. This parameter is non-idempotent, play will always return I(changed) state if present",
			]
		}
	}
}
