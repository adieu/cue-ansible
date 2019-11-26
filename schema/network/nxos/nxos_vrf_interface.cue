package ansible

module: nxos_vrf_interface: {
	module:                         "nxos_vrf_interface"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Manages interface specific VRF configuration."
	description: [
		"Manages interface specific VRF configuration.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"VRF needs to be added globally with M(nxos_vrf) before adding a VRF to an interface.",
		"Remove a VRF from an interface will still remove all L3 attributes just as it does from CLI.",
		"VRF is not read from an interface until IP address is configured on that interface.",
	]

	options: {
		vrf: {
			description: [
				"Name of VRF to be managed.",
			]
			required: true
		}
		interface: {
			description: [
				"Full name of interface to be managed, i.e. Ethernet1/1.",
			]
			required: true
		}
		state: {
			description: [
				"Manages desired state of the resource.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
