package ansible

module: bigip_gtm_pool_member: {
	module:            "bigip_gtm_pool_member"
	short_description: "Manage GTM pool member settings"
	description: [
		"Manages a variety of settings on GTM pool members. The settings that can be adjusted with this module are much more broad that what can be done in the C(bigip_gtm_pool) module. The pool module is intended to allow you to adjust the member order in the pool, not the various settings of the members. The C(bigip_gtm_pool_member) module should be used to adjust all of the other settings.",
	]

	version_added: 2.6
	options: {
		virtual_server: {
			description: [
				"Specifies the name of the GTM virtual server which is assigned to the specified C(server).",
			]

			type:     "str"
			required: true
		}
		server_name: {
			description: [
				"Specifies the GTM server which contains the C(virtual_server).",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"The type of GTM pool that the member is in.",
			]
			type: "str"
			choices: [
				"a",
				"aaaa",
				"cname",
				"mx",
				"naptr",
				"srv",
			]
			required: true
		}
		pool: {
			description: [
				"Name of the GTM pool.",
				"For pools created on different partitions, you must specify partition of the pool in the full path format, for example, C(/FooBar/pool_name).",
			]

			type:     "str"
			required: true
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		member_order: {
			description: [
				"Specifies the order in which the member will appear in the pool.",
				"The system uses this number with load balancing methods that involve prioritizing pool members, such as the Ratio load balancing method.",
				"When creating a new member using this module, if the C(member_order) parameter is not specified, it will default to C(0) (first member in the pool).",
			]

			type: "int"
		}
		monitor: {
			description: [
				"Specifies the monitor assigned to this pool member.",
				"Pool members only support a single monitor.",
				"If the C(port) of the C(gtm_virtual_server) is C(*), the accepted values of this parameter will be affected.",
				"When creating a new pool member, if this parameter is not specified, the default of C(default) will be used.",
				"To remove the monitor from the pool member, use the value C(none).",
				"For pool members created on different partitions, you can also specify the full path to the Common monitor. For example, C(/Common/tcp).",
			]

			type: "str"
		}
		ratio: {
			description: [
				"Specifies the weight of the pool member for load balancing purposes.",
			]
			type: "int"
		}
		description: {
			description: [
				"The description of the pool member.",
			]
			type: "str"
		}
		aggregate: {
			description: [
				"List of GTM pool member definitions to be created, modified or removed.",
				"When using C(aggregates) if one of the aggregate definitions is invalid, the aggregate run will fail, indicating the error it last encountered.",
				"The module will C(NOT) rollback any changes it has made prior to encountering the error.",
				"The module also will not indicate what changes were made prior to failure, therefore it is strongly advised to run the module in check mode to make basic validation, prior to module execution.",
			]

			type: "list"
			aliases: [
				"members",
			]
			version_added: 2.8
		}
		replace_all_with: {
			description: [
				"Remove members not defined in the C(aggregate) parameter.",
				"This operation is all or none, meaning that it will stop if there are some pool members that cannot be removed.",
			]

			default: false
			type:    "bool"
			aliases: [
				"purge",
			]
			version_added: 2.8
		}
		limits: {
			description: [
				"Specifies resource thresholds or limit requirements at the pool member level.",
				"When you enable one or more limit settings, the system then uses that data to take members in and out of service.",
				"You can define limits for any or all of the limit settings. However, when a member does not meet the resource threshold limit requirement, the system marks the member as unavailable and directs load-balancing traffic to another resource.",
			]

			suboptions: {
				bits_enabled: {
					description: [
						"Whether the bits limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				packets_enabled: {
					description: [
						"Whether the packets limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				connections_enabled: {
					description: [
						"Whether the current connections limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				bits_limit: {
					description: [
						"Specifies the maximum allowable data throughput rate, in bits per second, for the member.",
						"If the network traffic volume exceeds this limit, the system marks the member as unavailable.",
					]

					type: "int"
				}
				packets_limit: {
					description: [
						"Specifies the maximum allowable data transfer rate, in packets per second, for the member.",
						"If the network traffic volume exceeds this limit, the system marks the member as unavailable.",
					]

					type: "int"
				}
				connections_limit: {
					description: [
						"Specifies the maximum number of concurrent connections, combined, for all of the member.",
						"If the connections exceed this limit, the system marks the server as unavailable.",
					]

					type: "int"
				}
			}
			type: "dict"
		}
		state: {
			description: [
				"Pool member state. When C(present), ensures that the pool member is created and enabled. When C(absent), ensures that the pool member is removed from the system. When C(enabled) or C(disabled), ensures that the pool member is enabled or disabled (respectively) on the remote device.",
				"It is recommended that you use the C(members) parameter of the C(bigip_gtm_pool) module when adding and removing members and it provides an easier way of specifying order. If this is not possible, then the C(state) parameter here should be used.",
				"Remember that the order of the members will be affected if you add or remove them using this method. To some extent, this can be controlled using the C(member_order) parameter.",
			]

			type: "str"
			choices: [
				"present",
				"absent",
				"enabled",
				"disabled",
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
