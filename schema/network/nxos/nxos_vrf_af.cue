package ansible

module: nxos_vrf_af: {
	module:                         "nxos_vrf_af"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages VRF AF."
	description: [
		"Manages VRF AF",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Default, where supported, restores params default value.",
	]
	options: {
		vrf: {
			description: [
				"Name of the VRF.",
			]
			required: true
		}
		afi: {
			description: [
				"Address-Family Identifier (AFI).",
			]
			required: true
			choices: ["ipv4", "ipv6"]
		}
		route_target_both_auto_evpn: {
			description: [
				"Enable/Disable the EVPN route-target 'auto' setting for both import and export target communities.",
			]

			type: "bool"
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
