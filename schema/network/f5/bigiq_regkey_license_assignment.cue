package ansible

module: bigiq_regkey_license_assignment: {
	module:            "bigiq_regkey_license_assignment"
	short_description: "Manage regkey license assignment on BIG-IPs from a BIG-IQ"
	description: [
		"Manages the assignment of regkey licenses on a BIG-IQ. Assignment means that the license is assigned to a BIG-IP, or, it needs to be assigned to a BIG-IP. Additionally, this module supported revoking the assignments from BIG-IP devices.",
	]

	version_added: 2.6
	options: {
		pool: {
			description: [
				"The registration key pool to use.",
			]
			type:     "str"
			required: true
		}
		key: {
			description: [
				"The registration key that you want to assign from the pool.",
			]
			type:     "str"
			required: true
		}
		device: {
			description: [
				"When C(managed) is C(no), specifies the address, or hostname, where the BIG-IQ can reach the remote device to register.",
				"When C(managed) is C(yes), specifies the managed device, or device UUID, that you want to register.",
				"If C(managed) is C(yes), it is very important that you do not have more than one device with the same name. BIG-IQ internally recognizes devices by their ID, and therefore, this module's cannot guarantee that the correct device will be registered. The device returned is the device that will be used.",
			]

			type: "str"
		}
		managed: {
			description: [
				"Whether the specified device is a managed or un-managed device.",
				"When C(state) is C(present), this parameter is required.",
			]
			type: "bool"
		}
		device_port: {
			description: [
				"Specifies the port of the remote device to connect to.",
				"If this parameter is not specified, the default of C(443) will be used.",
			]
			type:    "int"
			default: 443
		}
		device_username: {
			description: [
				"The username used to connect to the remote device.",
				"This username should be one that has sufficient privileges on the remote device to do licensing. Usually this is the C(Administrator) role.",
				"When C(managed) is C(no), this parameter is required.",
			]
			type: "str"
		}
		device_password: {
			description: [
				"The password of the C(device_username).",
				"When C(managed) is C(no), this parameter is required.",
			]
			type: "str"
		}
		state: {
			description: [
				"When C(present), ensures that the device is assigned the specified license.",
				"When C(absent), ensures the license is revokes from the remote device and freed on the BIG-IQ.",
			]

			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
