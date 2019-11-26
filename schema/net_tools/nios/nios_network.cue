package ansible

module: nios_network: {
	module:            "nios_network"
	version_added:     "2.5"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Configure Infoblox NIOS network object"
	description: [
		"Adds and/or removes instances of network objects from Infoblox NIOS servers.  This module manages NIOS C(network) objects using the Infoblox WAPI interface over REST.",
		"Supports both IPV4 and IPV6 internet protocols",
	]
	requirements: [
		"infoblox-client",
	]
	extends_documentation_fragment: "nios"
	options: {
		network: {
			description: [
				"Specifies the network to add or remove from the system.  The value should use CIDR notation.",
			]

			required: true
			aliases: [
				"name",
				"cidr",
			]
		}
		network_view: {
			description: [
				"Configures the name of the network view to associate with this configured instance.",
			]

			required: true
			default:  "default"
		}
		options: {
			description: [
				"Configures the set of DHCP options to be included as part of the configured network instance.  This argument accepts a list of values (see suboptions).  When configuring suboptions at least one of C(name) or C(num) must be specified.",
			]

			suboptions: {
				name: description: [
					"The name of the DHCP option to configure. The standard options are C(router), C(router-templates), C(domain-name-servers), C(domain-name), C(broadcast-address), C(broadcast-address-offset), C(dhcp-lease-time), and C(dhcp6.name-servers).",
				]

				num: description: [
					"The number of the DHCP option to configure",
				]
				value: {
					description: [
						"The value of the DHCP option specified by C(name)",
					]
					required: true
				}
				use_option: {
					description: [
						"Only applies to a subset of options (see NIOS API documentation)",
					]
					type:    "bool"
					default: "yes"
				}
				vendor_class: {
					description: [
						"The name of the space this DHCP option is associated to",
					]
					default: "DHCP"
				}
			}
		}
		extattrs: description: [
			"Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.",
		]

		comment: description: [
			"Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.",
		]

		container: {
			description: [
				"If set to true it'll create the network container to be added or removed from the system.",
			]

			type:          "bool"
			version_added: "2.8"
		}
		state: {
			description: [
				"Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.",
			]

			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
	}
}
