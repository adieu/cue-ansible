package ansible

module: na_elementsw_snapshot_schedule: {
	module: "na_elementsw_snapshot_schedule"

	short_description: "NetApp Element Software Snapshot Schedules"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, destroy, or update accounts on ElementSW",
	]

	options: {

		state: {
			description: [
				"Whether the specified schedule should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		paused: {
			description: [
				"Pause / Resume a schedule.",
			]
			type: "bool"
		}

		recurring: {
			description: [
				"Should the schedule recur?",
			]
			type: "bool"
		}

		schedule_type: {
			description: [
				"Schedule type for creating schedule.",
			]
			choices: ["DaysOfWeekFrequency", "DaysOfMonthFrequency", "TimeIntervalFrequency"]
		}

		time_interval_days: {
			description: "Time interval in days."
			default:     1
		}

		time_interval_hours: {
			description: "Time interval in hours."
			default:     0
		}

		time_interval_minutes: {
			description: "Time interval in minutes."
			default:     0
		}

		days_of_week_weekdays: description: "List of days of the week (Sunday to Saturday)"

		days_of_week_hours: {
			description: "Time specified in hours"
			default:     0
		}

		days_of_week_minutes: {
			description: "Time specified in minutes."
			default:     0
		}

		days_of_month_monthdays: description: "List of days of the month (1-31)"

		days_of_month_hours: {
			description: "Time specified in hours"
			default:     0
		}

		days_of_month_minutes: {
			description: "Time specified in minutes."
			default:     0
		}

		name: description: [
			"Name for the snapshot schedule.",
			"It accepts either schedule_id or schedule_name",
			"if name is digit, it will consider as schedule_id",
			"If name is string, it will consider as schedule_name",
		]

		snapshot_name: description: [
			"Name for the created snapshots.",
		]

		volumes: description: [
			"Volume IDs that you want to set the snapshot schedule for.",
			"It accepts both volume_name and volume_id",
		]

		account_id: description: [
			"Account ID for the owner of this volume.",
			"It accepts either account_name or account_id",
			"if account_id is digit, it will consider as account_id",
			"If account_id is string, it will consider as account_name",
		]

		retention: description: [
			"Retention period for the snapshot.",
			"Format is 'HH:mm:ss'.",
		]

		starting_date: description: [
			"Starting date for the schedule.",
			"Required when C(state=present).",
			"Format: C(2016-12-01T00:00:00Z)",
		]

		password: {
			description: [
				"Element SW access account password",
			]
			aliases: [
				"pass",
			]
		}

		username: {
			description: [
				"Element SW access account user-name",
			]
			aliases: ["user"]
		}
	}
}
