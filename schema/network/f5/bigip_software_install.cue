package ansible

module: bigip_software_install: {
	module:            "bigip_software_install"
	short_description: "Install software images on a BIG-IP"
	description: [
		"Install new images on a BIG-IP.",
	]
	version_added: 2.7
	options: {
		image: {
			description: [
				"Image to install on the remote device.",
			]
			type: "str"
		}
		volume: {
			description: [
				"The volume to install the software image to.",
			]
			type: "str"
		}
		state: {
			description: [
				"When C(installed), ensures that the software is installed on the volume and the volume is set to be booted from. The device is B(not) rebooted into the new software.",
				"When C(activated), performs the same operation as C(installed), but the system is rebooted to the new software.",
			]

			type: "str"
			choices: [
				"activated",
				"installed",
			]
			default: "activated"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
