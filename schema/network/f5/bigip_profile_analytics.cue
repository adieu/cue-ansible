package ansible

module: bigip_profile_analytics: {
	module:            "bigip_profile_analytics"
	short_description: "Manage HTTP analytics profiles on a BIG-IP"
	description: [
		"Manage HTTP analytics profiles on a BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the profile.",
			]
			type:     "str"
			required: true
		}
		parent: {
			description: [
				"Specifies the profile from which this profile inherits settings.",
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(analytics) profile.",
			]

			type: "str"
		}
		description: {
			description: [
				"Description of the profile.",
			]
			type: "str"
		}
		collect_geo: {
			description: [
				"Enables or disables the collection of the names of the countries from where the traffic was sent.",
			]

			type: "bool"
		}
		collect_ip: {
			description: [
				"Enables or disables the collection of client IPs statistics.",
			]
			type: "bool"
		}
		collect_max_tps_and_throughput: {
			description: [
				"Enables or disables the collection of maximum TPS and throughput for all collected entities.",
			]

			type: "bool"
		}
		collect_page_load_time: {
			description: [
				"Enables or disables the collection of the page load time statistics.",
			]

			type: "bool"
		}
		collect_url: {
			description: [
				"Enables or disables the collection of requested URL statistics.",
			]
			type: "bool"
		}
		collect_user_agent: {
			description: [
				"Enables or disables the collection of user agents.",
			]
			type: "bool"
		}
		collect_user_sessions: {
			description: [
				"Enables or disables the collection of the unique user sessions.",
			]
			type: "bool"
		}
		collected_stats_external_logging: {
			description: [
				"Enables or disables the external logging of the collected statistics.",
			]

			type: "bool"
		}
		collected_stats_internal_logging: {
			description: [
				"Enables or disables the internal logging of the collected statistics.",
			]

			type: "bool"
		}
		external_logging_publisher: {
			description: [
				"Specifies the external logging publisher used to send statistical data to one or more destinations.",
			]

			type: "str"
		}
		notification_by_syslog: {
			description: [
				"Enables or disables logging of the analytics alerts into the Syslog.",
			]

			type: "bool"
		}
		notification_by_email: {
			description: [
				"Enables or disables sending the analytics alerts by email.",
			]
			type: "bool"
		}
		notification_email_addresses: {
			description: [
				"Specifies which email addresses receive alerts by email when C(notification_by_email) is enabled.",
			]

			type: "list"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the profile exists.",
				"When C(absent), ensures the profile is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
