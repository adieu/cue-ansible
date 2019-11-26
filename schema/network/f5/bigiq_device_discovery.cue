package ansible

module: bigiq_device_discovery: {
	module:            "bigiq_device_discovery"
	short_description: "Manage BIG-IP devices through BIG-IQ"
	description: [
		"Discovers and imports BIG-IP device configuration on the BIG-IQ.",
	]
	version_added: 2.8
	options: {
		device_address: {
			description: [
				"The IP address of the BIG-IP device to be imported/managed.",
			]
			type:     "str"
			required: true
		}
		device_username: {
			description: [
				"The administrator username for the BIG-IP device.",
				"This parameter is only required when adding a new BIG-IP device to be managed.",
			]
			type: "str"
		}
		device_password: {
			description: [
				"The administrator password for the BIG-IP device.",
				"This parameter is only required when adding a new BIG-IP device to be managed.",
			]
			type: "str"
		}
		device_port: {
			description: [
				"The port on which a device trust setup between BIG-IQ and BIG-IP should happen.",
			]
			type:    "int"
			default: 443
		}
		ha_name: {
			description: [
				"DSC cluster name of the BIG-IP device to be managed.",
				"This is optional if the managed device is not a part of a cluster group.",
				"When C(use_bigiq_sync) is set to C(yes) then this parameter becomes mandatory.",
			]
			type: "str"
		}
		use_bigiq_sync: {
			description: [
				"When set to true, BIG-IQ will manually synchronize configuration changes between members in a DSC cluster.",
			]

			type:    "bool"
			default: false
		}
		conflict_policy: {
			description: [
				"Sets the conflict resolution policy for shared objects across BIG-IP devices, except LTM profiles and monitors.",
			]
			type: "str"
			choices: [
				"use_bigiq",
				"use_bigip",
			]
			default: "use_bigiq"
		}
		versioned_conflict_policy: {
			description: [
				"Sets the conflict resolution policy for LTM profile and monitor objects that are specific to a BIG-IP software version.",
			]

			type: "str"
			choices: [
				"use_bigiq",
				"use_bigip",
				"keep_version",
			]
		}
		device_conflict_policy: {
			description: [
				"Sets the conflict resolution policy for objects that are specific to a particular to a BIG-IP device and not shared among BIG-IP devices.",
			]

			type: "str"
			choices: [
				"use_bigiq",
				"use_bigip",
			]
			default: "use_bigiq"
		}
		access_conflict_policy: {
			description: [
				"Sets the conflict resolution policy for Access module C(apm) objects, only used when C(apm) module is specified.",
			]
			type: "str"
			choices: [
				"use_bigiq",
				"use_bigip",
				"keep_version",
			]
		}
		access_group_name: {
			description: [
				"Access group name to import Access configuration for devices, once set it cannot be changed.",
			]
			type: "str"
		}
		access_group_first_device: {
			description: [
				"Specifies if the imported device is the first device in the access group to import shared configuration for that access group.",
			]

			type:    "bool"
			default: true
		}
		force: {
			description: [
				"Forces rediscovery and import of existing modules on the managed BIG-IP",
			]
			type:    "bool"
			default: false
		}
		modules: {
			description: [
				"List of modules to be discovered and imported into the device.",
				"These modules must be provisioned on the target device otherwise operation will fail.",
				"The C(ltm) module must always be specified when performing discovery or re-discovery of the the device.",
				"When C(asm) or C(afm) are specified C(shared_security) module needs to also be declared.",
			]
			type: "list"
			choices: [
				"ltm",
				"asm",
				"apm",
				"afm",
				"dns",
				"websafe",
				"security_shared",
			]
		}
		statistics: {
			description: [
				"Specify the statistics collection for discovered device.",
			]
			type: "dict"
			suboptions: {
				enable: {
					description: [
						"Enables statistics collection on a device",
					]
					type:    "bool"
					default: false
				}
				interval: {
					description: [
						"Specify the interval in seconds the data is collected from the discovered device.",
					]
					type:    "int"
					default: 60
					choices: [
						30,
						60,
						120,
						500,
					]
				}
				zone: {
					description: [
						"Specify in which DCD zone is collecting the data from device.",
					]
					type:    "str"
					default: "default"
				}
				stat_modules: {
					description: [
						"Specifies for which modules the data is being collected.",
					]
					type: "list"
					default: ["device", "ltm"]
					choices: [
						"device",
						"ltm",
						"dns",
					]
				}
			}
		}
		state: {
			description: [
				"The state of the managed device on the system.",
				"When C(present), enables new device addition as well as device rediscovery/import.",
				"When C(absent), completely removes the device from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	notes: [
		"BIG-IQ >= 6.1.0.",
		"This module does not support atomic removal of discovered modules on the device.",
	]
	author: ["Wojciech Wypior (@wojtek0806)"]
}
