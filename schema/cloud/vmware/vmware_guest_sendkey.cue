package ansible

module: vmware_guest_sendkey: {
	module:            "vmware_guest_sendkey"
	short_description: "Send USB HID codes to the Virtual Machine's keyboard."
	description: [
		"This module is used to send keystrokes to given virtual machine.",
		"All parameters and VMware object names are case sensitive.",
	]
	version_added: "2.9"
	author: [
		"Diane Wang (@Tomorrow9) <dianew@vmware.com>",
	]
	notes: [
		"Tested on vSphere 6.5 and 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the virtual machine.",
				"This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the instance to gather facts if known, this is VMware's unique identifier.",
				"This is a required parameter, if parameter C(name) or C(moid) is not supplied.",
			]
			type: "str"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
			]
			type: "str"
		}
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"This is a required parameter, only if multiple VMs are found with same name.",
				"The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.",
				"Examples:",
				"   folder: /ha-datacenter/vm",
				"   folder: ha-datacenter/vm",
				"   folder: /datacenter1/vm",
				"   folder: datacenter1/vm",
				"   folder: /datacenter1/vm/folder1",
				"   folder: datacenter1/vm/folder1",
				"   folder: /folder1/datacenter1/vm",
				"   folder: folder1/datacenter1/vm",
				"   folder: /folder1/datacenter1/vm/folder2",
			]
			type: "str"
		}
		cluster: {
			description: [
				"The name of cluster where the virtual machine is running.",
				"This is a required parameter, if C(esxi_hostname) is not set.",
				"C(esxi_hostname) and C(cluster) are mutually exclusive parameters.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"The ESXi hostname where the virtual machine is running.",
				"This is a required parameter, if C(cluster) is not set.",
				"C(esxi_hostname) and C(cluster) are mutually exclusive parameters.",
			]
			type: "str"
		}
		datacenter: {
			description: [
				"The datacenter name to which virtual machine belongs to.",
			]
			type: "str"
		}
		string_send: {
			description: [
				"The string will be sent to the virtual machine.",
				"This string can contain valid special character, alphabet and digit on the keyboard.",
			]
			type: "str"
		}
		keys_send: {
			description: [
				"The list of the keys will be sent to the virtual machine.",
				"Valid values are C(ENTER), C(ESC), C(BACKSPACE), C(TAB), C(SPACE), C(CAPSLOCK), C(DELETE), C(CTRL_ALT_DEL), C(CTRL_C) and C(F1) to C(F12), C(RIGHTARROW), C(LEFTARROW), C(DOWNARROW), C(UPARROW).",
				"If both C(keys_send) and C(string_send) are specified, keys in C(keys_send) list will be sent in front of the C(string_send).",
			]
			type: "list"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
