package ansible

module: bigip_profile_fastl4: {
	module:            "bigip_profile_fastl4"
	short_description: "Manages Fast L4 profiles"
	description: [
		"Manages Fast L4 profiles.",
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
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(fastL4) profile.",
			]

			type: "str"
		}
		idle_timeout: {
			description: [
				"Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.",
				"When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.",
				"When a number is specified, indicates the number of seconds that the TCP connection can remain idle before the system deletes it.",
				"When C(indefinite), specifies that the system does not delete TCP connections regardless of how long they remain idle.",
				"When C(0), or C(immediate), specifies that the system deletes connections immediately when they become idle.",
			]

			type: "str"
		}
		client_timeout: {
			description: [
				"Specifies a timeout for Late Binding.",
				"This is the time limit for the client to provide the application data required to select a back-end server. That is, this is the maximum time that the BIG-IP system waits for information about the sender and the target.",
				"This information typically arrives at the beginning of the FIX logon packet.",
				"When C(0), or C(immediate), allows for no time beyond the moment of the first packet transmission.",
				"When C(indefinite), disables the limit. This allows the client unlimited time to send the sender and target information.",
			]

			type: "str"
		}
		description: {
			description: [
				"Description of the profile.",
			]
			type: "str"
		}
		explicit_flow_migration: {
			description: [
				"Specifies whether a qualified late-binding connection requires an explicit iRule command to migrate down to ePVA hardware.",
				"When C(no), a late-binding connection migrates down to ePVA immediately after establishing the server-side connection.",
				"When C(yes), this parameter stops automatic migration to ePVA, and requires that the iRule explicitly trigger ePVA processing by invoking the C(release_flow) iRule command. This allows an iRule author to control when the connection uses the ePVA hardware.",
			]

			type: "bool"
		}
		ip_df_mode: {
			description: [
				"Specifies the Don't Fragment (DF) bit setting in the IP Header of the outgoing TCP packet.",
				"When C(pmtu), sets the outgoing IP Header DF bit based on IP pmtu setting.",
				"When C(preserve), sets the outgoing Packet's IP Header DF bit to be same as incoming IP Header DF bit.",
				"When C(set), sets the outgoing packet's IP Header DF bit.",
				"When C(clear), clears the outgoing packet's IP Header DF bit.",
			]
			type: "str"
			choices: [
				"pmtu",
				"preserve",
				"set",
				"clear",
			]
		}
		ip_tos_to_client: {
			description: [
				"Specifies, for IP traffic passing through the system to clients, whether the system modifies the IP type-of-service (ToS) setting in an IP packet header.",
				"May be a number between 0 and 255 (inclusive). When a number, specifies the IP ToS setting that the system inserts in the IP packet header.",
				"When C(pass-through), specifies that the IP ToS setting remains unchanged.",
				"When C(mimic), specifies that the system sets the ToS level of outgoing packets to the same ToS level of the most-recently received incoming packet.",
			]

			type: "str"
		}
		ip_tos_to_server: {
			description: [
				"Specifies, for IP traffic passing through the system to back-end servers, whether the system modifies the IP type-of-service (ToS) setting in an IP packet header.",
				"May be a number between 0 and 255 (inclusive). When a number, specifies the IP ToS setting that the system inserts in the IP packet header.",
				"When C(pass-through), specifies that the IP ToS setting remains unchanged.",
				"When C(mimic), specifies that the system sets the ToS level of outgoing packets to the same ToS level of the most-recently received incoming packet.",
			]

			type: "str"
		}
		ip_ttl_mode: {
			description: [
				"Specifies the outgoing TCP packet's IP Header TTL mode.",
				"When C(proxy), sets the outgoing IP Header TTL value to 255/64 for IPv4/IPv6 respectively.",
				"When C(preserve), sets the outgoing IP Header TTL value to be same as the incoming IP Header TTL value.",
				"When C(decrement), sets the outgoing IP Header TTL value to be one less than the incoming TTL value.",
				"When C(set), sets the outgoing IP Header TTL value to a specific value(as specified by C(ip_ttl_v4) or C(ip_ttl_v6).",
			]

			type: "str"
			choices: [
				"proxy",
				"preserve",
				"decrement",
				"set",
			]
		}
		ip_ttl_v4: {
			description: [
				"Specifies the outgoing packet's IP Header TTL value for IPv4 traffic.",
				"Maximum TTL value that can be specified is 255.",
			]
			type: "int"
		}
		ip_ttl_v6: {
			description: [
				"Specifies the outgoing packet's IP Header TTL value for IPv6 traffic.",
				"Maximum TTL value that can be specified is 255.",
			]
			type: "int"
		}
		keep_alive_interval: {
			description: [
				"Specifies the keep-alive probe interval, in seconds.",
			]
			type: "int"
		}
		late_binding: {
			description: [
				"Enables intelligent selection of a back-end server or pool, using an iRule to make the selection.",
			]

			type: "bool"
		}
		link_qos_to_client: {
			description: [
				"Specifies, for IP traffic passing through the system to clients, whether the system modifies the link quality-of-service (QoS) setting in an IP packet header.",
				"The link QoS value prioritizes the IP packet relative to other Layer 2 traffic.",
				"You can specify a number between 0 (lowest priority) and 7 (highest priority).",
				"When a number, specifies the link QoS setting that the system inserts in the IP packet header.",
				"When C(pass-through), specifies that the link QoS setting remains unchanged.",
			]
			type: "str"
		}
		link_qos_to_server: {
			description: [
				"Specifies, for IP traffic passing through the system to back-end servers, whether the system modifies the link quality-of-service (QoS) setting in an IP packet header.",
				"The link QoS value prioritizes the IP packet relative to other Layer 2 traffic.",
				"You can specify a number between 0 (lowest priority) and 7 (highest priority).",
				"When a number, specifies the link QoS setting that the system inserts in the IP packet header.",
				"When C(pass-through), specifies that the link QoS setting remains unchanged.",
			]
			type: "str"
		}
		loose_close: {
			description: [
				"When C(yes), specifies, that the system closes a loosely-initiated connection when the system receives the first FIN packet from either the client or the server.",
			]

			type: "bool"
		}
		loose_initialization: {
			description: [
				"When C(yes), specifies that the system initializes a connection when it receives any TCP packet, rather that requiring a SYN packet for connection initiation.",
			]

			type: "bool"
		}
		mss_override: {
			description: [
				"Specifies a maximum segment size (MSS) override for server-side connections.",
				"Valid range is 256 to 9162 or 0 to disable.",
			]
			type: "int"
		}
		reassemble_fragments: {
			description: [
				"When C(yes), specifies that the system reassembles IP fragments.",
			]
			type: "bool"
		}
		receive_window_size: {
			description: [
				"Specifies the amount of data the BIG-IP system can accept without acknowledging the server.",
			]

			type: "int"
		}
		reset_on_timeout: {
			description: [
				"When C(yes), specifies that the system sends a reset packet (RST) in addition to deleting the connection, when a connection exceeds the idle timeout value.",
			]

			type: "bool"
		}
		rtt_from_client: {
			description: [
				"When C(yes), specifies that the system uses TCP timestamp options to measure the round-trip time to the client.",
			]

			type: "bool"
		}
		rtt_from_server: {
			description: [
				"When C(yes), specifies that the system uses TCP timestamp options to measure the round-trip time to the server.",
			]

			type: "bool"
		}
		server_sack: {
			description: [
				"Specifies whether the BIG-IP system processes Selective ACK (Sack) packets in cookie responses from the server.",
			]

			type: "bool"
		}
		server_timestamp: {
			description: [
				"Specifies whether the BIG-IP system processes timestamp request packets in cookie responses from the server.",
			]

			type: "bool"
		}
		syn_cookie_mss: {
			description: [
				"Specifies a value that overrides the SYN cookie maximum segment size (MSS) value in the SYN-ACK packet that is returned to the client.",
				"Valid values are 0, and values from 256 through 9162.",
			]
			type: "int"
		}
		tcp_close_timeout: {
			description: [
				"Specifies the length of time a connection can remain idle before deletion.",
			]
			type: "str"
		}
		tcp_generate_isn: {
			description: [
				"When C(yes), specifies that the system generates initial sequence numbers for SYN packets, according to RFC 1948.",
			]

			type: "bool"
		}
		tcp_handshake_timeout: {
			description: [
				"Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK). If the TCP handshake takes longer than the timeout, the system automatically closes the connection.",
				"When a number, specifies how long the system can try to establish a TCP handshake before timing out.",
				"When C(disabled), specifies that the system does not apply a timeout to a TCP handshake.",
				"When C(indefinite), specifies that attempting a TCP handshake never times out.",
			]
			type: "str"
		}
		tcp_strip_sack: {
			description: [
				"When C(yes), specifies that the system blocks a TCP selective ACK SackOK option from passing to the server on an initiating SYN.",
			]

			type: "bool"
		}
		tcp_time_wait_timeout: {
			description: [
				"Specifies the number of milliseconds that a connection is in the TIME-WAIT state before closing.",
			]

			type: "int"
		}
		tcp_timestamp_mode: {
			description: [
				"Specifies the action that the system should take on TCP timestamps.",
			]
			type: "str"
			choices: [
				"preserve",
				"rewrite",
				"strip",
			]
		}
		tcp_wscale_mode: {
			description: [
				"Specifies the action that the system should take on TCP windows.",
			]
			type: "str"
			choices: [
				"preserve",
				"rewrite",
				"strip",
			]
		}
		timeout_recovery: {
			description: [
				"Specifies how to handle client-timeout errors for Late Binding.",
				"Timeout errors may be caused by a DoS attack or a lossy connection.",
				"When C(disconnect), causes the BIG-IP system to drop the connection.",
				"When C(fallback), reverts the connection to normal FastL4 load-balancing, based on the client's TCP header. This causes the BIG-IP system to choose a back-end server based only on the source address and port.",
			]

			type: "str"
			choices: [
				"disconnect",
				"fallback",
			]
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
