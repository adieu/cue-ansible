package ansible

module: statusio_maintenance: {
	module:            "statusio_maintenance"
	short_description: "Create maintenance windows for your status.io dashboard"
	description: [
		"Creates a maintenance window for status.io",
		"Deletes a maintenance window for status.io",
	]
	notes: [
		"You can use the apiary API url (http://docs.statusio.apiary.io/) to capture API traffic",
		"Use start_date and start_time with minutes to set future maintenance window",
	]
	version_added: "2.2"
	author:        "Benjamin Copeland (@bhcopeland) <ben@copeland.me.uk>"
	options: {
		title: {
			description: [
				"A descriptive title for the maintenance window",
			]
			default: "A new maintenance window"
		}
		desc: {
			description: [
				"Message describing the maintenance window",
			]
			default: "Created by Ansible"
		}
		state: {
			description: [
				"Desired state of the package.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		api_id: {
			description: [
				"Your unique API ID from status.io",
			]
			required: true
		}
		api_key: {
			description: [
				"Your unique API Key from status.io",
			]
			required: true
		}
		statuspage: {
			description: [
				"Your unique StatusPage ID from status.io",
			]
			required: true
		}
		url: {
			description: [
				"Status.io API URL. A private apiary can be used instead.",
			]
			default: "https://api.status.io"
		}
		components: {
			description: [
				"The given name of your component (server name)",
			]
			aliases: ["component"]
		}
		containers: {
			description: [
				"The given name of your container (data center)",
			]
			aliases: ["container"]
		}
		all_infrastructure_affected: {
			description: [
				"If it affects all components and containers",
			]
			type:    "bool"
			default: "no"
		}
		automation: {
			description: [
				"Automatically start and end the maintenance window",
			]
			type:    "bool"
			default: "no"
		}
		maintenance_notify_now: {
			description: [
				"Notify subscribers now",
			]
			type:    "bool"
			default: "no"
		}
		maintenance_notify_72_hr: {
			description: [
				"Notify subscribers 72 hours before maintenance start time",
			]
			type:    "bool"
			default: "no"
		}
		maintenance_notify_24_hr: {
			description: [
				"Notify subscribers 24 hours before maintenance start time",
			]
			type:    "bool"
			default: "no"
		}
		maintenance_notify_1_hr: {
			description: [
				"Notify subscribers 1 hour before maintenance start time",
			]
			type:    "bool"
			default: "no"
		}
		maintenance_id: description: [
			"The maintenance id number when deleting a maintenance window",
		]
		minutes: {
			description: [
				"The length of time in UTC that the maintenance will run             (starting from playbook runtime)",
			]
			default: 10
		}
		start_date: description: [
			"Date maintenance is expected to start (Month/Day/Year) (UTC)",
			"End Date is worked out from start_date + minutes",
		]
		start_time: description: [
			"Time maintenance is expected to start (Hour:Minutes) (UTC)",
			"End Time is worked out from start_time + minutes",
		]
	}
}
