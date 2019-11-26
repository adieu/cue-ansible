package ansible

module: nxos_rpm: {
	module:                         "nxos_rpm"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.7"
	short_description:              "Install patch or feature rpms on Cisco NX-OS devices."
	description: [
		"Install software maintenance upgrade (smu) RPMS and 3rd party RPMS on Cisco NX-OS devices.",
	]

	author: "Sai Chintalapudi (@saichint)"
	notes: [
		"Tested against NXOSv 7.0(3)I2(5), 7.0(3)I4(6), 7.0(3)I5(3), 7.0(3)I6(1), 7.0(3)I7(3)",
		"For patches, the minimum platform version needed is 7.0(3)I2(5)",
		"For feature rpms, the minimum platform version needed is 7.0(3)I6(1)",
		"The module manages the entire RPM lifecycle (Add, activate, commit, deactivate, remove)",
		"For reload patches, this module is NOT idempotent until the patch is committed.",
	]

	options: {
		pkg: {
			description: [
				"Name of the RPM package.",
			]
			required: true
		}
		file_system: {
			description: [
				"The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.",
			]

			default: "bootflash"
		}
		aggregate: description: [
			"List of RPM/patch definitions.",
		]
		state: {
			description: [
				"If the state is present, the rpm will be installed, If the state is absent, it will be removed.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
