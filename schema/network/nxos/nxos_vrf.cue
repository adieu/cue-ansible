package ansible

module: nxos_vrf: {
	module:                         "nxos_vrf"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Manages global VRF configuration."
	description: [
		"This module provides declarative management of VRFs on CISCO NXOS network devices.",
	]

	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
		"Trishna Guha (@trishnaguha)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Cisco NX-OS creates the default VRF by itself. Therefore, you're not allowed to use default as I(vrf) name in this module.",
		"C(vrf) name must be shorter than 32 chars.",
		"VRF names are not case sensible in NX-OS. Anyway, the name is stored just like it's inserted by the user and it'll not be changed again unless the VRF is removed and re-created. i.e. C(vrf=NTC) will create a VRF named NTC, but running it again with C(vrf=ntc) will not cause a configuration change.",
	]

	options: {
		name: {
			description: [
				"Name of VRF to be managed.",
			]
			required: true
			aliases: ["vrf"]
		}
		admin_state: {
			description: [
				"Administrative state of the VRF.",
			]
			default: "up"
			choices: ["up", "down"]
		}
		vni: {
			description: [
				"Specify virtual network identifier. Valid values are Integer or keyword 'default'.",
			]

			version_added: "2.2"
		}
		rd: {
			description: [
				"VPN Route Distinguisher (RD). Valid values are a string in one of the route-distinguisher formats (ASN2:NN, ASN4:NN, or IPV4:NN); the keyword 'auto', or the keyword 'default'.",
			]

			version_added: "2.2"
		}
		interfaces: {
			description: [
				"List of interfaces to check the VRF has been configured correctly or keyword 'default'.",
			]

			version_added: 2.5
		}
		associated_interfaces: {
			description: [
				"This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.",
			]

			version_added: "2.5"
		}
		aggregate: {
			description:   "List of VRFs definitions."
			version_added: 2.5
		}
		purge: {
			description: [
				"Purge VRFs not defined in the I(aggregate) parameter.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.5
		}
		state: {
			description: [
				"Manages desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		description: description: [
			"Description of the VRF or keyword 'default'.",
		]
		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.",
			]

			default: 10
		}
	}
}
