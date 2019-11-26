package ansible

module: vmware_guest_snapshot_info: {
	module:            "vmware_guest_snapshot_info"
	short_description: "Gather info about virtual machine's snapshots in vCenter"
	description: [
		"This module can be used to gather information about virtual machine's snapshots.",
		"This module was called C(vmware_guest_snapshot_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: 2.6
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.0 and 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the VM to work with.",
				"This is required if C(uuid) or C(moid) is not supplied.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the instance to manage if known, this is VMware's BIOS UUID by default.",
				"This is required if C(name) or C(moid) parameter is not supplied.",
				"The C(folder) is ignored, if C(uuid) is provided.",
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
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"This is required only, if multiple virtual machines with same name are found on given vCenter.",
				"The folder should include the datacenter. ESX's datacenter is ha-datacenter",
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
		datacenter: {
			description: [
				"Name of the datacenter.",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
