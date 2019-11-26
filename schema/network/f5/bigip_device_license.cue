package ansible

module: bigip_device_license: {
	module:            "bigip_device_license"
	short_description: "Manage license installation and activation on BIG-IP devices"
	description: [
		"Manage license installation and activation on a BIG-IP.",
	]
	version_added: 2.6
	options: {
		license_key: {
			description: [
				"The registration key to use to license the BIG-IP.",
				"This parameter is required if the C(state) is equal to C(present).",
				"This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.",
			]

			type: "str"
		}
		license_server: {
			description: [
				"The F5 license server to use when getting a license and validating a dossier.",
				"This parameter is required if the C(state) is equal to C(present).",
				"This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.",
			]

			type:    "str"
			default: "activate.f5.com"
		}
		state: {
			description: [
				"The state of the license on the system.",
				"When C(present), only guarantees that a license is there.",
				"When C(latest), ensures that the license is always valid.",
				"When C(absent), removes the license on the system.",
				"When C(revoked), removes the license on the system and revokes its future usage on the F5 license servers.",
			]

			type: "str"
			choices: [
				"absent",
				"present",
				"revoked",
			]
			default: "present"
		}
		accept_eula: {
			description: [
				"Declares whether you accept the BIG-IP EULA or not. By default, this value is C(no). You must specifically declare that you have viewed and accepted the license. This module will not present you with that EULA though, so it is incumbent on you to read it.",
				"The EULA can be found here; https://support.f5.com/csp/article/K12902.",
				"This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.",
			]

			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
