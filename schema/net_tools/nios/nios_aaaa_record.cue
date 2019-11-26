package ansible

module: nios_aaaa_record: {
	module:            "nios_aaaa_record"
	version_added:     "2.6"
	author:            "Blair Rampling (@brampling)"
	short_description: "Configure Infoblox NIOS AAAA records"
	description: [
		"Adds and/or removes instances of AAAA record objects from Infoblox NIOS servers.  This module manages NIOS C(record:aaaa) objects using the Infoblox WAPI interface over REST.",
	]

	requirements: [
		"infoblox-client",
	]
	extends_documentation_fragment: "nios"
	options: {
		name: {
			description: [
				"Specifies the fully qualified hostname to add or remove from the system",
			]

			required: true
		}
		view: {
			description: [
				"Sets the DNS view to associate this AAAA record with.  The DNS view must already be configured on the system",
			]

			required: true
			default:  "default"
			aliases: [
				"dns_view",
			]
		}
		ipv6addr: {
			description: [
				"Configures the IPv6 address for this AAAA record.",
			]
			required: true
			aliases: [
				"ipv6",
			]
		}
		ttl: description: [
			"Configures the TTL to be associated with this AAAA record",
		]
		extattrs: description: [
			"Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.",
		]

		comment: description: [
			"Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.",
		]

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
