package ansible

module: rhsm_repository: {
	module:            "rhsm_repository"
	short_description: "Manage RHSM repositories using the subscription-manager command"
	description: [
		"Manage (Enable/Disable) RHSM repositories to the Red Hat Subscription Management entitlement platform using the C(subscription-manager) command.",
	]

	version_added: "2.5"
	author:        "Giovanni Sciortino (@giovannisciortino)"
	notes: [
		"In order to manage RHSM repositories the system must be already registered to RHSM manually or using the Ansible C(redhat_subscription) module.",
	]

	requirements: [
		"subscription-manager",
	]
	options: {
		state: {
			description: [
				"If state is equal to present or disabled, indicates the desired repository state.",
			]

			choices: ["present", "enabled", "absent", "disabled"]
			required: true
			default:  "present"
		}
		name: {
			description: [
				"The ID of repositories to enable.",
				"To operate on several repositories this can accept a comma separated list or a YAML list.",
			]

			required: true
		}
		purge: {
			description: [
				"Disable all currently enabled repositories that are not not specified in C(name). Only set this to C(True) if passing in a list of repositories to the C(name) field. Using this with C(loop) will most likely not have the desired result.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
}
