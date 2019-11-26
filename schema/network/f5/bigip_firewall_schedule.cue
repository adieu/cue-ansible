package ansible

module: bigip_firewall_schedule: {
	module:            "bigip_firewall_schedule"
	short_description: "Manage BIG-IP AFM schedule configurations"
	description: [
		"Manage BIG-IP AFM schedule configurations.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the AFM schedule configuration.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Specifies the user defined description text.",
			]
			type: "str"
		}
		daily_hour_end: {
			description: [
				"Specifies the time of day the rule will stop being used.",
				"When not defined, the default of C(24:00) is used when creating a new schedule.",
				"The time zone is always assumed to be UTC and values must be provided as C(HH:MM) using 24hour clock format.",
			]
			type: "str"
		}
		daily_hour_start: {
			description: [
				"Specifies the time of day the rule will start to be in use.",
				"The value must be a time before C(daily_hour_end).",
				"When not defined, the default of C(0:00) is used when creating a new schedule.",
				"When the value is set to C(all-day) both C(daily_hour_end) and C(daily_hour_start) are reset to their respective defaults.",
				"The time zone is always assumed to be UTC and values must be provided as C(HH:MM) using 24hour clock format.",
			]
			type: "str"
		}
		date_valid_end: {
			description: [
				"Specifies the end date/time this schedule will apply to the rule.",
				"The date must be after C(date_valid_start)",
				"When not defined the default of C(indefinite) is used when creating a new schedule.",
				"The time zone is always assumed to be UTC.",
				"The datetime format should always be the following C(YYYY-MM-DD:HH:MM:SS) format.",
			]
			type: "str"
		}
		date_valid_start: {
			description: [
				"Specifies the start date/time this schedule will apply to the rule.",
				"When not defined the default of C(epoch) is used when creating a new schedule.",
				"The time zone is always assumed to be UTC.",
				"The datetime format should always be the following C(YYYY-MM-DD:HH:MM:SS) format.",
			]
			type: "str"
		}
		days_of_week: {
			description: [
				"Specifies which days of the week the rule will be applied.",
				"When not defined the default value of C(all) is used when creating a new schedule.",
				"The C(all) value is mutually exclusive with other choices.",
			]
			type: "list"
			choices: [
				"sunday",
				"monday",
				"tuesday",
				"wednesday",
				"thursday",
				"friday",
				"saturday",
				"all",
			]
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
