package ansible

module: aci_maintenance_policy: {
	module:            "aci_maintenance_policy"
	short_description: "Manage firmware maintenance policies"
	version_added:     "2.8"
	description: [
		"Manage maintenance policies that defines behavior during an ACI upgrade.",
	]
	options: {
		name: {
			description: [
				"The name for the maintenance policy.",
			]
			type:     "str"
			required: true
			aliases: ["maintenance_policy"]
		}
		runmode: {
			description: [
				"Whether the system pauses on error or just continues through it.",
			]
			type: "str"
			choices: ["pauseOnlyOnFailures", "pauseNever"]
			default: "pauseOnlyOnFailures"
		}
		graceful: {
			description: [
				"Whether the system will bring down the nodes gracefully during an upgrade, which reduces traffic lost.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		scheduler: {
			description: [
				"The name of scheduler that is applied to the policy.",
			]
			type:     "str"
			required: true
		}
		adminst: {
			description: [
				"Will trigger an immediate upgrade for nodes if adminst is set to triggered.",
			]
			type: "str"
			choices: ["triggered", "untriggered"]
			default: "untriggered"
		}
		ignoreCompat: {
			description: [
				"To check whether compatibility checks should be ignored",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: [
		"aci",
	]
	notes: [
		"A scheduler is required for this module, which could have been created using the M(aci_fabric_scheduler) module or via the UI.",
	]
	author: ["Steven Gerhart (@sgerhart)"]
}
