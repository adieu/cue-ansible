package ansible

module: azure_rm_rediscache: {
	module:            "azure_rm_rediscache"
	version_added:     "2.8"
	short_description: "Manage Azure Cache for Redis instance"
	description: [
		"Create, update and delete instance of Azure Cache for Redis.",
	]

	options: {
		resource_group: {
			description: [
				"Name of the resource group to which the resource belongs.",
			]
			required: true
		}
		name: {
			description: [
				"Unique name of the Azure Cache for Redis to create or update.",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		sku: {
			description: [
				"SKU info of Azure Cache for Redis.",
			]
			suboptions: {
				name: {
					description: [
						"Type of Azure Cache for Redis to deploy.",
					]
					choices: [
						"basic",
						"standard",
						"premium",
					]
					required: true
				}
				size: {
					description: [
						"Size of Azure Cache for Redis to deploy.",
						"When I(sku=basic) or I(sku=standard), allowed values are C(C0), C(C1), C(C2), C(C3), C(C4), C(C5), C(C6).",
						"When I(sku=premium), allowed values are C(P1), C(P2), C(P3), C(P4).",
						"Please see U(https://docs.microsoft.com/en-us/rest/api/redis/redis/create#sku) for allowed values.",
					]
					choices: [
						"C0",
						"C1",
						"C2",
						"C3",
						"C4",
						"C5",
						"C6",
						"P1",
						"P2",
						"P3",
						"P4",
					]
					required: true
				}
			}
		}
		enable_non_ssl_port: {
			description: [
				"When set I(enable_non_ssl_port=true), the non-ssl Redis server port 6379 will be enabled.",
			]
			type:    "bool"
			default: false
		}
		maxfragmentationmemory_reserved: description: [
			"Configures the amount of memory in MB that is reserved to accommodate for memory fragmentation.",
			"Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.",
		]
		maxmemory_reserved: description: [
			"Configures the amount of memory in MB that is reserved for non-cache operations.",
			"Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.",
		]
		maxmemory_policy: {
			description: [
				"Configures the eviction policy of the cache.",
				"Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.",
			]
			choices: [
				"volatile_lru",
				"allkeys_lru",
				"volatile_random",
				"allkeys_random",
				"volatile_ttl",
				"noeviction",
			]
		}
		notify_keyspace_events: {
			description: [
				"Allows clients to receive notifications when certain events occur.",
				"Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.",
			]
			type: "str"
		}
		shard_count: {
			description: [
				"The number of shards to be created when I(sku=premium).",
			]
			type: "int"
		}
		static_ip: description: [
			"Static IP address. Required when deploying an Azure Cache for Redis inside an existing Azure virtual network.",
		]
		subnet: description: [
			"Subnet in a virtual network to deploy the Azure Cache for Redis in.",
			"It can be resource id of subnet, for example /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1.",
			"It can be a dictionary where contains I(name), I(virtual_network_name) and I(resource_group).",
			"I(name). Name of the subnet.",
			"I(resource_group). Resource group name of the subnet.",
			"I(virtual_network_name). Name of virtual network to which this subnet belongs.",
		]
		tenant_settings: {
			description: [
				"Dict of tenant settings.",
			]
			type: "dict"
		}
		reboot: {
			description: [
				"Reboot specified Redis node(s). There can be potential data loss.",
			]
			suboptions: {
				shard_id: {
					description: [
						"If clustering is enabled, the id of the shard to be rebooted.",
					]
					type: "int"
				}
				reboot_type: {
					description: [
						"Which Redis node(s) to reboot.",
					]
					choices: [
						"primary",
						"secondary",
						"all",
					]
					default: "all"
				}
			}
		}
		regenerate_key: {
			description: [
				"Regenerate Redis cache's access keys.",
			]
			suboptions: key_type: {
				description: [
					"The Redis key to regenerate.",
				]
				choices: [
					"primary",
					"secondary",
				]
			}
		}
		wait_for_provisioning: {
			description: [
				"Wait till the Azure Cache for Redis instance provisioning_state is Succeeded.",
				"It takes several minutes for Azure Cache for Redis to be provisioned ready for use after creating/updating/rebooting.",
				"Set this option to C(true) to wait for provisioning_state. Set to C(false) if you don't care about provisioning_state.",
				"Poll wait timeout is 60 minutes.",
			]
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Assert the state of the Azure Cache for Redis.",
				"Use C(present) to create or update an Azure Cache for Redis and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yunge Zhu(@yungezz)",
	]
}
