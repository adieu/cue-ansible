package ansible

module: faz_device: {
	module:            "faz_device"
	version_added:     "2.9"
	author:            "Luke Weighall (@lweighall)"
	short_description: "Add or remove device"
	description: [
		"Add or remove a device or list of devices to FortiAnalyzer Device Manager. ADOM Capable.",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: true
			default:  "root"
			type:     "str"
		}

		mode: {
			description: [
				"Add or delete devices. Or promote unregistered devices that are in the FortiAnalyzer \"waiting pool\"",
			]
			required: false
			default:  "add"
			choices: ["add", "delete", "promote"]
			type: "str"
		}

		device_username: {
			description: [
				"The username of the device being added to FortiAnalyzer.",
			]
			required: false
			type:     "str"
		}

		device_password: {
			description: [
				"The password of the device being added to FortiAnalyzer.",
			]
			required: false
			type:     "str"
		}

		device_ip: {
			description: [
				"The IP of the device being added to FortiAnalyzer.",
			]
			required: false
			type:     "str"
		}

		device_unique_name: {
			description: [
				"The desired \"friendly\" name of the device being added to FortiAnalyzer.",
			]
			required: false
			type:     "str"
		}

		device_serial: {
			description: [
				"The serial number of the device being added to FortiAnalyzer.",
			]
			required: false
			type:     "str"
		}

		os_type: {
			description: [
				"The os type of the device being added (default 0).",
			]
			required: true
			choices: ["unknown", "fos", "fsw", "foc", "fml", "faz", "fwb", "fch", "fct", "log", "fmg", "fsa", "fdd", "fac"]
			type: "str"
		}

		mgmt_mode: {
			description: [
				"Management Mode of the device you are adding.",
			]
			choices: ["unreg", "fmg", "faz", "fmgfaz"]
			required: true
			type:     "str"
		}

		os_minor_vers: {
			description: [
				"Minor OS rev of the device.",
			]
			required: true
			type:     "str"
		}

		os_ver: {
			description: [
				"Major OS rev of the device",
			]
			required: true
			choices: ["unknown", "0.0", "1.0", "2.0", "3.0", "4.0", "5.0", "6.0"]
			type: "str"
		}

		platform_str: {
			description: [
				"Required for determine the platform for VM platforms. ie FortiGate-VM64",
			]
			required: false
			type:     "str"
		}

		faz_quota: {
			description: [
				"Specifies the quota for the device in FAZ",
			]
			required: false
			type:     "str"
		}
	}
}
