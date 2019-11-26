package ansible

module: ovirt_job: {
	module:            "ovirt_job"
	short_description: "Module to manage jobs in oVirt/RHV"
	version_added:     "2.9"
	author:            "Martin Necas (@mnecas)"
	description: [
		"This module manage jobs in oVirt/RHV. It can also manage steps of the job.",
	]
	options: {
		description: {
			description: [
				"Description of the job.",
			]
			required: true
		}
		state: {
			description: [
				"Should the job be C(present)/C(absent)/C(failed).",
				"C(started) is alias for C(present). C(finished) is alias for C(absent). Same in the steps.",
				"Note when C(finished)/C(failed) it will finish/fail all steps.",
			]
			choices: ["present", "absent", "started", "finished", "failed"]
			default: "present"
		}
		steps: {
			description: [
				"The steps of the job.",
			]
			suboptions: {
				description: {
					description: [
						"Description of the step.",
					]
					required: true
				}
				state: {
					description: [
						"Should the step be present/absent/failed.",
						"Note when one step fail whole job will fail",
						"Note when all steps are finished it will finish job.",
					]
					choices: ["present", "absent", "started", "finished", "failed"]
					default: "present"
				}
			}
			type: "list"
		}
	}
	extends_documentation_fragment: "ovirt"
}
