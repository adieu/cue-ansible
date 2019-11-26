package ansible

module: bigip_device_ha_group: {
	module:            "bigip_device_ha_group"
	short_description: "Manage HA group settings on a BIG-IP system"
	description: [
		"Manage HA group settings on a BIG-IP system.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Name of the HA group to create/manage.",
			]
			type:     "str"
			required: true
		}
		enable: {
			description: [
				"When set to C(no) the system disables the ha score feature.",
			]
			type:    "bool"
			default: true
		}
		description: {
			description: [
				"User created HA group description.",
			]
			type: "str"
		}
		active_bonus: {
			description: [
				"Specifies the extra value to be added to the active unit's ha score.",
				"When system creates HA group this value is set to C(10) by the system.",
			]
			type: "int"
		}
		pools: {
			description: [
				"Specifies pools to contribute to the ha score.",
				"The pools must exist on the BIG-IP otherwise the operation will fail.",
			]
			type: "list"
			suboptions: {
				pool_name: {
					description: [
						"The pool name which is used to contribute to the ha score.",
						"Referencing pool can be done in the full path format for example, C(/Common/pool_name).",
						"When pool is referenced in full path format, the C(partition) parameter is ignored.",
					]
					type:     "str"
					required: true
				}
				attribute: {
					description: [
						"The pool attribute that contributes to the ha score.",
					]
					type: "str"
					choices: [
						"percent-up-members",
					]
					default: "percent-up-members"
				}
				weight: {
					description: [
						"Maximum value the selected pool attribute contributes to the ha score.",
					]
					type:     "int"
					required: true
				}
				minimum_threshold: {
					description: [
						"Below this value the selected pool attribute contributes nothing to the ha score.",
						"This value must be greater than the number of pool members present in the pool.",
						"In TMOS versions 12.x this attribute is named C(threshold) however it has been deprecated in versions 13.x and above.",
						"Specifying this attribute in the module running against v12.x will keep the same behavior as if C(threshold) option was set.",
					]

					type: "int"
				}
				partition: {
					description: [
						"Device partition where the specified pool exists.",
						"This parameter is ignored if the C(pool_name) is specified in full path format.",
					]
					type:    "str"
					default: "Common"
				}
			}
		}
		trunks: {
			description: [
				"Specifies trunks to contribute to the ha score.",
				"The trunks must exist on the BIG-IP otherwise the operation will fail.",
			]
			type: "list"
			suboptions: {
				trunk_name: {
					description: [
						"The trunk name which is used to contribute to the ha score.",
					]
					type:     "str"
					required: true
				}
				attribute: {
					description: [
						"The trunk attribute that contributes to the ha score.",
					]
					type: "str"
					choices: [
						"percent-up-members",
					]
					default: "percent-up-members"
				}
				weight: {
					description: [
						"Maximum value the selected trunk attribute contributes to the ha score.",
					]
					type:     "int"
					required: true
				}
				minimum_threshold: {
					description: [
						"Below this value the selected trunk attribute contributes nothing to the ha score.",
						"This value must be greater than the number of trunk members.",
						"In TMOS versions 12.x this attribute is named C(threshold) however it has been deprecated in versions 13.x and above.",
						"Specifying this attribute in the module running against v12.x will keep the same behavior as if C(threshold) option was set.",
					]

					type: "int"
				}
			}
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
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
		"This module does not support atomic removal of HA group objects.",
	]
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
