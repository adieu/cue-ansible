package ansible

module: nios_txt_record: {
	module:            "nios_txt_record"
	version_added:     "2.7"
	author:            "Corey Wanless (@coreywan)"
	short_description: "Configure Infoblox NIOS txt records"
	description: [
		"Adds and/or removes instances of txt record objects from Infoblox NIOS servers.  This module manages NIOS C(record:txt) objects using the Infoblox WAPI interface over REST.",
	]

	requirements: [
		"infoblox_client",
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
				"Sets the DNS view to associate this tst record with.  The DNS view must already be configured on the system",
			]

			required: true
			default:  "default"
			aliases: [
				"dns_view",
			]
		}
		text: description: [
			"Text associated with the record. It can contain up to 255 bytes per substring, up to a total of 512 bytes. To enter leading, trailing, or embedded spaces in the text, add quotes around the text to preserve the spaces.",
		]

		ttl: description: [
			"Configures the TTL to be associated with this tst record",
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
