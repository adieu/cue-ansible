package ansible

module: aci_firmware_source: {
	module:            "aci_firmware_source"
	short_description: "Manage firmware image sources (firmware:OSource)"
	description: [
		"Manage firmware image sources on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		source: {
			description: [
				"The identifying name for the outside source of images, such as an HTTP or SCP server.",
			]
			type:     "str"
			required: true
			aliases: ["name", "source_name"]
		}
		polling_interval: {
			description: [
				"Polling interval in minutes.",
			]
			type: "int"
		}
		url_protocol: {
			description: [
				"The Firmware download protocol.",
			]
			type: "str"
			choices: ["http", "local", "scp", "usbkey"]
			default: "scp"
			aliases: ["url_proto"]
		}
		url: {
			description:
				"The firmware URL for the image(s) on the source."
			type: "str"
		}
		url_password: {
			description:
				"The Firmware password or key string."
			type: "str"
		}
		url_username: {
			description:
				"The username for the source."
			type: "str"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	seealso: [{
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(firmware:OSource)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
