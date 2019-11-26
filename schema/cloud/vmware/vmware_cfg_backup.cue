package ansible

module: vmware_cfg_backup: {
	module:            "vmware_cfg_backup"
	short_description: "Backup / Restore / Reset ESXi host configuration"
	description: [
		"This module can be used to perform various operations related to backup, restore and reset of ESXi host configuration.",
	]
	version_added: "2.5"
	author: [
		"Andreas Nafpliotis (@nafpliot-ibm)",
	]
	notes: [
		"Tested on ESXi 6.0",
		"Works only for ESXi hosts",
		"For configuration load or reset, the host will be switched automatically to maintenance mode.",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi installed",
	]
	options: {
		esxi_hostname: {
			description: [
				"Name of ESXi server. This is required only if authentication against a vCenter is done.",
			]
			required: false
			type:     "str"
		}
		dest: {
			description: [
				"The destination where the ESXi configuration bundle will be saved. The I(dest) can be a folder or a file.",
				"If I(dest) is a folder, the backup file will be saved in the folder with the default filename generated from the ESXi server.",
				"If I(dest) is a file, the backup file will be saved with that filename. The file extension will always be .tgz.",
			]
			type: "path"
		}
		src: {
			description: [
				"The file containing the ESXi configuration that will be restored.",
			]
			type: "path"
		}
		state: {
			description: [
				"If C(saved), the .tgz backup bundle will be saved in I(dest).",
				"If C(absent), the host configuration will be reset to default values.",
				"If C(loaded), the backup file in I(src) will be loaded to the ESXi host rewriting the hosts settings.",
			]
			choices: ["saved", "absent", "loaded"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
