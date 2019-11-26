package ansible

module: datadog_monitor: {
	module:            "datadog_monitor"
	short_description: "Manages Datadog monitors"
	description: [
		"Manages monitors within Datadog.",
		"Options as described on https://docs.datadoghq.com/api/.",
	]
	version_added: "2.0"
	author:        "Sebastian Kornehl (@skornehl)"
	requirements: ["datadog"]
	options: {
		api_key: {
			description: [
				"Your Datadog API key.",
			]
			required: true
			type:     "str"
		}
		api_host: {
			description: [
				"The URL to the Datadog API. Default value is C(https://api.datadoghq.com).",
				"This value can also be set with the C(DATADOG_HOST) environment variable.",
			]
			required:      false
			type:          "str"
			version_added: "2.10"
		}
		app_key: {
			description: [
				"Your Datadog app key.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"The designated state of the monitor.",
			]
			required: true
			choices: ["present", "absent", "mute", "unmute"]
			type: "str"
		}
		tags: {
			description: [
				"A list of tags to associate with your monitor when creating or updating.",
				"This can help you categorize and filter monitors.",
			]
			version_added: "2.2"
			type:          "list"
		}
		type: {
			description: [
				"The type of the monitor.",
			]
			choices: ["metric alert", "service check", "event alert", "process alert"]
			type: "str"
		}
		query: {
			description: [
				"The monitor query to notify on.",
				"Syntax varies depending on what type of monitor you are creating.",
			]
			type: "str"
		}
		name: {
			description: [
				"The name of the alert.",
			]
			required: true
			type:     "str"
		}
		message: {
			description: [
				"A message to include with notifications for this monitor.",
				"Email notifications can be sent to specific users by using the same '@username' notation as events.",
				"Monitor message template variables can be accessed by using double square brackets, i.e '[[' and ']]'.",
			]
			type: "str"
		}
		silenced: {
			description: [
				"Dictionary of scopes to silence, with timestamps or None.",
				"Each scope will be muted until the given POSIX timestamp or forever if the value is None.",
			]
			default: ""
		}
		notify_no_data: {
			description: [
				"Whether this monitor will notify when data stops reporting.",
			]
			type:    "bool"
			default: "no"
		}
		no_data_timeframe: {
			description: [
				"The number of minutes before a monitor will notify when data stops reporting.",
				"Must be at least 2x the monitor timeframe for metric alerts or 2 minutes for service checks.",
			]
			default: "2x timeframe for metric, 2 minutes for service"
			type:    "str"
		}
		timeout_h: {
			description: [
				"The number of hours of the monitor not reporting data before it will automatically resolve from a triggered state.",
			]
			type: "str"
		}
		renotify_interval: {
			description: [
				"The number of minutes after the last notification before a monitor will re-notify on the current status.",
				"It will only re-notify if it is not resolved.",
			]
			type: "str"
		}
		escalation_message: {
			description: [
				"A message to include with a re-notification. Supports the '@username' notification we allow elsewhere.",
				"Not applicable if I(renotify_interval=None).",
			]
			type: "str"
		}
		notify_audit: {
			description: [
				"Whether tagged users will be notified on changes to this monitor.",
			]
			type:    "bool"
			default: "no"
		}
		thresholds: {
			description: [
				"A dictionary of thresholds by status.",
				"Only available for service checks and metric alerts.",
				"Because each of them can have multiple thresholds, we do not define them directly in the query.",
			]
			default: {ok: 1, critical: 1, warning: 1}
		}
		locked: {
			description: [
				"Whether changes to this monitor should be restricted to the creator or admins.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		require_full_window: {
			description: [
				"Whether this monitor needs a full window of data before it gets evaluated.",
				"We highly recommend you set this to False for sparse metrics, otherwise some evaluations will be skipped.",
			]
			version_added: "2.3"
			type:          "bool"
		}
		new_host_delay: {
			description: [
				"A positive integer representing the number of seconds to wait before evaluating the monitor for new hosts.",
				"This gives the host time to fully initialize.",
			]
			version_added: "2.4"
			type:          "str"
		}
		evaluation_delay: {
			description: [
				"Time to delay evaluation (in seconds).",
				"Effective for sparse values.",
			]
			version_added: "2.7"
			type:          "str"
		}
		id: {
			description: [
				"The ID of the alert.",
				"If set, will be used instead of the name to locate the alert.",
			]
			version_added: "2.3"
			type:          "str"
		}
	}
}
