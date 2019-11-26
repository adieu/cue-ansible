package ansible

module: vmware_vcenter_settings: {
	module:            "vmware_vcenter_settings"
	short_description: "Configures general settings on a vCenter server"
	description: [
		"This module can be used to configure the vCenter server general settings (except the statistics).",
		"The statistics can be configured with the module C(vmware_vcenter_statistics).",
	]
	version_added: 2.8
	author: [
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested with vCenter Server Appliance (vCSA) 6.5 and 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		database: {
			description: [
				"The database settings for vCenter server.",
				"Valid attributes are:",
				"- C(max_connections) (int): Maximum connections. (default: 50)",
				"- C(task_cleanup) (bool): Task cleanup. (default: true)",
				"- C(task_retention) (int): Task retention (days). (default: 30)",
				"- C(event_cleanup) (bool): Event cleanup. (default: true)",
				"- C(event_retention) (int): Event retention (days). (default: 30)",
			]
			type: "dict"
			default: {
				max_connections: 50
				task_cleanup:    true
				task_retention:  30
				event_cleanup:   true
				event_retention: 30
			}
		}

		runtime_settings: {
			description: [
				"The unique runtime settings for vCenter server.",
				"Valid attributes are:",
				"- C(unique_id) (int): vCenter server unique ID.",
				"- C(managed_address) (str): vCenter server managed address.",
				"- C(vcenter_server_name) (str): vCenter server name. (default: FQDN)",
			]
			type: "dict"
		}
		user_directory: {
			description: [
				"The user directory settings for the vCenter server installation.",
				"Valid attributes are:",
				"- C(timeout) (int): User directory timeout. (default: 60)",
				"- C(query_limit) (bool): Query limit. (default: true)",
				"- C(query_limit_size) (int): Query limit size. (default: 5000)",
				"- C(validation) (bool): Mail Validation. (default: true)",
				"- C(validation_period) (int): Validation period. (default: 1440)",
			]
			type: "dict"
			default: {
				timeout:           60
				query_limit:       true
				query_limit_size:  5000
				validation:        true
				validation_period: 1440
			}
		}

		mail: {
			description: [
				"The settings vCenter server uses to send email alerts.",
				"Valid attributes are:",
				"- C(server) (str): Mail server",
				"- C(sender) (str): Mail sender address",
			]
			type: "dict"
		}
		snmp_receivers: {
			description: [
				"SNMP trap destinations for vCenter server alerts.",
				"Valid attributes are:",
				"- C(snmp_receiver_1_url) (str): Primary Receiver ULR. (default: \"localhost\")",
				"- C(snmp_receiver_1_enabled) (bool): Enable receiver. (default: True)",
				"- C(snmp_receiver_1_port) (int): Receiver port. (default: 162)",
				"- C(snmp_receiver_1_community) (str): Community string. (default: \"public\")",
				"- C(snmp_receiver_2_url) (str): Receiver 2 ULR. (default: \"\")",
				"- C(snmp_receiver_2_enabled) (bool): Enable receiver. (default: False)",
				"- C(snmp_receiver_2_port) (int): Receiver port. (default: 162)",
				"- C(snmp_receiver_2_community) (str): Community string. (default: \"\")",
				"- C(snmp_receiver_3_url) (str): Receiver 3 ULR. (default: \"\")",
				"- C(snmp_receiver_3_enabled) (bool): Enable receiver. (default: False)",
				"- C(snmp_receiver_3_port) (int): Receiver port. (default: 162)",
				"- C(snmp_receiver_3_community) (str): Community string. (default: \"\")",
				"- C(snmp_receiver_4_url) (str): Receiver 4 ULR. (default: \"\")",
				"- C(snmp_receiver_4_enabled) (bool): Enable receiver. (default: False)",
				"- C(snmp_receiver_4_port) (int): Receiver port. (default: 162)",
				"- C(snmp_receiver_4_community) (str): Community string. (default: \"\")",
			]
			type: "dict"
			default: {
				snmp_receiver_1_url:       "localhost"
				snmp_receiver_1_enabled:   true
				snmp_receiver_1_port:      162
				snmp_receiver_1_community: "public"
				snmp_receiver_2_url:       ""
				snmp_receiver_2_enabled:   false
				snmp_receiver_2_port:      162
				snmp_receiver_2_community: ""
				snmp_receiver_3_url:       ""
				snmp_receiver_3_enabled:   false
				snmp_receiver_3_port:      162
				snmp_receiver_3_community: ""
				snmp_receiver_4_url:       ""
				snmp_receiver_4_enabled:   false
				snmp_receiver_4_port:      162
				snmp_receiver_4_community: ""
			}
		}

		timeout_settings: {
			description: [
				"The vCenter server connection timeout for normal and long operations.",
				"Valid attributes are:",
				"- C(normal_operations) (int) (default: 30)",
				"- C(long_operations) (int) (default: 120)",
			]
			type: "dict"
			default: {
				normal_operations: 30
				long_operations:   120
			}
		}

		logging_options: {
			description: [
				"The level of detail that vCenter server usesfor log files.",
			]
			type: "str"
			choices: ["none", "error", "warning", "info", "verbose", "trivia"]
			default: "info"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
