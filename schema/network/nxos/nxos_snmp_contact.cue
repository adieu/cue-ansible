package ansible

module: nxos_snmp_contact: {
	module:                         "nxos_snmp_contact"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages SNMP contact info."
	description: [
		"Manages SNMP contact information.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the contact configuration if it is configured.",
	]
	options: {
		contact: {
			description: [
				"Contact information.",
			]
			required: true
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			required: true
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
