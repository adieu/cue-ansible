package ansible

module: bigip_profile_tcp: {
	module:            "bigip_profile_tcp"
	short_description: "Manage TCP profiles on a BIG-IP"
	description: [
		"Manage TCP profiles on a BIG-IP. Many TCP profiles; each with their own adjustments to the standard C(tcp) profile. Users of this module should be aware that many of the adjustable knobs have no module default. Instead, the default is assigned by the BIG-IP system itself which, in most cases, is acceptable.",
	]

	version_added: 2.6
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
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(tcp) profile.",
			]

			type: "str"
		}
		idle_timeout: {
			description: [
				"Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.",
				"When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.",
				"When a number is specified, indicates the number of seconds that the TCP connection can remain idle before the system deletes it.",
				"When C(0), or C(indefinite), specifies that the system does not delete TCP connections regardless of how long they remain idle.",
			]

			type: "str"
		}
		time_wait_recycle: {
			description: [
				"Specifies that connections in a TIME-WAIT state are reused, if a SYN packet, indicating a request for a new connection, is received.",
				"When C(no), connections in a TIME-WAIT state remain unused for a specified length of time.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type:          "bool"
			version_added: 2.7
		}
		nagle: {
			description: [
				"When C(enabled) the system applies Nagle's algorithm to reduce the number of short segments on the network.",
				"When C(auto), the use of Nagle's algorithm is decided based on network conditions.",
				"Note that for interactive protocols such as Telnet, rlogin, or SSH, F5 recommends disabling this setting on high-latency networks, to improve application responsiveness.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type: "str"
			choices: [
				"auto",
				"enabled",
				"disabled",
			]
			version_added: 2.9
		}
		early_retransmit: {
			description: [
				"When C(yes) the system uses early fast retransmits to reduce the recovery time for connections that are receive-buffer or user-data limited.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type:          "bool"
			version_added: 2.9
		}
		proxy_options: {
			description: [
				"When C(yes) the system advertises an option, such as a time-stamp to the server only if it was negotiated with the client.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type:          "bool"
			version_added: 2.9
		}
		initial_congestion_window_size: {
			description: [
				"Specifies the initial congestion window size for connections to this destination. The actual window size is this value multiplied by the MSS for the same connection.",
				"When set to C(0) the system uses the values specified in RFC2414.",
				"The valid value range is 0 - 16 inclusive.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type:          "int"
			version_added: 2.9
		}
		initial_receive_window_size: {
			description: [
				"Specifies the initial receive window size for connections to this destination. The actual window size is this value multiplied by the MSS for the same connection.",
				"When set to C(0) the system uses the Slow Start value.",
				"The valid value range is 0 - 16 inclusive.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type:          "int"
			version_added: 2.9
		}
		syn_rto_base: {
			description: [
				"Specifies the initial RTO C(Retransmission TimeOut) base multiplier for SYN retransmission, in C(milliseconds).",
				"This value is modified by the exponential backoff table to select the interval for subsequent retransmissions.",
				"The valid value range is 0 - 5000 inclusive.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]
			type:          "int"
			version_added: 2.9
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
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
