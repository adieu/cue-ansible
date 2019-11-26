package ansible

module: ce_bfd_session: {
	module:            "ce_bfd_session"
	version_added:     "2.4"
	short_description: "Manages BFD session configuration on HUAWEI CloudEngine devices."
	description: [
		"Manages BFD session configuration, creates a BFD session or deletes a specified BFD session on HUAWEI CloudEngine devices.",
	]

	author: "QijunPan (@QijunPan)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		session_name: {
			description: [
				"Specifies the name of a BFD session. The value is a string of 1 to 15 case-sensitive characters without spaces.",
			]

			required: true
		}
		create_type: {
			description: [
				"BFD session creation mode, the currently created BFD session only supports static or static auto-negotiation mode.",
			]

			choices: ["static", "auto"]
			default: "static"
		}
		addr_type: {
			description: [
				"Specifies the peer IP address type.",
			]
			choices: ["ipv4"]
		}
		out_if_name: description: [
			"Specifies the type and number of the interface bound to the BFD session.",
		]
		dest_addr: description: [
			"Specifies the peer IP address bound to the BFD session.",
		]
		src_addr: description: [
			"Indicates the source IP address carried in BFD packets.",
		]
		local_discr: {
			version_added: 2.9
			description: [
				"The BFD session local identifier does not need to be configured when the mode is auto.",
			]
		}
		remote_discr: {
			version_added: 2.9
			description: [
				"The BFD session remote identifier does not need to be configured when the mode is auto.",
			]
		}
		vrf_name: description: [
			"Specifies the name of a Virtual Private Network (VPN) instance that is bound to a BFD session. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value _public_ is reserved and cannot be used as the VPN instance name.",
		]

		use_default_ip: {
			description: [
				"Indicates the default multicast IP address that is bound to a BFD session. By default, BFD uses the multicast IP address 224.0.0.184. You can set the multicast IP address by running the default-ip-address command. The value is a bool type.",
			]

			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
