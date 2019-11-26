package ansible

module: ibm_sa_pool: {
	module:            "ibm_sa_pool"
	short_description: "Handles pools on IBM Spectrum Accelerate Family storage systems."
	version_added:     "2.7"

	description: [
		"This module creates or deletes pools to be used on IBM Spectrum Accelerate Family storage systems",
	]

	options: {
		pool: {
			description: [
				"Pool name.",
			]
			required: true
		}
		state: {
			description: [
				"Pool state.",
			]
			required: true
			default:  "present"
			choices: ["present", "absent"]
		}
		size: {
			description: [
				"Pool size in GB",
			]
			required: false
		}
		snapshot_size: {
			description: [
				"Pool snapshot size in GB",
			]
			required: false
		}
		domain: {
			description: [
				"Adds the pool to the specified domain.",
			]
			required: false
		}
		perf_class: {
			description: [
				"Assigns a perf_class to the pool.",
			]
			required: false
		}
	}

	extends_documentation_fragment: [
		"ibm_storage",
	]

	author: ["Tzur Eliyahu (@tzure)"]
}
