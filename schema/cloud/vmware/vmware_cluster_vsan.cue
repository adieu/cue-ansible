package ansible

module: vmware_cluster_vsan: {
	module:            "vmware_cluster_vsan"
	short_description: "Manages virtual storage area network (vSAN) configuration on VMware vSphere clusters"
	description: [
		"Manages vSAN on VMware vSphere clusters.",
		"All values and VMware object names are case sensitive.",
	]
	version_added: "2.9"
	author: [
		"Joseph Callen (@jcpowermac)",
		"Abhijeet Kasurde (@Akasurde)",
	]
	requirements: [
		"Tested on ESXi 5.5 and 6.5.",
		"PyVmomi installed.",
	]
	options: {
		cluster_name: {
			description: [
				"The name of the cluster to be managed.",
			]
			type:     "str"
			required: true
		}
		datacenter: {
			description: [
				"The name of the datacenter.",
			]
			type:     "str"
			required: true
			aliases: ["datacenter_name"]
		}
		enable_vsan: {
			description: [
				"Whether to enable vSAN.",
			]
			type:    "bool"
			default: "no"
		}
		vsan_auto_claim_storage: {
			description: [
				"Whether the VSAN service is configured to automatically claim local storage on VSAN-enabled hosts in the cluster.",
			]

			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
