package ansible

module: nxos_lacp_interfaces: {
	module:            "nxos_lacp_interfaces"
	version_added:     2.9
	short_description: "Manage Link Aggregation Control Protocol (LACP) attributes of interfaces on Cisco NX-OS devices."
	description:       "This module manages Link Aggregation Control Protocol (LACP) attributes of NX-OS Interfaces."
	author:            "Trishna Guha (@trishnaguha)"
	notes: [
		"Tested against NXOS 7.3.(0)D1(1) on VIRL",
	]
	options: {
		config: {
			description: "A dictionary of LACP interfaces options."
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Name of the interface.",
					]
					required: true
					type:     "str"
				}
				port_priority: {
					description: [
						"LACP port priority for the interface. Range 1-65535. Applicable only for Ethernet.",
					]

					type: "int"
				}
				rate: {
					description: [
						"Rate at which PDUs are sent by LACP. Applicable only for Ethernet. At fast rate LACP is transmitted once every 1 second. At normal rate LACP is transmitted every 30 seconds after the link is bundled.",
					]

					type: "str"
					choices: ["fast", "normal"]
				}
				links: {
					description: [
						"This dict contains configurable options related to max and min port-channel links. Applicable only for Port-channel.",
					]

					type: "dict"
					suboptions: {
						max: {
							description: [
								"Port-channel max bundle.",
							]
							type: "int"
						}
						min: {
							description: [
								"Port-channel min links.",
							]
							type: "int"
						}
					}
				}
				mode: {
					description: [
						"LACP mode. Applicable only for Port-channel.",
					]
					type: "str"
					choices: ["delay"]
				}
				suspend_individual: {
					description: [
						"port-channel lacp state. Disabling this will cause lacp to put the port to individual state and not suspend the port in case it does not get LACP BPDU from the peer ports in the port-channel.",
					]

					type: "bool"
				}
				convergence: {
					description: [
						"This dict contains configurable options related to convergence. Applicable only for Port-channel.",
					]

					type: "dict"
					suboptions: {
						graceful: {
							description: [
								"port-channel lacp graceful convergence. Disable this only with lacp ports connected to Non-Nexus peer. Disabling this with Nexus peer can lead to port suspension.",
							]

							type: "bool"
						}
						vpc: {
							description: [
								"Enable lacp convergence for vPC port channels.",
							]
							type: "bool"
						}
					}
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion.",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"overridden",
				"deleted",
			]
			default: "merged"
		}
	}
}
