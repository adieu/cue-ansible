package ansible

module: vmware_guest_disk: {
	module:            "vmware_guest_disk"
	short_description: "Manage disks related to virtual machine in given vCenter infrastructure"
	description: [
		"This module can be used to add, remove and update disks belonging to given virtual machine.",
		"All parameters and VMware object names are case sensitive.",
		"This module is destructive in nature, please read documentation carefully before proceeding.",
		"Be careful while removing disk specified as this may lead to data loss.",
	]
	version_added: 2.8
	author: [
		"Abhijeet Kasurde (@Akasurde) <akasurde@redhat.com>",
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
			version_added: "2.9"
			type:          "str"
		}
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"This is a required parameter, only if multiple VMs are found with same name.",
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
				"The datacenter name to which virtual machine belongs to.",
			]
			required: true
			type:     "str"
		}
		use_instance_uuid: {
			description: [
				"Whether to use the VMware instance UUID rather than the BIOS UUID.",
			]
			default:       false
			type:          "bool"
			version_added: "2.8"
		}
		disk: {
			description: [
				"A list of disks to add.",
				"The virtual disk related information is provided using this list.",
				"All values and parameters are case sensitive.",
				"Valid attributes are:",
				" - C(size[_tb,_gb,_mb,_kb]) (integer): Disk storage size in specified unit.",
				"   If C(size) specified then unit must be specified. There is no space allowed in between size number and unit.",
				"   Only first occurrence in disk element will be considered, even if there are multiple size* parameters available.",
				" - C(type) (string): Valid values are:",
				"     - C(thin) thin disk",
				"     - C(eagerzeroedthick) eagerzeroedthick disk",
				"     - C(thick) thick disk",
				"     Default: C(thick) thick disk, no eagerzero.",
				" - C(disk_mode) (string): Type of disk mode. Valid values are:",
				"     - C(persistent) Changes are immediately and permanently written to the virtual disk. This is default.",
				"     - C(independent_persistent) Same as persistent, but not affected by snapshots.",
				"     - C(independent_nonpersistent) Changes to virtual disk are made to a redo log and discarded at power off, but not affected by snapshots.",
				" - C(datastore) (string): Name of datastore or datastore cluster to be used for the disk.",
				" - C(autoselect_datastore) (bool): Select the less used datastore. Specify only if C(datastore) is not specified.",
				" - C(scsi_controller) (integer): SCSI controller number. Valid value range from 0 to 3.",
				"   Only 4 SCSI controllers are allowed per VM.",
				"   Care should be taken while specifying C(scsi_controller) is 0 and C(unit_number) as 0 as this disk may contain OS.",
				" - C(unit_number) (integer): Disk Unit Number. Valid value range from 0 to 15. Only 15 disks are allowed per SCSI Controller.",
				" - C(scsi_type) (string): Type of SCSI controller. This value is required only for the first occurrence of SCSI Controller.",
				"   This value is ignored, if SCSI Controller is already present or C(state) is C(absent).",
				"   Valid values are C(buslogic), C(lsilogic), C(lsilogicsas) and C(paravirtual).",
				"   C(paravirtual) is default value for this parameter.",
				" - C(state) (string): State of disk. This is either \"absent\" or \"present\".",
				"   If C(state) is set to C(absent), disk will be removed permanently from virtual machine configuration and from VMware storage.",
				"   If C(state) is set to C(present), disk will be added if not present at given SCSI Controller and Unit Number.",
				"   If C(state) is set to C(present) and disk exists with different size, disk size is increased.",
				"   Reducing disk size is not allowed.",
			]
			default: []
			type: "list"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
