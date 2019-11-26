package ansible

module: packet_device: {
	module: "packet_device"

	short_description: "Manage a bare metal server in the Packet Host."

	description: [
		"Manage a bare metal server in the Packet Host (a \"device\" in the API terms).",
		"When the machine is created it can optionally wait for public IP address, or for active state.",
		"This module has a dependency on packet >= 1.0.",
		"API is documented at U(https://www.packet.net/developers/api/devices).",
	]

	version_added: "2.3"

	author: [
		"Tomas Karasek (@t0mk) <tom.to.the.k@gmail.com>",
		"Matt Baldwin (@baldwinSPC) <baldwin@stackpointcloud.com>",
		"Thibaud Morel l'Horset (@teebes) <teebes@gmail.com>",
	]

	options: {
		auth_token: description: [
			"Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).",
		]

		count: {
			description: [
				"The number of devices to create. Count number can be included in hostname via the %d string formatter.",
			]
			default: 1
		}

		count_offset: {
			description: [
				"From which number to start the count.",
			]
			default: 1
		}

		device_ids: description: [
			"List of device IDs on which to operate.",
		]

		facility: description: [
			"Facility slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/facilities/).",
		]

		features: description: [
			"Dict with \"features\" for device creation. See Packet API docs for details.",
		]

		hostnames: {
			description: [
				"A hostname of a device, or a list of hostnames.",
				"If given string or one-item list, you can use the C(\"%d\") Python string format to expand numbers from I(count).",
				"If only one hostname, it might be expanded to list if I(count)>1.",
			]
			aliases: ["name"]
		}

		locked: {
			description: [
				"Whether to lock a created device.",
			]
			default:       false
			version_added: "2.4"
			aliases: ["lock"]
			type: "bool"
		}

		operating_system: description: [
			"OS slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/operatingsystems/).",
		]

		plan: description: [
			"Plan slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/plans/).",
		]

		project_id: {
			description: [
				"ID of project of the device.",
			]
			required: true
		}

		state: {
			description: [
				"Desired state of the device.",
				"If set to C(present) (the default), the module call will return immediately after the device-creating HTTP request successfully returns.",
				"If set to C(active), the module call will block until all the specified devices are in state active due to the Packet API, or until I(wait_timeout).",
			]
			choices: ["present", "absent", "active", "inactive", "rebooted"]
			default: "present"
		}

		user_data: description: [
			"Userdata blob made available to the machine",
		]

		wait_for_public_IPv: {
			description: [
				"Whether to wait for the instance to be assigned a public IPv4/IPv6 address.",
				"If set to 4, it will wait until IPv4 is assigned to the instance.",
				"If set to 6, wait until public IPv6 is assigned to the instance.",
			]
			choices: [4, 6]
			version_added: "2.4"
		}

		wait_timeout: {
			description: [
				"How long (seconds) to wait either for automatic IP address assignment, or for the device to reach the C(active) I(state).",
				"If I(wait_for_public_IPv) is set and I(state) is C(active), the module will wait for both events consequently, applying the timeout twice.",
			]
			default: 900
		}
		ipxe_script_url: {
			description: [
				"URL of custom iPXE script for provisioning.",
				"More about custom iPXE for Packet devices at U(https://help.packet.net/technical/infrastructure/custom-ipxe).",
			]
			version_added: "2.4"
		}
		always_pxe: {
			description: [
				"Persist PXE as the first boot option.",
				"Normally, the PXE process happens only on the first boot. Set this arg to have your device continuously boot to iPXE.",
			]
			default:       false
			version_added: "2.4"
			type:          "bool"
		}
	}

	requirements: [
		"packet-python >= 1.35",
	]

	notes: [
		"Doesn't support check mode.",
	]
}
