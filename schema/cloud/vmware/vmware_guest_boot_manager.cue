package ansible

module: vmware_guest_boot_manager: {
	module:            "vmware_guest_boot_manager"
	short_description: "Manage boot options for the given virtual machine"
	description: [
		"This module can be used to manage boot options for the given virtual machine.",
	]
	version_added: 2.7
	author: [
		"Abhijeet Kasurde (@Akasurde) <akasurde@redhat.com>",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the VM to work with.",
				"This is required if C(uuid) or C(moid) parameter is not supplied.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the instance to manage if known, this is VMware's BIOS UUID by default.",
				"This is required if C(name) or C(moid) parameter is not supplied.",
			]
			type: "str"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
			]
			version_added: "2.9"
			type:          "str"
		}
		use_instance_uuid: {
			description: [
				"Whether to use the VMware instance UUID rather than the BIOS UUID.",
			]
			default:       false
			type:          "bool"
			version_added: "2.8"
		}
		boot_order: {
			description: [
				"List of the boot devices.",
			]
			default: []
			type: "list"
		}
		name_match: {
			description: [
				"If multiple virtual machines matching the name, use the first or last found.",
			]
			default: "first"
			choices: ["first", "last"]
			type: "str"
		}
		boot_delay: {
			description: [
				"Delay in milliseconds before starting the boot sequence.",
			]
			default: 0
			type:    "int"
		}
		enter_bios_setup: {
			description: [
				"If set to C(True), the virtual machine automatically enters BIOS setup the next time it boots.",
				"The virtual machine resets this flag, so that the machine boots proceeds normally.",
			]
			type:    "bool"
			default: false
		}
		boot_retry_enabled: {
			description: [
				"If set to C(True), the virtual machine that fails to boot, will try to boot again after C(boot_retry_delay) is expired.",
				"If set to C(False), the virtual machine waits indefinitely for user intervention.",
			]
			type:    "bool"
			default: false
		}
		boot_retry_delay: {
			description: [
				"Specify the time in milliseconds between virtual machine boot failure and subsequent attempt to boot again.",
				"If set, will automatically set C(boot_retry_enabled) to C(True) as this parameter is required.",
			]
			default: 0
			type:    "int"
		}
		boot_firmware: {
			description: [
				"Choose which firmware should be used to boot the virtual machine.",
			]
			choices: ["bios", "efi"]
			type: "str"
		}
		secure_boot_enabled: {
			description: [
				"Choose if EFI secure boot should be enabled.  EFI secure boot can only be enabled with boot_firmware = efi",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
