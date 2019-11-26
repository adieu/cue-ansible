package ansible

module: vmware_datastore_info: {
	module:            "vmware_datastore_info"
	short_description: "Gather info about datastores available in given vCenter"
	description: [
		"This module can be used to gather information about datastores in VMWare infrastructure.",
		"All values and VMware object names are case sensitive.",
		"This module was called C(vmware_datastore_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: 2.5
	author: [
		"Tim Rightnour (@garbled1)",
	]
	notes: [
		"Tested on vSphere 5.5, 6.0 and 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the datastore to match.",
				"If set, information of specific datastores are returned.",
			]
			required: false
			type:     "str"
		}
		datacenter: {
			description: [
				"Datacenter to search for datastores.",
				"This parameter is required, if C(cluster) is not supplied.",
			]
			required: false
			aliases: ["datacenter_name"]
			type: "str"
		}
		cluster: {
			description: [
				"Cluster to search for datastores.",
				"If set, information of datastores belonging this clusters will be returned.",
				"This parameter is required, if C(datacenter) is not supplied.",
			]
			required: false
			type:     "str"
		}
		gather_nfs_mount_info: {
			description: [
				"Gather mount information of NFS datastores.",
				"Disabled per default because this slows down the execution if you have a lot of datastores.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
		gather_vmfs_mount_info: {
			description: [
				"Gather mount information of VMFS datastores.",
				"Disabled per default because this slows down the execution if you have a lot of datastores.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
