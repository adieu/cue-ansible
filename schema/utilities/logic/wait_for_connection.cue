package ansible

module: wait_for_connection: {
	module:            "wait_for_connection"
	short_description: "Waits until remote system is reachable/usable"
	description: [
		"Waits for a total of C(timeout) seconds.",
		"Retries the transport connection after a timeout of C(connect_timeout).",
		"Tests the transport connection every C(sleep) seconds.",
		"This module makes use of internal ansible transport (and configuration) and the ping/win_ping module to guarantee correct end-to-end functioning.",
		"This module is also supported for Windows targets.",
	]
	version_added: "2.3"
	options: {
		connect_timeout: {
			description: [
				"Maximum number of seconds to wait for a connection to happen before closing and retrying.",
			]
			type:    "int"
			default: 5
		}
		delay: {
			description: [
				"Number of seconds to wait before starting to poll.",
			]
			type:    "int"
			default: 0
		}
		sleep: {
			description: [
				"Number of seconds to sleep between checks.",
			]
			type:    "int"
			default: 1
		}
		timeout: {
			description: [
				"Maximum number of seconds to wait for.",
			]
			type:    "int"
			default: 600
		}
	}
	notes: [
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "wait_for"
	}, {
		module: "win_wait_for"
	}, {
		module: "win_wait_for_process"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
