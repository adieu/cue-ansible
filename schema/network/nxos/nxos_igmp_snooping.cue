package ansible

module: nxos_igmp_snooping: {
	module:                         "nxos_igmp_snooping"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages IGMP snooping global configuration."
	description: [
		"Manages IGMP snooping global configuration.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"When C(state=default), params will be reset to a default state.",
		"C(group_timeout) also accepts I(never) as an input.",
	]
	options: {
		snooping: {
			description: [
				"Enables/disables IGMP snooping on the switch.",
			]
			type: "bool"
		}
		group_timeout: description: [
			"Group membership timeout value for all VLANs on the device. Accepted values are integer in range 1-10080, I(never) and I(default).",
		]

		link_local_grp_supp: {
			description: [
				"Global link-local groups suppression.",
			]
			type: "bool"
		}
		report_supp: {
			description: [
				"Global IGMPv1/IGMPv2 Report Suppression.",
			]
			type: "bool"
		}
		v3_report_supp: {
			description: [
				"Global IGMPv3 Report Suppression and Proxy Reporting.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "default"]
		}
	}
}
