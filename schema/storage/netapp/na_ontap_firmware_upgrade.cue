package ansible

module: na_ontap_firmware_upgrade: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Update ONTAP service-prosessor firmware",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_firmware_upgrade"
	options: {
		state: {
			description: [
				"Whether the specified ONTAP firmware should  be upgraded or not.",
			]
			default: "present"
			type:    "str"
		}
		node: {
			description: [
				"Node on which the device is located.",
			]
			type:     "str"
			required: true
		}
		clear_logs: {
			description: [
				"Clear logs on the device after update. Default value is true",
			]
			type:    "bool"
			default: true
		}
		package: {
			description: [
				"Name of the package file containing the firmware to be installed. Not required when -baseline is true.",
			]
			type: "str"
		}
		shelf_module_fw: {
			description: [
				"Shelf module firmware to be updated to.",
			]
			type: "str"
		}
		disk_fw: {
			description: [
				"disk firmware to be updated to.",
			]
			type: "str"
		}
		update_type: {
			description: [
				"Type of firmware update to be performed. Options include serial_full, serial_differential, network_full.",
			]
			type: "str"
		}
		install_baseline_image: {
			description: [
				"Install the version packaged with ONTAP if this parameter is set to true. Otherwise, package must be used to specify the package to install.",
			]
			type:    "bool"
			default: false
		}
		firmware_type: {
			description: [
				"Type of firmware to be upgraded. Options include shelf, ACP, service-processor, and disk.",
				"For shelf firmware upgrade the operation is asynchronous, and therefore returns no errors that might occur during the download process.",
				"Shelf firmware upgrade is idempotent if shelf_module_fw is provided .",
				"disk firmware upgrade is idempotent if disk_fw is provided .",
				"With check mode, SP, ACP, disk, and shelf firmware upgrade is not idempotent.",
				"This operation will only update firmware on shelves/disk that do not have the latest firmware-revision.",
			]
			choices: ["service-processor", "shelf", "acp", "disk"]
			type: "str"
		}
	}
	short_description: "NetApp ONTAP firmware upgrade for SP, shelf, ACP, and disk."
	version_added:     "2.9"
}
