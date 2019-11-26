package ansible

module: spectrum_device: {
	module:            "spectrum_device"
	short_description: "Creates/deletes devices in CA Spectrum."
	description: [
		"This module allows you to create and delete devices in CA Spectrum U(https://www.ca.com/us/products/ca-spectrum.html).",
		"Tested on CA Spectrum 9.4.2, 10.1.1 and 10.2.1",
	]
	version_added: "2.6"
	author:        "Renato Orgito (@orgito)"
	options: {
		device: {
			aliases: ["host", "name"]
			required: true
			description: [
				"IP address of the device.",
				"If a hostname is given, it will be resolved to the IP address.",
			]
		}
		community: description: [
			"SNMP community used for device discovery.",
			"Required when C(state=present).",
		]
		landscape: {
			required: true
			description: [
				"Landscape handle of the SpectroServer to which add or remove the device.",
			]
		}
		state: {
			required: false
			description: [
				"On C(present) creates the device when it does not exist.",
				"On C(absent) removes the device when it exists.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		url: {
			aliases: ["oneclick_url"]
			required: true
			description: [
				"HTTP, HTTPS URL of the Oneclick server in the form (http|https)://host.domain[:port]",
			]
		}
		url_username: {
			aliases: ["oneclick_user"]
			required: true
			description: [
				"Oneclick user name.",
			]
		}
		url_password: {
			aliases: ["oneclick_password"]
			required: true
			description: [
				"Oneclick user password.",
			]
		}
		use_proxy: {
			required: false
			description: [
				"if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.",
			]

			default: "yes"
			type:    "bool"
		}
		validate_certs: {
			required: false
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			default: "yes"
			type:    "bool"
		}
		agentport: {
			required: false
			description: [
				"UDP port used for SNMP discovery.",
			]
			default: 161
		}
	}
	notes: [
		"The devices will be created inside the I(Universe) container of the specified landscape.",
		"All the operations will be performed only on the specified landscape.",
	]
}
