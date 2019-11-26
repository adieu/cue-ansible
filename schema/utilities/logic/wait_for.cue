package ansible

module: wait_for: {
	module:            "wait_for"
	short_description: "Waits for a condition before continuing"
	description: [
		"You can wait for a set amount of time C(timeout), this is the default if nothing is specified or just C(timeout) is specified. This does not produce an error.",
		"Waiting for a port to become available is useful for when services are not immediately available after their init scripts return which is true of certain Java application servers.",
		"It is also useful when starting guests with the M(virt) module and needing to pause until they are ready.",
		"This module can also be used to wait for a regex match a string to be present in a file.",
		"In Ansible 1.6 and later, this module can also be used to wait for a file to be available or absent on the filesystem.",
		"In Ansible 1.8 and later, this module can also be used to wait for active connections to be closed before continuing, useful if a node is being rotated out of a load balancer pool.",
		"For Windows targets, use the M(win_wait_for) module instead.",
	]
	version_added: "0.7"
	options: {
		host: {
			description: [
				"A resolvable hostname or IP address to wait for.",
			]
			type:    "str"
			default: "127.0.0.1"
		}
		timeout: {
			description: [
				"Maximum number of seconds to wait for, when used with another condition it will force an error.",
				"When used without other conditions it is equivalent of just sleeping.",
			]
			type:    "int"
			default: 300
		}
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
		port: {
			description: [
				"Port number to poll.",
				"C(path) and C(port) are mutually exclusive parameters.",
			]
			type: "int"
		}
		active_connection_states: {
			description: [
				"The list of TCP connection states which are counted as active connections.",
			]
			type: "list"
			default: ["ESTABLISHED", "FIN_WAIT1", "FIN_WAIT2", "SYN_RECV", "SYN_SENT", "TIME_WAIT"]
			version_added: "2.3"
		}
		state: {
			description: [
				"Either C(present), C(started), or C(stopped), C(absent), or C(drained).",
				"When checking a port C(started) will ensure the port is open, C(stopped) will check that it is closed, C(drained) will check for active connections.",
				"When checking for a file or a search string C(present) or C(started) will ensure that the file or string is present before continuing, C(absent) will check that file is absent or removed.",
			]

			type: "str"
			choices: ["absent", "drained", "present", "started", "stopped"]
			default: "started"
		}
		path: {
			description: [
				"Path to a file on the filesystem that must exist before continuing.",
				"C(path) and C(port) are mutually exclusive parameters.",
			]
			type:          "path"
			version_added: "1.4"
		}
		search_regex: {
			description: [
				"Can be used to match a string in either a file or a socket connection.",
				"Defaults to a multiline regex.",
			]
			type:          "str"
			version_added: "1.4"
		}
		exclude_hosts: {
			description: [
				"List of hosts or IPs to ignore when looking for active TCP connections for C(drained) state.",
			]
			type:          "list"
			version_added: "1.8"
		}
		sleep: {
			description: [
				"Number of seconds to sleep between checks.",
				"Before Ansible 2.3 this was hardcoded to 1 second.",
			]
			type:          "int"
			default:       1
			version_added: "2.3"
		}
		msg: {
			description: [
				"This overrides the normal error message from a failure to meet the required conditions.",
			]
			type:          "str"
			version_added: "2.4"
		}
	}
	notes: [
		"The ability to use search_regex with a port connection was added in Ansible 1.7.",
		"Prior to Ansible 2.4, testing for the absence of a directory or UNIX socket did not work correctly.",
		"Prior to Ansible 2.4, testing for the presence of a file did not work correctly if the remote user did not have read access to that file.",
		"Under some circumstances when using mandatory access control, a path may always be treated as being absent even if it exists, but can't be modified or created by the remote user either.",
		"When waiting for a path, symbolic links will be followed.  Many other modules that manipulate files do not follow symbolic links, so operations on the path using other modules may not work exactly as expected.",
	]

	seealso: [{
		module: "wait_for_connection"
	}, {
		module: "win_wait_for"
	}, {
		module: "win_wait_for_process"
	}]
	author: [
		"Jeroen Hoekx (@jhoekx)",
		"John Jarvis (@jarv)",
		"Andrii Radyk (@AnderEnder)",
	]
}
