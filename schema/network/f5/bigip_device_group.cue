package ansible

module: bigip_device_group: {
	module:            "bigip_device_group"
	short_description: "Manage device groups on a BIG-IP"
	description: [
		"Managing device groups allows you to create HA pairs and clusters of BIG-IP devices. Usage of this module should be done in conjunction with the C(bigip_configsync_actions) to sync configuration across the pair or cluster if auto-sync is disabled.",
	]

	version_added: 2.5
	options: {
		name: {
			description: [
				"Specifies the name of the device group.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"Specifies that the type of group.",
				"A C(sync-failover) device group contains devices that synchronize their configuration data and fail over to one another when a device becomes unavailable.",
				"A C(sync-only) device group has no such failover. When creating a new device group, this option will default to C(sync-only).",
				"This setting cannot be changed once it has been set.",
			]
			type: "str"
			choices: [
				"sync-failover",
				"sync-only",
			]
		}
		description: {
			description: [
				"Description of the device group.",
			]
			type: "str"
		}
		auto_sync: {
			description: [
				"Indicates whether configuration synchronization occurs manually or automatically.",
				"When creating a new device group, this option will default to C(no).",
			]
			type: "bool"
		}
		save_on_auto_sync: {
			description: [
				"When performing an auto-sync, specifies whether the configuration will be saved or not.",
				"When C(no), only the running configuration will be changed on the device(s) being synced to.",
				"When creating a new device group, this option will default to C(no).",
			]
			type: "bool"
		}
		full_sync: {
			description: [
				"Specifies whether the system synchronizes the entire configuration during synchronization operations.",
				"When C(no), the system performs incremental synchronization operations, based on the cache size specified in C(max_incremental_sync_size).",
				"Incremental configuration synchronization is a mechanism for synchronizing a device-group's configuration among its members, without requiring a full configuration load for each configuration change.",
				"In order for this to work, all devices in the device-group must initially agree on the configuration. Typically this requires at least one full configuration load to each device.",
				"When creating a new device group, this option will default to C(no).",
			]
			type: "bool"
		}
		max_incremental_sync_size: {
			description: [
				"Specifies the size of the changes cache for incremental sync.",
				"For example, using the default, if you make more than 1024 KB worth of incremental changes, the system performs a full synchronization operation.",
				"Using incremental synchronization operations can reduce the per-device sync/load time for configuration changes.",
				"This setting is relevant only when C(full_sync) is C(no).",
			]
			type: "int"
		}
		state: {
			description: [
				"When C(state) is C(present), ensures the device group exists.",
				"When C(state) is C(absent), ensures that the device group is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		network_failover: {
			description: [
				"Indicates whether failover occurs over the network or is hard-wired.",
				"This parameter is only valid for C(type)'s that are C(sync-failover).",
			]
			type:          "bool"
			version_added: 2.7
		}
	}
	notes: [
		"This module is primarily used as a component of configuring HA pairs of BIG-IP devices.",
		"Requires BIG-IP >= 12.1.x.",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
