package ansible

module: vmware_vm_info: {
	module:            "vmware_vm_info"
	short_description: "Return basic info pertaining to a VMware machine guest"
	description: [
		"Return basic information pertaining to a vSphere or ESXi virtual machine guest.",
		"Cluster name as fact is added in version 2.7.",
		"This module was called C(vmware_vm_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.0"
	author: [
		"Joseph Callen (@jcpowermac)",
		"Abhijeet Kasurde (@Akasurde)",
		"Fedor Vompe (@sumkincpp)",
	]
	notes: [
		"Tested on ESXi 6.7, vSphere 5.5 and vSphere 6.5",
		"From 2.8 and onwards, information are returned as list of dict instead of dict.",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		vm_type: {
			description: [
				"If set to C(vm), then information are gathered for virtual machines only.",
				"If set to C(template), then information are gathered for virtual machine templates only.",
				"If set to C(all), then information are gathered for all virtual machines and virtual machine templates.",
			]
			required: false
			default:  "all"
			choices: ["all", "vm", "template"]
			version_added: 2.5
			type:          "str"
		}
		show_attribute: {
			description: [
				"Attributes related to VM guest shown in information only when this is set C(true).",
			]
			default:       false
			type:          "bool"
			version_added: 2.8
		}
		folder: {
			description: [
				"Specify a folder location of VMs to gather information from.",
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
			type:          "str"
			version_added: 2.9
		}
		show_tag: {
			description: [
				"Tags related to virtual machine are shown if set to C(True).",
			]
			default:       false
			type:          "bool"
			version_added: 2.9
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
