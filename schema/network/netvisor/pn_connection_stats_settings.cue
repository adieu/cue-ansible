package ansible

module: pn_connection_stats_settings: {
	module:            "pn_connection_stats_settings"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify connection-stats-settings"
	description: [
		"This module can be used to modify the settings for collecting statistical data about connections.",
	]

	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(update) to modify the connection-stats-settings.",
			]

			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_enable: {
			description: [
				"Enable or disable collecting connections statistics.",
			]
			required: false
			type:     "bool"
		}
		pn_connection_backup_enable: {
			description: [
				"Enable backup for connection statistics collection.",
			]
			required: false
			type:     "bool"
		}
		pn_client_server_stats_max_memory: {
			description: [
				"maximum memory for client server statistics.",
			]
			required: false
			type:     "str"
		}
		pn_connection_stats_log_disk_space: {
			description: [
				"disk-space allocated for statistics (including rotated log files).",
			]
			required: false
			type:     "str"
		}
		pn_client_server_stats_log_enable: {
			description: [
				"Enable or disable statistics.",
			]
			required: false
			type:     "bool"
		}
		pn_service_stat_max_memory: {
			description: [
				"maximum memory allowed for service statistics.",
			]
			required: false
			type:     "str"
		}
		pn_connection_stats_log_interval: {
			description: [
				"interval to collect statistics.",
			]
			required: false
			type:     "str"
		}
		pn_fabric_connection_backup_interval: {
			description: [
				"backup interval for fabric connection statistics collection.",
			]
			required: false
			type:     "str"
		}
		pn_connection_backup_interval: {
			description: [
				"backup interval for connection statistics collection.",
			]
			required: false
			type:     "str"
		}
		pn_connection_stats_log_enable: {
			description: [
				"enable or disable statistics.",
			]
			required: false
			type:     "bool"
		}
		pn_fabric_connection_max_memory: {
			description: [
				"maximum memory allowed for fabric connection statistics.",
			]
			required: false
			type:     "str"
		}
		pn_fabric_connection_backup_enable: {
			description: [
				"enable backup for fabric connection statistics collection.",
			]
			required: false
			type:     "bool"
		}
		pn_client_server_stats_log_disk_space: {
			description: [
				"disk-space allocated for statistics (including rotated log files).",
			]
			required: false
			type:     "str"
		}
		pn_connection_max_memory: {
			description: [
				"maximum memory allowed for connection statistics.",
			]
			required: false
			type:     "str"
		}
		pn_connection_stats_max_memory: {
			description: [
				"maximum memory allowed for connection statistics.",
			]
			required: false
			type:     "str"
		}
		pn_client_server_stats_log_interval: {
			description: [
				"interval to collect statistics.",
			]
			required: false
			type:     "str"
		}
	}
}
