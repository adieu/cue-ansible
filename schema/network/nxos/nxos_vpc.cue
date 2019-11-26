package ansible

module: nxos_vpc: {
	module:                         "nxos_vpc"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages global VPC configuration"
	description: [
		"Manages global VPC configuration",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"The feature vpc must be enabled before this module can be used",
		"If not using management vrf, vrf must be globally on the device before using in the pkl config",
		"Although source IP isn't required on the command line it is required when using this module.  The PKL VRF must also be configured prior to using this module.",
		"Both pkl_src and pkl_dest are needed when changing PKL VRF.",
	]
	options: {
		domain: {
			description: [
				"VPC domain",
			]
			required: true
		}
		role_priority: description: [
			"Role priority for device. Remember lower is better.",
		]
		system_priority: description: [
			"System priority device.  Remember they must match between peers.",
		]
		pkl_src: description: [
			"Source IP address used for peer keepalive link",
		]
		pkl_dest: description: [
			"Destination (remote) IP address used for peer keepalive link",
			"pkl_dest is required whenever pkl options are used.",
		]
		pkl_vrf: {
			description: [
				"VRF used for peer keepalive link",
				"The VRF must exist on the device before using pkl_vrf.",
				"(Note) 'default' is an overloaded term: Default vrf context for pkl_vrf is 'management'; 'pkl_vrf: default' refers to the literal 'default' rib.",
			]
			default: "management"
		}
		peer_gw: {
			description: [
				"Enables/Disables peer gateway",
			]
			type: "bool"
		}
		// TBD: no support for peer_gw_exclude_gw
		// peer_gw_exclude_gw:
		//   description:
		//     - Range of VLANs to be excluded from peer-gateway
		//   type: str
		auto_recovery: {
			description: [
				"Enables/Disables auto recovery on platforms that support disable",
				"timers are not modifiable with this attribute",
				"mutually exclusive with auto_recovery_reload_delay",
			]
			type: "bool"
		}
		auto_recovery_reload_delay: {
			description: [
				"Manages auto-recovery reload-delay timer in seconds",
				"mutually exclusive with auto_recovery",
			]
			type:          "str"
			version_added: "2.9"
		}
		delay_restore: {
			description: [
				"manages delay restore command and config value in seconds",
			]
			type: "str"
		}
		delay_restore_interface_vlan: {
			description: [
				"manages delay restore interface-vlan command and config value in seconds",
				"not supported on all platforms",
			]
			type:          "str"
			version_added: "2.9"
		}
		delay_restore_orphan_port: {
			description: [
				"manages delay restore orphan-port command and config value in seconds",
				"not supported on all platforms",
			]
			type:          "str"
			version_added: "2.9"
		}
		state: {
			description: [
				"Manages desired state of the resource",
			]
			required: true
			choices: ["present", "absent"]
		}
	}
}
