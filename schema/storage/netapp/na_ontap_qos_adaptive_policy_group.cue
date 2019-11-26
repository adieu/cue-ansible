package ansible

module: na_ontap_qos_adaptive_policy_group: {
	module:            "na_ontap_qos_adaptive_policy_group"
	short_description: "NetApp ONTAP Adaptive Quality of Service policy group."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.9"
	author:        "NetApp Ansible Team (@joshedmonds) <ng-ansibleteam@netapp.com>"

	description: [
		"Create, destroy, modify, or rename an Adaptive QoS policy group on NetApp ONTAP. Module is based on the standard QoS policy group module.",
	]

	options: {
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified policy group should exist or not.",
			]
			default: "present"
			type:    "str"
		}

		name: {
			description: [
				"The name of the policy group to manage.",
			]
			type:     "str"
			required: true
		}

		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			type:     "str"
			required: true
		}

		from_name: {
			description: [
				"Name of the existing policy group to be renamed to name.",
			]
			type: "str"
		}

		absolute_min_iops: {
			description: [
				"Absolute minimum IOPS defined by this policy.",
			]
			type: "str"
		}

		expected_iops: {
			description: [
				"Minimum expected IOPS defined by this policy.",
			]
			type: "str"
		}

		peak_iops: {
			description: [
				"Maximum possible IOPS per allocated or used TB|GB.",
			]
			type: "str"
		}

		peak_iops_allocation: {
			choices: ["allocated_space", "used_space"]
			description: [
				"Whether peak_iops is specified by allocated or used space.",
			]
			default: "used_space"
			type:    "str"
		}

		force: {
			type:    "bool"
			default: false
			description: ["Setting to 'true' forces the deletion of the workloads associated with the policy group along with the policy group."]
		}
	}
}
