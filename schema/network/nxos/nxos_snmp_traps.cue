package ansible

module: nxos_snmp_traps: {
	module:                         "nxos_snmp_traps"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages SNMP traps."
	description: [
		"Manages SNMP traps configurations.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"This module works at the group level for traps.  If you need to only enable/disable 1 specific trap within a group, use the M(nxos_command) module.",
		"Be aware that you can set a trap only for an enabled feature.",
	]
	options: {
		group: {
			description: [
				"Case sensitive group.",
			]
			required: true
			choices: [
				"aaa",
				"bfd",
				"bgp",
				"bridge",
				"callhome",
				"cfs",
				"config",
				"eigrp",
				"entity",
				"feature-control",
				"generic",
				"hsrp",
				"license",
				"link",
				"lldp",
				"mmode",
				"ospf",
				"pim",
				"rf",
				"rmon",
				"snmp",
				"storm-control",
				"stpx",
				"switchfabric",
				"syslog",
				"sysmgr",
				"system",
				"upgrade",
				"vtp",
				"all",
			]
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			required: false
			default:  "enabled"
			choices: ["enabled", "disabled"]
		}
	}
}
