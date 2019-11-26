package ansible

module: vexata_volume: {
	module:            "vexata_volume"
	version_added:     2.8
	short_description: "Manage volumes on Vexata VX100 storage arrays"
	description: [
		"Create, deletes or extend volumes on a Vexata VX100 array.",
	]
	author: [
		"Sandeep Kasargod (@vexata)",
	]
	options: {
		name: {
			description: [
				"Volume name.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Creates/Modifies volume when present or removes when absent.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		size: {
			description: [
				"Volume size in M, G, T units. M=2^20, G=2^30, T=2^40 bytes.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: ["vexata.vx100"]
}
