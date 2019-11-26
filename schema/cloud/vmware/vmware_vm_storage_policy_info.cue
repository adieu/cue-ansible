package ansible

module: vmware_vm_storage_policy_info: {
	module:            "vmware_vm_storage_policy_info"
	short_description: "Gather information about vSphere storage profile defined storage policy information."
	description: [
		"Returns basic information on vSphere storage profiles.",
		"A vSphere storage profile defines storage policy information that describes storage requirements for virtual machines and storage capabilities of storage providers.",
	]

	version_added: "2.9"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	extends_documentation_fragment: "vmware.documentation"
}
