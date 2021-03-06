package ansible

module: fmgr_device: {
	module:        "fmgr_device"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Add or remove device from FortiManager."
	description: [
		"Add or remove a device or list of devices from FortiManager Device Manager using JSON RPC API.",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: true
			default:  "root"
		}

		mode: {
			description: [
				"The desired mode of the specified object.",
			]
			required: false
			default:  "add"
			choices: ["add", "delete"]
		}

		blind_add: {
			description: [
				"When adding a device, module will check if it exists, and skip if it does.",
				"If enabled, this option will stop the module from checking if it already exists, and blindly add the device.",
			]
			required: false
			default:  "disable"
			choices: ["enable", "disable"]
		}

		device_username: {
			description: [
				"The username of the device being added to FortiManager.",
			]
			required: false
		}

		device_password: {
			description: [
				"The password of the device being added to FortiManager.",
			]
			required: false
		}

		device_ip: {
			description: [
				"The IP of the device being added to FortiManager. Supports both IPv4 and IPv6.",
			]
			required: false
		}

		device_unique_name: {
			description: [
				"The desired \"friendly\" name of the device being added to FortiManager.",
			]
			required: false
		}

		device_serial: {
			description: [
				"The serial number of the device being added to FortiManager.",
			]
			required: false
		}
	}
}
