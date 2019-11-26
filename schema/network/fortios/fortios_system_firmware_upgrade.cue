package ansible

module: fortios_system_firmware_upgrade: {
	module:            "fortios_system_firmware_upgrade"
	short_description: "Perform firmware upgrade on FortiGate or FortiOS (FOS) device."
	description: [
		"This module is able to perform firmware upgrade on FortiGate or FortiOS (FOS) device by specifying firmware upgrade source, filename and whether format boot partition before upgrade. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.2",
	]

	version_added: "2.9"
	author: [
		"Don Yao (@fortinetps)",
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:     "str"
			default:  "root"
			required: false
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:     "bool"
			default:  true
			required: false
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:     "bool"
			default:  true
			required: false
		}
		system_firmware: {
			description: [
				"Possible parameters to go in the body for the request. Specify firmware upgrade source, filename and whether format boot partition before upgrade",
			]

			default:  null
			type:     "dict"
			required: true
			suboptions: {
				file_content: {
					description: [
						"Provided when uploading a file: base64 encoded file data. Must not contain whitespace or other invalid base64 characters. Must be included in HTTP body.",
					]

					type:     "str"
					required: false
				}
				filename: {
					description: [
						"Name and path of the local firmware file.",
					]
					type:     "str"
					required: true
				}
				format_partition: {
					description: [
						"Set to true to format boot partition before upgrade.",
					]
					type:     "bool"
					required: false
				}
				source: {
					description: [
						"Firmware file data source [upload|usb|fortiguard].",
					]
					type:     "str"
					required: true
					choices: [
						"upload",
						"usb",
						"fortiguard",
					]
				}
			}
		}
	}
}
