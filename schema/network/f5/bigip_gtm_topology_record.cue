package ansible

module: bigip_gtm_topology_record: {
	module:            "bigip_gtm_topology_record"
	short_description: "Manages GTM Topology Records"
	description: [
		"Manages GTM Topology Records. Once created, only topology record C(weight) can be modified.",
	]
	version_added: 2.8
	options: {
		source: {
			description: [
				"Specifies the origination of an incoming DNS request.",
			]
			suboptions: {
				negate: {
					description: [
						"When set to C(yes) the system selects this topology record, when the request source does not match.",
					]
					type:    "bool"
					default: false
				}
				subnet: {
					description: [
						"An IP address and network mask in the CIDR format.",
					]
					type: "str"
				}
				region: {
					description: [
						"Specifies the name of region already defined in the configuration.",
					]
					type: "str"
				}
				continent: {
					description: [
						"Specifies one of the seven continents, along with the C(Unknown) setting.",
						"Specifying C(Unknown) forces the system to use a default resolution if the system cannot determine the location of the local DNS making the request.",
						"Full continent names and their abbreviated versions are supported.",
					]
					type: "str"
				}
				country: {
					description: [
						"Specifies a country.",
						"In addition to the country full names, you may also specify their abbreviated form, such as C(US) instead of C(United States).",
						"Valid country codes can be found here https://countrycode.org/.",
					]
					type: "str"
				}
				state: {
					description: [
						"Specifies a state in a given country.",
						"This parameter requires country option to be provided.",
					]
					type: "str"
				}
				isp: {
					description: [
						"Specifies an Internet service provider.",
					]
					type: "str"
					choices: [
						"AOL",
						"BeijingCNC",
						"CNC",
						"ChinaEducationNetwork",
						"ChinaMobilNetwork",
						"ChinaRailwayTelcom",
						"ChinaTelecom",
						"ChinaUnicom",
						"Comcast",
						"Earthlink",
						"ShanghaiCNC",
						"ShanghaiTelecom",
					]
				}
				geo_isp: {
					description: [
						"Specifies a geolocation ISP",
					]
					type: "str"
				}
			}
			type:     "dict"
			required: true
		}
		destination: {
			description: [
				"Specifies where the system directs the incoming DNS request.",
			]
			suboptions: {
				negate: {
					description: [
						"When set to C(yes) the system selects this topology record, when the request destination does not match.",
					]
					type:    "bool"
					default: false
				}
				subnet: {
					description: [
						"An IP address and network mask in the CIDR format.",
					]
					type: "str"
				}
				region: {
					description: [
						"Specifies the name of region already defined in the configuration.",
					]
					type: "str"
				}
				continent: {
					description: [
						"Specifies one of the seven continents, along with the C(Unknown) setting.",
						"Specifying C(Unknown) forces the system to use a default resolution if the system cannot determine the location of the local DNS making the request.",
						"Full continent names and their abbreviated versions are supported.",
					]
					type: "str"
				}
				country: {
					description: [
						"Specifies a country.",
						"Full continent names and their abbreviated versions are supported.",
					]
					type: "str"
				}
				state: {
					description: [
						"Specifies a state in a given country.",
						"This parameter requires country option to be provided.",
					]
					type: "str"
				}
				pool: {
					description: [
						"Specifies the name of GTM pool already defined in the configuration.",
					]
					type: "str"
				}
				datacenter: {
					description: [
						"Specifies the name of GTM data center already defined in the configuration.",
					]
					type: "str"
				}
				isp: {
					description: [
						"Specifies an Internet service provider.",
					]
					type: "str"
					choices: [
						"AOL",
						"BeijingCNC",
						"CNC",
						"ChinaEducationNetwork",
						"ChinaMobilNetwork",
						"ChinaRailwayTelcom",
						"ChinaTelecom",
						"ChinaUnicom",
						"Comcast",
						"Earthlink",
						"ShanghaiCNC",
						"ShanghaiTelecom",
					]
				}
				geo_isp: {
					description: [
						"Specifies a geolocation ISP",
					]
					type: "str"
				}
			}
			type:     "dict"
			required: true
		}
		weight: {
			description: [
				"Specifies the weight of the topology record.",
				"The system finds the weight of the first topology record that matches the server object (pool or pool member) and the local DNS. The system then assigns that weight as the topology score for that server object.",
				"The system load balances to the server object with the highest topology score.",
				"If the system finds no topology record that matches both the server object and the local DNS, then the system assigns that server object a zero score.",
				"If the option is not specified when the record is created the system will set it at a default value of C(1)",
				"Valid range is (0 - 4294967295)",
			]
			type: "int"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
				"Partition parameter is taken into account when used in conjunction with C(pool), C(data_center), and C(region) parameters, it is ignored otherwise.",
			]

			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(state) is C(present), ensures that the record exists.",
				"When C(state) is C(absent), ensures that the record is removed.",
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
	author: ["Wojciech Wypior (@wojtek0806)"]
}
