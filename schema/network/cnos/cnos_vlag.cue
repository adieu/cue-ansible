package ansible

module: cnos_vlag: {
	module:            "cnos_vlag"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage VLAG resources and attributes on devices running Lenovo CNOS"

	description: [
		"This module allows you to work with virtual Link Aggregation Groups (vLAG) related configurations. The operators used are overloaded to ensure control over switch vLAG configurations. Apart from the regular device connection related attributes, there are four vLAG arguments which are overloaded variables that will perform further configurations. They are vlagArg1, vlagArg2, vlagArg3, and vlagArg4. For more details on how to use these arguments, see [Overloaded Variables]. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: {
		vlagArg1: {
			description: [
				"This is an overloaded vlag first argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: true
			default:  null
			choices: [
				"enable",
				"auto-recovery",
				"config-consistency",
				"isl",
				"mac-address-table",
				"peer-gateway",
				"priority",
				"startup-delay",
				"tier-id",
				"vrrp",
				"instance",
				"hlthchk",
			]
		}
		vlagArg2: {
			description: [
				"This is an overloaded vlag second argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"Interval in seconds",
				"disable or strict",
				"Port Aggregation Number",
				"VLAG priority",
				"Delay time in seconds",
				"VLAG tier-id value",
				"VLAG instance number",
				"keepalive-attempts",
				"keepalive-interval",
				"retry-interval",
				"peer-ip",
			]
		}
		vlagArg3: {
			description: [
				"This is an overloaded vlag third argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"enable or port-aggregation",
				"Number of keepalive attempts",
				"Interval in seconds",
				"Interval in seconds",
				"VLAG health check peer IP4 address",
			]
		}
		vlagArg4: {
			description: [
				"This is an overloaded vlag fourth argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: ["Port Aggregation Number", "default or management"]
		}
	}
}
