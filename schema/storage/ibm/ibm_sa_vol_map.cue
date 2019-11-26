package ansible

module: ibm_sa_vol_map: {
	module:            "ibm_sa_vol_map"
	short_description: "Handles volume mapping on IBM Spectrum Accelerate Family storage systems."
	version_added:     "2.8"

	description: [
		"This module maps volumes to or unmaps them from the hosts on IBM Spectrum Accelerate Family storage systems.",
	]

	options: {
		vol: {
			description: [
				"Volume name.",
			]
			required: true
		}
		state: {
			default: "present"
			choices: ["present", "absent"]
			description: [
				"When the state is present the volume is mapped. When the state is absent, the volume is meant to be unmapped.",
			]

			required: true
		}
		cluster: {
			description: [
				"Maps the volume to a cluster.",
			]
			required: false
		}
		host: {
			description: [
				"Maps the volume to a host.",
			]
			required: false
		}
		lun: {
			description: [
				"The LUN identifier.",
			]
			required: false
		}
		override: {
			description: [
				"Overrides the existing volume mapping.",
			]
			required: false
		}
	}

	extends_documentation_fragment: [
		"ibm_storage",
	]

	author: ["Tzur Eliyahu (@tzure)"]
}
