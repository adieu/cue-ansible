package ansible

module: vmware_vm_vss_dvs_migrate: {
	module:            "vmware_vm_vss_dvs_migrate"
	short_description: "Migrates a virtual machine from a standard vswitch to distributed"
	description: [
		"Migrates a virtual machine from a standard vswitch to distributed",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
	]
	notes: [
		"Tested on vSphere 5.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		vm_name: {
			description: [
				"Name of the virtual machine to migrate to a dvSwitch",
			]
			required: true
			type:     "str"
		}
		dvportgroup_name: {
			description: [
				"Name of the portgroup to migrate to the virtual machine to",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
