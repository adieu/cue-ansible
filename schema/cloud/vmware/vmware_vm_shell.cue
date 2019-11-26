package ansible

module: vmware_vm_shell: {
	module:            "vmware_vm_shell"
	short_description: "Run commands in a VMware guest operating system"
	description: [
		"Module allows user to run common system administration commands in the guest operating system.",
	]
	version_added: "2.1"
	author: [
		"Ritesh Khadgaray (@ritzk)",
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 5.5, 6.0 and 6.5.",
		"Only the first match against vm_id is used, even if there are multiple matches.",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
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
				"Destination folder, absolute or relative path to find an existing guest or create the new guest.",
				"The folder should include the datacenter. ESX's datacenter is ha-datacenter.",
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
			version_added: "2.4"
			type:          "str"
		}
		vm_id: {
			description: [
				"Name of the virtual machine to work with.",
			]
			required: true
			type:     "str"
		}
		vm_id_type: {
			description: [
				"The VMware identification method by which the virtual machine will be identified.",
			]
			default: "vm_name"
			choices: ["uuid", "instance_uuid", "dns_name", "inventory_path", "vm_name"]
			type: "str"
		}
		vm_username: {
			description: [
				"The user to login-in to the virtual machine.",
			]
			required: true
			type:     "str"
		}
		vm_password: {
			description: [
				"The password used to login-in to the virtual machine.",
			]
			required: true
			type:     "str"
		}
		vm_shell: {
			description: [
				"The absolute path to the program to start.",
				"On Linux, shell is executed via bash.",
			]
			required: true
			type:     "str"
		}
		vm_shell_args: {
			description: [
				"The argument to the program.",
				"The characters which must be escaped to the shell also be escaped on the command line provided.",
			]
			default: " "
			type:    "str"
		}
		vm_shell_env: {
			description: [
				"Comma separated list of environment variable, specified in the guest OS notation.",
			]
			type: "list"
		}
		vm_shell_cwd: {
			description: [
				"The current working directory of the application from which it will be run.",
			]
			type: "str"
		}
		wait_for_process: {
			description: [
				"If set to C(True), module will wait for process to complete in the given virtual machine.",
			]
			default:       false
			type:          "bool"
			version_added: 2.7
		}
		timeout: {
			description: [
				"Timeout in seconds.",
				"If set to positive integers, then C(wait_for_process) will honor this parameter and will exit after this timeout.",
			]
			default:       3600
			version_added: 2.7
			type:          "int"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
