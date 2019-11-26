package ansible

module: bigip_message_routing_router: {
	module:            "bigip_message_routing_router"
	short_description: "Manages router profiles for message-routing protocols"
	description: [
		"Manages router profiles for message-routing protocols.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the router profile.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"The user defined description of the router profile.",
			]
			type: "str"
		}
		type: {
			description: [
				"Parameter used to specify the type of the router profile to manage.",
				"Default setting is C(generic) with more options added in future.",
			]
			type: "str"
			choices: [
				"generic",
			]
			default: "generic"
		}
		parent: {
			description: [
				"The parent template of this router profile. Once this value has been set, it cannot be changed.",
				"The default values are set by the system if not specified and they correspond to the router type created, ie. C(/Common/messagerouter) for C(generic) C(type) and so on.",
			]

			type: "str"
		}
		ignore_client_port: {
			description: [
				"When C(yes), the remote port on clientside connections ie. connections where the peer connected to the BIG-IP is ignored when searching for an existing connection.",
			]

			type: "bool"
		}
		inherited_traffic_group: {
			description: [
				"When set to C(yes) the C(traffic_group) will be inherited from the containing folder. When not specified the system sets this to C(no) when creating new router profile.",
			]

			type: "bool"
		}
		traffic_group: {
			description: [
				"Specifies the traffic-group of the router profile.",
				"Setting the C(traffic_group) to an empty string value C(\"\") will cause the device to inherit from containing folder, which means the value of C(inherited_traffic_group) on device will be C(yes).",
			]

			type: "str"
		}
		use_local_connection: {
			description: [
				"If C(yes), the router will route a message to an existing connection on the same TMM as the message was received on.",
			]

			type: "bool"
		}
		max_pending_bytes: {
			description: [
				"The maximum number of bytes worth of pending messages that will be held while waiting for a connection to a peer to be created. Once reached, any additional messages to the peer will be flagged as undeliverable and returned to the originator.",
				"The accepted range is between 0 and 4294967295 inclusive.",
			]
			type: "int"
		}
		max_pending_messages: {
			description: [
				"The maximum number of pending messages that will be held while waiting for a connection to a peer to be created. Once reached, any additional messages to the peer will be flagged as undeliverable and returned to the originator.",
				"The accepted range is between 0 and 65535 inclusive.",
			]
			type: "int"
		}
		max_retries: {
			description: [
				"Sets the maximum number of time a message may be resubmitted for rerouting by the C(MR::retry) iRule command.",
				"The accepted range is between 0 and 4294967295 inclusive.",
			]
			type: "int"
		}
		mirror: {
			description: [
				"Enables or disables state mirroring. State mirroring can be used to maintain the same state information in the standby unit that is in the active unit.",
			]

			type: "bool"
		}
		mirrored_msg_sweeper_interval: {
			description: [
				"Specifies the maximum time in milliseconds that a message will be held on the standby device as it waits for the active device to route the message.",
				"Messages on the standby device held for longer then the configurable sweeper interval, will be dropped.",
				"The accepted range is between 0 and 4294967295 inclusive.",
			]
			type: "int"
		}
		routes: {
			description: [
				"Specifies a list of static routes for the router instance to use.",
				"The route must be on the same partition as router profile.",
			]
			type: "list"
		}
		partition: {
			description: [
				"Device partition to create router profile on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the router profile exists.",
				"When C(absent), ensures the router profile is removed.",
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
