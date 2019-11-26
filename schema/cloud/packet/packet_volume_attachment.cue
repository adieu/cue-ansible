package ansible

module: packet_volume_attachment: {
	module: "packet_volume_attachment"

	short_description: "Attach/detach a volume to a device in the Packet host."

	description: [
		"Attach/detach a volume to a device in the Packet host.",
		"API is documented at U(https://www.packet.net/developers/api/volumeattachments/).",
		"This module creates the attachment route in the Packet API. In order to discover the block devices on the server, you have to run the Attach Scripts, as documented at U(https://help.packet.net/technical/storage/packet-block-storage-linux).",
	]

	version_added: "2.10"

	author: [
		"Tomas Karasek (@t0mk) <tom.to.the.k@gmail.com>",
		"Nurfet Becirevic (@nurfet-becirevic) <nurfet.becirevic@gmail.com>",
	]

	options: {
		state: {
			description: [
				"Indicate desired state of the attachment.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}

		auth_token: {
			description: [
				"Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).",
			]
			type: "str"
		}

		project_id: {
			description: [
				"UUID of the project to which the device and volume belong.",
			]
			type: "str"
		}

		volume: {
			description: [
				"Selector for the volume.",
				"It can be a UUID, an API-generated volume name, or user-defined description string.",
				"Example values: 4a347482-b546-4f67-8300-fb5018ef0c5, volume-4a347482, \"my volume\"",
			]
			type: "str"
		}

		device: {
			description: [
				"Selector for the device.",
				"It can be a UUID of the device, or a hostname.",
				"Example values: 98a14f7a-3d27-4478-b7cf-35b5670523f3, \"my device\"",
			]
			type: "str"
		}
	}

	requirements: [
		"python >= 2.6",
		"packet-python >= 1.35",
	]
}
