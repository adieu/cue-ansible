package ansible

module: nios_network_view: {
	module:            "nios_network_view"
	version_added:     "2.5"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Configure Infoblox NIOS network views"
	description: [
		"Adds and/or removes instances of network view objects from Infoblox NIOS servers.  This module manages NIOS C(networkview) objects using the Infoblox WAPI interface over REST.",
		"Updates instances of network view object from Infoblox NIOS servers.",
	]
	requirements: [
		"infoblox-client",
	]
	extends_documentation_fragment: "nios"
	options: {
		name: {
			description: [
				"Specifies the fully qualified hostname to add or remove from the system. User can also update the hostname as it is possible to pass a dict containing I(new_name), I(old_name). See examples.",
			]

			required: true
			aliases: [
				"network_view",
			]
		}
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
