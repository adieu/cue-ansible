package ansible

module: bigip_device_traffic_group: {
	module:            "bigip_device_traffic_group"
	short_description: "Manages traffic groups on BIG-IP"
	description: [
		"Supports managing traffic groups and their attributes on a BIG-IP.",
	]
	version_added: 2.5
	options: {
		name: {
			description: [
				"The name of the traffic group.",
			]
			type:     "str"
			required: true
		}
		mac_address: {
			description: [
				"Specifies the floating Media Access Control (MAC) address associated with the floating IP addresses defined for a traffic group.",
				"Primarily, a MAC masquerade address minimizes ARP communications or dropped packets as a result of failover.",
				"A MAC masquerade address ensures that any traffic destined for a specific traffic group reaches an available device after failover, which happens because along with the traffic group, the MAC masquerade address floats to the available device.",
				"Without a MAC masquerade address, the sending host must learn the MAC address for a newly-active device, either by sending an ARP request or by relying on the gratuitous ARP from the newly-active device.",
				"To unset the MAC address, specify an empty value (C(\"\")) to this parameter.",
			]
			type:          "str"
			version_added: 2.6
		}
		ha_order: {
			description: [
				"Specifies order in which you would like to assign devices for failover.",
				"If you configure this setting, you must configure the setting on every traffic group in the device group.",
				"The values should be device names of the devices that belong to the failover group configured beforehand.",
				"The order in which the devices are placed as arguments to this parameter, determines their HA order on the device, in other words changing the order of the same elements will cause a change on the unit.",
				"To disable an HA order failover method , specify an empty string value (C(\"\")) to this parameter.",
				"Disabling HA order will revert the device back to using Load Aware method as it is the default, unless C(ha_group) setting is also configured.",
				"Device names will be prepended by a partition by the module, so you can provide either the full path format name C(/Common/bigip1) or just the name string C(bigip1).",
			]

			type:          "list"
			version_added: 2.8
		}
		ha_group: {
			description: [
				"Specifies a configured C(HA group) to be associated with the traffic group.",
				"Once you create an HA group on a device and associate the HA group with a traffic group, you must create an HA group and associate it with that same traffic group on every device in the device group.",
				"To disable an HA group failover method , specify an empty string value (C(\"\")) to this parameter.",
				"Disabling HA group will revert the device back to using C(Load Aware) method as it is the default, unless C(ha_order) setting is also configured.",
				"The C(auto_failback) and C(auto_failback_time) are not compatible with C(ha_group).",
			]
			type:          "str"
			version_added: 2.8
		}
		ha_load_factor: {
			description: [
				"The value of the load the traffic-group presents the system relative to other traffic groups.",
				"This parameter only takes effect when C(Load Aware) failover method is in use.",
				"The correct value range is C(1 - 1000) inclusive.",
			]
			type:          "int"
			version_added: 2.8
		}
		auto_failback: {
			description: [
				"Specifies whether the traffic group fails back to the initial device specified in C(ha_order).",
			]
			type:          "bool"
			version_added: 2.8
		}
		auto_failback_time: {
			description: [
				"Specifies the number of seconds the system delays before failing back to the initial device specified in C(ha_order).",
				"The correct value range is C(0 - 300) inclusive.",
			]
			type:          "int"
			version_added: 2.8
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
				"When C(present), ensures that the traffic group exists.",
				"When C(absent), ensures the traffic group is removed.",
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
