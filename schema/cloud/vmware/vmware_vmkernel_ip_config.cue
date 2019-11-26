package ansible

module: vmware_vmkernel_ip_config: {
	module:            "vmware_vmkernel_ip_config"
	short_description: "Configure the VMkernel IP Address"
	description: [
		"Configure the VMkernel IP Address",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
		"Russell Teague (@mtnbikenc)",
	]
	notes: [
		"Tested on vSphere 5.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		vmk_name: {
			description: [
				"VMkernel interface name",
			]
			required: true
			type:     "str"
		}
		ip_address: {
			description: [
				"IP address to assign to VMkernel interface",
			]
			required: true
			type:     "str"
		}
		subnet_mask: {
			description: [
				"Subnet Mask to assign to VMkernel interface",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
