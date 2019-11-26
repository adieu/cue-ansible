package ansible

module: nxos_igmp_interface: {
	module:                         "nxos_igmp_interface"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages IGMP interface configuration."
	description: [
		"Manages IGMP interface configuration settings.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"When C(state=default), supported params will be reset to a default state. These include C(version), C(startup_query_interval), C(startup_query_count), C(robustness), C(querier_timeout), C(query_mrt), C(query_interval), C(last_member_qrt), C(last_member_query_count), C(group_timeout), C(report_llg), and C(immediate_leave).",
		"When C(state=absent), all configs for C(oif_ps), and C(oif_routemap) will be removed.",
		"PIM must be enabled to use this module.",
		"This module is for Layer 3 interfaces.",
		"Route-map check not performed (same as CLI) check when configuring route-map with 'static-oif'",
		"If restart is set to true with other params set, the restart will happen last, i.e. after the configuration takes place. However, 'restart' itself is not idempotent as it is an action and not configuration.",
	]

	options: {
		interface: {
			description: [
				"The full interface name for IGMP configuration. e.g. I(Ethernet1/2).",
			]

			required: true
		}
		version: {
			description: [
				"IGMP version. It can be 2 or 3 or keyword 'default'.",
			]
			choices: ["2", "3", "default"]
		}
		startup_query_interval: description: [
			"Query interval used when the IGMP process starts up. The range is from 1 to 18000 or keyword 'default'. The default is 31.",
		]

		startup_query_count: description: [
			"Query count used when the IGMP process starts up. The range is from 1 to 10 or keyword 'default'. The default is 2.",
		]

		robustness: description: [
			"Sets the robustness variable. Values can range from 1 to 7 or keyword 'default'. The default is 2.",
		]

		querier_timeout: description: [
			"Sets the querier timeout that the software uses when deciding to take over as the querier. Values can range from 1 to 65535 seconds or keyword 'default'. The default is 255 seconds.",
		]

		query_mrt: description: [
			"Sets the response time advertised in IGMP queries. Values can range from 1 to 25 seconds or keyword 'default'. The default is 10 seconds.",
		]

		query_interval: description: [
			"Sets the frequency at which the software sends IGMP host query messages. Values can range from 1 to 18000 seconds or keyword 'default'. The default is 125 seconds.",
		]

		last_member_qrt: description: [
			"Sets the query interval waited after sending membership reports before the software deletes the group state. Values can range from 1 to 25 seconds or keyword 'default'. The default is 1 second.",
		]

		last_member_query_count: description: [
			"Sets the number of times that the software sends an IGMP query in response to a host leave message. Values can range from 1 to 5 or keyword 'default'. The default is 2.",
		]

		group_timeout: description: [
			"Sets the group membership timeout for IGMPv2. Values can range from 3 to 65,535 seconds or keyword 'default'. The default is 260 seconds.",
		]

		report_llg: {
			description: [
				"Configures report-link-local-groups. Enables sending reports for groups in 224.0.0.0/24. Reports are always sent for nonlink local groups. By default, reports are not sent for link local groups.",
			]

			type: "bool"
		}
		immediate_leave: {
			description: [
				"Enables the device to remove the group entry from the multicast routing table immediately upon receiving a leave message for the group. Use this command to minimize the leave latency of IGMPv2 group memberships on a given IGMP interface because the device does not send group-specific queries. The default is disabled.",
			]

			type: "bool"
		}
		oif_routemap: description: [
			"Configure a routemap for static outgoing interface (OIF) or keyword 'default'.",
		]

		oif_prefix: description: [
			"This argument is deprecated, please use oif_ps instead. Configure a prefix for static outgoing interface (OIF).",
		]

		oif_source: description: [
			"This argument is deprecated, please use oif_ps instead. Configure a source for static outgoing interface (OIF).",
		]

		oif_ps: {
			description: [
				"Configure prefixes and sources for static outgoing interface (OIF). This is a list of dict where each dict has source and prefix defined or just prefix if source is not needed. The specified values will be configured on the device and if any previous prefix/sources exist, they will be removed. Keyword 'default' is also accepted which removes all existing prefix/sources.",
			]

			version_added: 2.6
		}
		restart: {
			description: [
				"Restart IGMP. This is NOT idempotent as this is action only.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Manages desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent", "default"]
		}
	}
}
