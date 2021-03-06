package ansible

module: win_power_plan: {
	module:            "win_power_plan"
	short_description: "Changes the power plan of a Windows system"
	description: [
		"This module will change the power plan of a Windows system to the defined string.",
		"Windows defaults to C(balanced) which will cause CPU throttling. In some cases it can be preferable to change the mode to C(high performance) to increase CPU performance.",
	]

	version_added: "2.4"
	options: name: {
		description: [
			"String value that indicates the desired power plan.",
			"The power plan must already be present on the system.",
			"Commonly there will be options for C(balanced) and C(high performance).",
		]
		type:     "str"
		required: true
	}
	author: ["Noah Sparks (@nwsparks)"]
}
