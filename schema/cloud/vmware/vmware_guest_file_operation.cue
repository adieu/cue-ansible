package ansible

module: vmware_guest_file_operation: {
	module:            "vmware_guest_file_operation"
	short_description: "Files operation in a VMware guest operating system without network"
	description: [
		"Module to copy a file to a VM, fetch a file from a VM and create or delete a directory in the guest OS.",
	]
	version_added: "2.5"
	author: ["Stéphane Travassac (@stravassac)"]
	notes: [
		"Tested on vSphere 6",
		"Only the first match against vm_id is used, even if there are multiple matches",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"requests",
	]
	options: {
		datacenter: {
			description: [
				"The datacenter hosting the virtual machine.",
				"If set, it will help to speed up virtual machine search.",
			]
			type: "str"
		}
		cluster: {
			description: [
				"The cluster hosting the virtual machine.",
				"If set, it will help to speed up virtual machine search.",
			]
			type: "str"
		}
		folder: {
			description: [
				"Destination folder, absolute path to find an existing guest or create the new guest.",
				"The folder should include the datacenter. ESX's datacenter is ha-datacenter",
				"Used only if C(vm_id_type) is C(inventory_path).",
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
				"   folder: vm/folder2",
				"   folder: folder2",
			]
			type: "str"
		}
		vm_id: {
			description: ["Name of the virtual machine to work with."]
			required: true
			type:     "str"
		}
		vm_id_type: {
			description: ["The VMware identification method by which the virtual machine will be identified."]
			default: "vm_name"
			choices: [
				"uuid",
				"instance_uuid",
				"dns_name",
				"inventory_path",
				"vm_name",
			]
			type: "str"
		}
		vm_username: {
			description: ["The user to login in to the virtual machine."]
			required: true
			type:     "str"
		}
		vm_password: {
			description: ["The password used to login-in to the virtual machine."]
			required: true
			type:     "str"
		}
		directory: {
			description: [
				"Create or delete a directory.",
				"Can be used to create temp directory inside guest using mktemp operation.",
				"mktemp sets variable C(dir) in the result with the name of the new directory.",
				"mktemp operation option is added in version 2.8",
				"Valid attributes are:",
				"  operation (str): Valid values are: create, delete, mktemp",
				"  path (str): directory path (required for create or remove)",
				"  prefix (str): temporary directory prefix (required for mktemp)",
				"  suffix (str): temporary directory suffix (required for mktemp)",
				"  recurse (boolean): Not required, default (false)",
			]
			required: false
			type:     "dict"
		}
		copy: {
			description: [
				"Copy file to vm without requiring network.",
				"Valid attributes are:",
				"  src: file source absolute or relative",
				"  dest: file destination, path must be exist",
				"  overwrite: False or True (not required, default False)",
			]
			required: false
			type:     "dict"
		}
		fetch: {
			description: [
				"Get file from virtual machine without requiring network.",
				"Valid attributes are:",
				"  src: The file on the remote system to fetch. This I(must) be a file, not a directory",
				"  dest: file destination on localhost, path must be exist",
			]
			required:      false
			type:          "dict"
			version_added: 2.5
		}
	}

	extends_documentation_fragment: "vmware.documentation"
}
