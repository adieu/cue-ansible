package ansible

module: ce_lacp: {
	module:            "ce_lacp"
	version_added:     "2.10"
	short_description: "Manages Eth-Trunk interfaces on HUAWEI CloudEngine switches"
	description: [
		"Manages Eth-Trunk specific configuration parameters on HUAWEI CloudEngine switches.",
	]
	author: "xuxiaowei0512 (@CloudEngine-Ansible)"
	notes: [
		"C(state=absent) removes the Eth-Trunk config and interface if it already exists. If members to be removed are not explicitly passed, all existing members (if any), are removed, and Eth-Trunk removed.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		trunk_id: {
			description: [
				"Eth-Trunk interface number. The value is an integer. The value range depends on the assign forward eth-trunk mode command. When 256 is specified, the value ranges from 0 to 255. When 512 is specified, the value ranges from 0 to 511. When 1024 is specified, the value ranges from 0 to 1023.",
			]

			type: "int"
		}
		mode: {
			description: [
				"Specifies the working mode of an Eth-Trunk interface.",
			]
			default: null
			choices: ["Manual", "Dynamic", "Static"]
			type: "str"
		}
		preempt_enable: {
			description: [
				"Specifies lacp preempt enable of Eth-Trunk lacp. The value is an boolean 'true' or 'false'.",
			]

			type: "bool"
		}
		state_flapping: {
			description: [
				"Lacp dampening state-flapping.",
			]
			type: "bool"
		}
		port_id_extension_enable: {
			description: [
				"Enable the function of extending the LACP negotiation port number.",
			]
			type: "bool"
		}
		unexpected_mac_disable: {
			description: [
				"Lacp dampening unexpected-mac disable.",
			]
			type: "bool"
		}
		system_id: {
			description: [
				"Link Aggregation Control Protocol System ID,interface Eth-Trunk View.",
				"Formate 'X-X-X',X is hex(a,aa,aaa, or aaaa)",
			]
			type: "str"
		}
		timeout_type: {
			description: [
				"Lacp timeout type,that may be 'Fast' or 'Slow'.",
			]
			choices: ["Slow", "Fast"]
			type: "str"
		}
		fast_timeout: {
			description: [
				"When lacp timeout type is 'Fast', user-defined time can be a number(3~90).",
			]
			type: "int"
		}
		mixed_rate_link_enable: {
			description: [
				"Value of max active linknumber.",
			]
			type: "bool"
		}
		preempt_delay: {
			description: [
				"Value of preemption delay time.",
			]
			type: "int"
		}
		collector_delay: {
			description: [
				"Value of delay time in units of 10 microseconds.",
			]
			type: "int"
		}
		max_active_linknumber: {
			description: [
				"Max active linknumber in link aggregation group.",
			]
			type: "int"
		}
		select: {
			description: [
				"Select priority or speed to preempt.",
			]
			choices: ["Speed", "Prority"]
			type: "str"
		}
		priority: {
			description: [
				"The priority of eth-trunk member interface.",
			]
			type: "int"
		}
		global_priority: {
			description: [
				"Configure lacp priority on system-view.",
			]
			type: "int"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
}
