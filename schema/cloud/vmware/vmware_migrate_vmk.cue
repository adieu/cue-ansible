package ansible

module: vmware_migrate_vmk: {
	module:            "vmware_migrate_vmk"
	short_description: "Migrate a VMK interface from VSS to VDS"
	description: [
		"Migrate a VMK interface from VSS to VDS",
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
		esxi_hostname: {
			description: [
				"ESXi hostname to be managed",
			]
			required: true
			type:     "str"
		}
		device: {
			description: [
				"VMK interface name",
			]
			required: true
			type:     "str"
		}
		current_switch_name: {
			description: [
				"Switch VMK interface is currently on",
			]
			required: true
			type:     "str"
		}
		current_portgroup_name: {
			description: [
				"Portgroup name VMK interface is currently on",
			]
			required: true
			type:     "str"
		}
		migrate_switch_name: {
			description: [
				"Switch name to migrate VMK interface to",
			]
			required: true
			type:     "str"
		}
		migrate_portgroup_name: {
			description: [
				"Portgroup name to migrate VMK interface to",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
