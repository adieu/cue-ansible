package ansible

module: ss_3par_cpg: {
	short_description: "Manage HPE StoreServ 3PAR CPG"
	author: [
		"Farhan Nomani (@farhan7500)",
		"Gautham P Hegde (@gautamphegde)",
	]
	description: [
		"Create and delete CPG on HPE 3PAR.",
	]
	module: "ss_3par_cpg"
	options: {
		cpg_name: {
			description: [
				"Name of the CPG.",
			]
			type:     "str"
			required: true
		}
		disk_type: {
			choices: [
				"FC",
				"NL",
				"SSD",
			]
			description: [
				"Specifies that physical disks must have the specified device type.",
			]
			type: "str"
		}
		domain: {
			description: [
				"Specifies the name of the domain in which the object will reside.",
			]
			type: "str"
		}
		growth_increment: {
			description: [
				"Specifies the growth increment(in MiB, GiB or TiB) the amount of logical disk storage created on each auto-grow operation.",
			]

			type: "str"
		}
		growth_limit: {
			description: [
				"Specifies that the autogrow operation is limited to the specified storage amount that sets the growth limit(in MiB, GiB or TiB).",
			]

			type: "str"
		}
		growth_warning: {
			description: [
				"Specifies that the threshold(in MiB, GiB or TiB) of used logical disk space when exceeded results in a warning alert.",
			]

			type: "str"
		}
		high_availability: {
			choices: [
				"PORT",
				"CAGE",
				"MAG",
			]
			description: [
				"Specifies that the layout must support the failure of one port pair, one cage, or one magazine.",
			]

			type: "str"
		}
		raid_type: {
			choices: [
				"R0",
				"R1",
				"R5",
				"R6",
			]
			description: [
				"Specifies the RAID type for the logical disk.",
			]
			type: "str"
		}
		set_size: {
			description: [
				"Specifies the set size in the number of chunklets.",
			]
			type: "int"
		}
		state: {
			choices: [
				"present",
				"absent",
			]
			description: [
				"Whether the specified CPG should exist or not.",
			]
			required: true
			type:     "str"
		}
		secure: {
			description: [
				"Specifies whether the certificate needs to be validated while communicating.",
			]
			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "hpe3par"
	version_added:                  "2.8"
}
