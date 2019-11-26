package ansible

module: bigip_device_connectivity: {
	module:            "bigip_device_connectivity"
	short_description: "Manages device IP configuration settings for HA on a BIG-IP"
	description: [
		"Manages device IP configuration settings for HA on a BIG-IP. Each BIG-IP device has synchronization and failover connectivity information (IP addresses) that you define as part of HA pairing or clustering. This module allows you to configure that information.",
	]

	version_added: 2.5
	options: {
		config_sync_ip: {
			description: [
				"Local IP address that the system uses for ConfigSync operations.",
			]
			type: "str"
		}
		mirror_primary_address: {
			description: [
				"Specifies the primary IP address for the system to use to mirror connections.",
			]

			type: "str"
		}
		mirror_secondary_address: {
			description: [
				"Specifies the secondary IP address for the system to use to mirror connections.",
			]

			type: "str"
		}
		unicast_failover: {
			description: [
				"Desired addresses to use for failover operations. Options C(address) and C(port) are supported with dictionary structure where C(address) is the local IP address that the system uses for failover operations. Port specifies the port that the system uses for failover operations. If C(port) is not specified, the default value C(1026) will be used.  If you are specifying the (recommended) management IP address, use 'management-ip' in the address field.",
			]

			type: "list"
		}
		failover_multicast: {
			description: [
				"When C(yes), ensures that the Failover Multicast configuration is enabled and if no further multicast configuration is provided, ensures that C(multicast_interface), C(multicast_address) and C(multicast_port) are the defaults specified in each option's description. When C(no), ensures that Failover Multicast configuration is disabled.",
			]

			type: "bool"
		}
		multicast_interface: {
			description: [
				"Interface over which the system sends multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(eth0) will be used.",
			]

			type: "str"
		}
		multicast_address: {
			description: [
				"IP address for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(224.0.0.245) will be used.",
			]

			type: "str"
		}
		multicast_port: {
			description: [
				"Port for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(62960) will be used. This value must be between 0 and 65535.",
			]

			type: "int"
		}
		cluster_mirroring: {
			description: [
				"Specifies whether mirroring occurs within the same cluster or between different clusters on a multi-bladed system.",
				"This parameter is only supported on platforms that have multiple blades, such as Viprion hardware. It is not supported on VE.",
			]

			type: "str"
			choices: [
				"between-clusters",
				"within-cluster",
			]
			version_added: 2.7
		}
	}
	notes: [
		"This module is primarily used as a component of configuring HA pairs of BIG-IP devices.",
		"Requires BIG-IP >= 12.0.0",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
