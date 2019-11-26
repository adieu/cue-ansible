package ansible

module: bigip_routedomain: {
	module:            "bigip_routedomain"
	short_description: "Manage route domains on a BIG-IP"
	description: [
		"Manage route domains on a BIG-IP.",
	]
	version_added: 2.2
	options: {
		name: {
			description: [
				"The name of the route domain.",
			]
			type:          "str"
			version_added: 2.5
		}
		bwc_policy: {
			description: [
				"The bandwidth controller for the route domain.",
			]
			type: "str"
		}
		connection_limit: {
			description: [
				"The maximum number of concurrent connections allowed for the route domain. Setting this to C(0) turns off connection limits.",
			]

			type: "int"
		}
		description: {
			description: [
				"Specifies descriptive text that identifies the route domain.",
			]
			type: "str"
		}
		flow_eviction_policy: {
			description: [
				"The eviction policy to use with this route domain. Apply an eviction policy to provide customized responses to flow overflows and slow flows on the route domain.",
			]

			type: "str"
		}
		id: {
			description: [
				"The unique identifying integer representing the route domain.",
				"This field is required when creating a new route domain.",
				"In version 2.5, this value is no longer used to reference a route domain when making modifications to it (for instance during update and delete operations). Instead, the C(name) parameter is used. In version 2.6, the C(name) value will become a required parameter.",
			]

			type: "int"
		}
		parent: {
			description: [
				"Specifies the route domain the system searches when it cannot find a route in the configured domain.",
			]

			type: "str"
		}
		partition: {
			description: [
				"Partition to create the route domain on. Partitions cannot be updated once they are created.",
			]

			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
		routing_protocol: {
			description: [
				"Dynamic routing protocols for the system to use in the route domain.",
			]
			type: "list"
			choices: [
				"none",
				"BFD",
				"BGP",
				"IS-IS",
				"OSPFv2",
				"OSPFv3",
				"PIM",
				"RIP",
				"RIPng",
			]
		}
		service_policy: {
			description: [
				"Service policy to associate with the route domain.",
			]
			type: "str"
		}
		state: {
			description: [
				"Whether the route domain should exist or not.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		strict: {
			description: [
				"Specifies whether the system enforces cross-routing restrictions or not.",
			]
			type: "bool"
		}
		vlans: {
			description: [
				"VLANs for the system to use in the route domain.",
			]
			type: "list"
		}
		fw_enforced_policy: {
			description: [
				"Specifies AFM policy to be attached to route domain.",
			]
			type:          "str"
			version_added: 2.8
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
