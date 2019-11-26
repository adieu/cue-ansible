package ansible

module: azure_rm_devtestlabschedule: {
	module:            "azure_rm_devtestlabschedule"
	version_added:     "2.8"
	short_description: "Manage Azure DevTest Lab Schedule instance"
	description: [
		"Create, update and delete instance of Azure DecTest Lab Schedule.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		lab_name: {
			description: [
				"The name of the lab.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the schedule.",
			]
			required: true
			choices: [
				"lab_vms_startup",
				"lab_vms_shutdown",
			]
		}
		time: description: [
			"The time of day the schedule will occur.",
		]
		time_zone_id: description: [
			"The time zone ID.",
		]
		state: {
			description: [
				"Assert the state of the Schedule.",
				"Use C(present) to create or update an Schedule and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
