package ansible

module: ios_l2_interface: {
	module:                         "ios_l2_interface"
	extends_documentation_fragment: "ios"
	version_added:                  "2.5"
	short_description:              "Manage Layer-2 interface on Cisco IOS devices."
	description: [
		"This module provides declarative management of Layer-2 interfaces on Cisco IOS devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "ios_l2_interfaces"
		why:         "Newer and updated modules released with more functionality in Ansible 2.9"
	}
	author: [
		"Nathaniel Case (@Qalthos)",
	]
	options: {
		name: {
			description: [
				"Full name of the interface excluding any logical unit number, i.e. GigabitEthernet0/1.",
			]

			required: true
			aliases: ["interface"]
		}
		mode: {
			description: [
				"Mode in which interface needs to be configured.",
			]
			default: "access"
			choices: ["access", "trunk"]
		}
		access_vlan: description: [
			"Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.",
		]

		trunk_vlans: description: [
			"List of VLANs to be configured in trunk port. If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk.",
		]

		native_vlan: description: [
			"Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.",
		]

		trunk_allowed_vlans: description: [
			"List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the only VLANs that will be configured on the trunk, i.e. \"2-10,15\".",
		]

		aggregate: description: [
			"List of Layer-2 interface definitions.",
		]
		state: {
			description: [
				"Manage the state of the Layer-2 Interface configuration.",
			]
			default: "present"
			choices: ["present", "absent", "unconfigured"]
		}
	}
}
