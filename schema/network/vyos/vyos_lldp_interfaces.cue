package ansible

module: vyos_lldp_interfaces: {
	module:            "vyos_lldp_interfaces"
	version_added:     2.9
	short_description: "Manages attributes of lldp interfaces on VyOS devices."
	description:       "This module manages attributes of lldp interfaces on VyOS network devices."
	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	author: [
		"Rohit Thakur (@rohitthakur2590)",
	]
	options: {
		config: {
			description: "A list of lldp interfaces configurations."
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Name of the  lldp interface.",
					]
					type:     "str"
					required: true
				}
				enable: {
					description: [
						"to disable lldp on the interface.",
					]
					type:    "bool"
					default: true
				}
				location: {
					description: [
						"LLDP-MED location data.",
					]
					type: "dict"
					suboptions: {
						civic_based: {
							description: [
								"Civic-based location data.",
							]
							type: "dict"
							suboptions: {
								ca_info: {
									description: "LLDP-MED address info"
									type:        "list"
									suboptions: {
										ca_type: {
											description: "LLDP-MED Civic Address type."
											type:        "int"
											required:    true
										}
										ca_value: {
											description: "LLDP-MED Civic Address value."
											type:        "str"
											required:    true
										}
									}
								}
								country_code: {
									description: "Country Code"
									type:        "str"
									required:    true
								}
							}
						}
						coordinate_based: {
							description: [
								"Coordinate-based location.",
							]
							type: "dict"
							suboptions: {
								altitude: {
									description: "Altitude in meters."
									type:        "int"
								}
								datum: {
									description: "Coordinate datum type."
									type:        "str"
									choices: [
										"WGS84",
										"NAD83",
										"MLLW",
									]
								}
								latitude: {
									description: "Latitude."
									type:        "str"
									required:    true
								}
								longitude: {
									description: "Longitude."
									type:        "str"
									required:    true
								}
							}
						}
						elin: {
							description: "Emergency Call Service ELIN number (between 10-25 numbers)."
							type:        "str"
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
