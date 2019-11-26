package ansible

module: sf_snapshot_schedule_manager: {
	module: "sf_snapshot_schedule_manager"
	deprecated: {
		removed_in:  "2.11"
		why:         "This Module has been replaced"
		alternative: "please use M(na_elementsw_snapshot_schedule)"
	}
	short_description: "Manage SolidFire snapshot schedules"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"
	description: [
		"Create, destroy, or update accounts on SolidFire",
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
			required: false
		}

		recurring: {
			description: [
				"Should the schedule recur?",
			]
			required: false
		}

		time_interval_days: {
			description: "Time interval in days."
			required:    false
			default:     1
		}

		time_interval_hours: {
			description: "Time interval in hours."
			required:    false
			default:     0
		}

		time_interval_minutes: {
			description: "Time interval in minutes."
			required:    false
			default:     0
		}

		name: {
			description: [
				"Name for the snapshot schedule.",
			]
			required: true
		}

		snapshot_name: {
			description: [
				"Name for the created snapshots.",
			]
			required: false
		}

		volumes: {
			description: [
				"Volume IDs that you want to set the snapshot schedule for.",
				"At least 1 volume ID is required for creating a new schedule.",
				"required when C(state=present)",
			]
			required: false
		}

		retention: {
			description: [
				"Retention period for the snapshot.",
				"Format is 'HH:mm:ss'.",
			]
			required: false
		}

		schedule_id: {
			description: [
				"The schedule ID for the schedule that you want to update or delete.",
			]
			required: false
		}

		starting_date: {
			description: [
				"Starting date for the schedule.",
				"Required when C(state=present).",
				"Please use two '-' in the above format, or you may see an error- TypeError, is not JSON serializable description.",
				"Format: C(2016--12--01T00:00:00Z)",
			]
			required: false
		}
	}
}
