package ansible

module: nios_nsgroup: {
	module:                         "nios_nsgroup"
	short_description:              "Configure InfoBlox DNS Nameserver Groups"
	extends_documentation_fragment: "nios"
	author: [
		"Erich Birngruber (@ebirn)",
		"Sumit Jaiswal (@sjaiswal)",
	]
	version_added: "2.8"
	description: [
		"Adds and/or removes nameserver groups form Infoblox NIOS servers. This module manages NIOS C(nsgroup) objects using the Infoblox. WAPI interface over REST.",
	]

	requirements: [
		"infoblox_client",
	]
	options: {
		name: {
			description: [
				"Specifies the name of the NIOS nameserver group to be managed.",
			]
			required: true
		}
		grid_primary: {
			description: [
				"This host is to be used as primary server in this nameserver group. It must be a grid member. This option is required when setting I(use_external_primaries) to C(false).",
			]

			suboptions: {
				name: {
					description: [
						"Provide the name of the grid member to identify the host.",
					]
					required: true
				}
				enable_preferred_primaries: {
					description: [
						"This flag represents whether the preferred_primaries field values of this member are used (see Infoblox WAPI docs).",
					]
					default: false
					type:    "bool"
				}
				grid_replicate: {
					description: [
						"Use DNS zone transfers if set to C(True) or ID Grid Replication if set to C(False).",
					]
					type:    "bool"
					default: false
				}
				lead: {
					description: [
						"This flag controls if the grid lead secondary nameserver performs zone transfers to non lead secondaries.",
					]
					type:    "bool"
					default: false
				}
				stealth: {
					description: [
						"Configure the external nameserver as stealth server (without NS record) in the zones.",
					]
					type:    "bool"
					default: false
				}
			}
		}
		grid_secondaries: {
			description: [
				"Configures the list of grid member hosts that act as secondary nameservers. This option is required when setting I(use_external_primaries) to C(true).",
			]

			suboptions: {
				name: {
					description: [
						"Provide the name of the grid member to identify the host.",
					]
					required: true
				}
				enable_preferred_primaries: {
					description: [
						"This flag represents whether the preferred_primaries field values of this member are used (see Infoblox WAPI docs).",
					]
					default: false
					type:    "bool"
				}
				grid_replicate: {
					description: [
						"Use DNS zone transfers if set to C(True) or ID Grid Replication if set to C(False)",
					]
					type:    "bool"
					default: false
				}
				lead: {
					description: [
						"This flag controls if the grid lead secondary nameserver performs zone transfers to non lead secondaries.",
					]
					type:    "bool"
					default: false
				}
				stealth: {
					description: [
						"Configure the external nameserver as stealth server (without NS record) in the zones.",
					]
					type:    "bool"
					default: false
				}
				preferred_primaries: description: [
					"Provide a list of elements like in I(external_primaries) to set the precedence of preferred primary nameservers.",
				]
			}
		}
		is_grid_default: {
			description: [
				"If set to C(True) this nsgroup will become the default nameserver group for new zones.",
			]
			type:     "bool"
			required: false
			default:  false
		}
		use_external_primary: {
			description: [
				"This flag controls whether the group is using an external primary nameserver. Note that modification of this field requires passing values for I(grid_secondaries) and I(external_primaries).",
			]

			type:     "bool"
			required: false
			default:  false
		}
		external_primaries: {
			description: [
				"Configures a list of external nameservers (non-members of the grid). This option is required when setting I(use_external_primaries) to C(true).",
			]

			suboptions: {
				address: {
					description: [
						"Configures the IP address of the external nameserver",
					]
					required: true
				}
				name: {
					description: [
						"Set a label for the external nameserver",
					]
					required: true
				}
				stealth: {
					description: [
						"Configure the external nameserver as stealth server (without NS record) in the zones.",
					]
					type:    "bool"
					default: false
				}
				tsig_key_name: description: [
					"Sets a label for the I(tsig_key) value",
				]
				tsig_key_alg: {
					description: [
						"Provides the algorithm used for the I(tsig_key) in use.",
					]
					choices: ["HMAC-MD5", "HMAC-SHA256"]
					default: "HMAC-MD5"
				}
				tsig_key: description: [
					"Set a DNS TSIG key for the nameserver to secure zone transfers (AFXRs).",
				]
			}
			required: false
		}
		external_secondaries: {
			description: [
				"Allows to provide a list of external secondary nameservers, that are not members of the grid.",
			]
			suboptions: {
				address: {
					description: [
						"Configures the IP address of the external nameserver",
					]
					required: true
				}
				name: {
					description: [
						"Set a label for the external nameserver",
					]
					required: true
				}
				stealth: {
					description: [
						"Configure the external nameserver as stealth server (without NS record) in the zones.",
					]
					type:    "bool"
					default: false
				}
				tsig_key_name: description: [
					"Sets a label for the I(tsig_key) value",
				]
				tsig_key_alg: {
					description: [
						"Provides the algorithm used for the I(tsig_key) in use.",
					]
					choices: ["HMAC-MD5", "HMAC-SHA256"]
					default: "HMAC-MD5"
				}
				tsig_key: description: [
					"Set a DNS TSIG key for the nameserver to secure zone transfers (AFXRs).",
				]
			}
		}
		extattrs: {
			description: [
				"Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.",
			]

			required: false
		}
		comment: {
			description: [
				"Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.",
			]

			required: false
		}
		state: {
			description: [
				"Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.",
			]

			choices: ["present", "absent"]
			default: "present"
		}
	}
}
