package ansible

module: bigip_message_routing_peer: {
	module:            "bigip_message_routing_peer"
	short_description: "Manage peers for routing generic message protocol messages"
	description: [
		"Manage peers for routing generic message protocol messages.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the peer to manage.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"The user defined description of the peer.",
			]
			type: "str"
		}
		type: {
			description: [
				"Parameter used to specify the type of the peer to manage.",
				"Default setting is C(generic) with more options added in future.",
			]
			type: "str"
			choices: [
				"generic",
			]
			default: "generic"
		}
		auto_init: {
			description: [
				"If C(yes), the BIGIP will automatically create outbound connections to the active pool members in the specified C(pool) using the configuration of the specified C(transport_config).",
				"For auto-initialization to attempt to create a connection, the peer must be included in a route that is attached to a router instance. For each router instance that the peer is contained in, a connection will be initiated.",
				"The C(auto_init) logic will verify at C(auto_init_interval) if the a connection exists between the BIG-IP and the pool members of the pool. If a connection does not exist, it will attempt to reestablish one.",
			]

			type: "bool"
		}
		auto_init_interval: {
			description: [
				"Specifies the interval that attempts to initiate a connection occur.",
				"The default value upon peer object creation, that supplied by the system is C(5000) milliseconds.",
				"The accepted range is between 0 and 4294967295 inclusive.",
			]
			type: "int"
		}
		connection_mode: {
			description: [
				"Specifies how the number of connections per host are to be limited.",
			]
			type: "str"
			choices: [
				"per-blade",
				"per-client",
				"per-peer",
				"per-tmm",
			]
		}
		number_of_connections: {
			description: [
				"Specifies the distribution of connections between the BIG-IP and a remote host.",
				"The accepted range is between 0 and 65535 inclusive.",
			]
			type: "int"
		}
		pool: {
			description: [
				"Specifies the name of the pool that messages will be routed towards.",
				"The specified pool must be on the same partition as the peer.",
			]
			type: "str"
		}
		ratio: {
			description: [
				"Specifies the ratio to be used for selection of a peer within a list of peers in a ltm route.",
				"The accepted range is between 0 and 4294967295 inclusive.",
			]
			type: "int"
		}
		transport_config: {
			description: [
				"The name of the ltm virtual or ltm transport-config to use for creating an outgoing connection.",
				"The resource must exist on the same partition as the peer object.",
			]
			type: "str"
		}
		partition: {
			description: [
				"Device partition to create peer object on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the peer exists.",
				"When C(absent), ensures the peer is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	notes: [
		"Requires BIG-IP >= 14.0.0",
	]
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
