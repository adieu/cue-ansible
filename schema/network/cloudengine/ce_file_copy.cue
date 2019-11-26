package ansible

module: ce_file_copy: {
	module:            "ce_file_copy"
	version_added:     "2.4"
	short_description: "Copy a file to a remote cloudengine device over SCP on HUAWEI CloudEngine switches."
	description: [
		"Copy a file to a remote cloudengine device over SCP on HUAWEI CloudEngine switches.",
	]
	author: [
		"Zhou Zhijin (@QijunPan)",
	]
	notes: [
		"The feature must be enabled with feature scp-server.",
		"If the file is already present, no transfer will take place.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	requirements: [
		"paramiko",
	]
	options: {
		local_file: {
			description: [
				"Path to local file. Local directory must exist. The maximum length of I(local_file) is C(4096).",
			]

			required: true
		}
		remote_file: description: [
			"Remote file path of the copy. Remote directories must exist. If omitted, the name of the local file will be used. The maximum length of I(remote_file) is C(4096).",
		]

		file_system: {
			description: [
				"The remote file system of the device. If omitted, devices that support a I(file_system) parameter will use their default values. File system indicates the storage medium and can be set to as follows, 1) C(flash) is root directory of the flash memory on the master MPU. 2) C(slave#flash) is root directory of the flash memory on the slave MPU. If no slave MPU exists, this drive is unavailable. 3) C(chassis ID/slot number#flash) is root directory of the flash memory on a device in a stack. For example, C(1/5#flash) indicates the flash memory whose chassis ID is 1 and slot number is 5.",
			]

			default: "flash:"
		}
	}
}
