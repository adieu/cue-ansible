package ansible

module: vmware_core_info: {
	module:            "vmware_core_info"
	short_description: "Gathers info about various VMware inventory objects using REST API"
	description: [
		"This module can be used to gather information about various VMware inventory objects.",
		"This module is based on REST API and uses httpapi connection plugin for persistent connection.",
	]
	version_added: "2.10"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Paul Knight (@n3pjk)",
	]
	notes: [
		"Tested on vSphere 6.7",
	]
	requirements: [
		"python >= 2.6",
	]
	options: {
		object_type: {
			description: [
				"Type of VMware object.",
				"Valid choices are datacenter, cluster, datastore, folder, host, network, resource_pool, virtual_machine, content_library, local_library, subscribed_library, content_type, tag, category.",
			]

			type:    "str"
			default: "datacenter"
		}
		filters: {
			description: [
				"A list of filters to find the given object.",
				"Valid filters for datacenter object type - folders, datacenters, names.",
				"Valid filters for cluster object type - folders, datacenters, names, clusters.",
				"Valid filters for datastore object type - folders, datacenters, names, datastores, types.",
				"Valid filters for folder object type - folders, parent_folders, names, datacenters, type.",
				"Valid filters for host object type - folders, hosts, names, datacenters, clusters, connection_states.",
				"Valid filters for network object type - folders, types, names, datacenters, networks.",
				"Valid filters for resource_pool object type - resource_pools, parent_resource_pools, names, datacenters, hosts, clusters.",
				"Valid filters for virtual_machine object type - folders, resource_pools, power_states, vms, names, datacenters, hosts, clusters.",
				"content_library, local_library, subscribed_library, content_type, tag, category does not take any filters.",
			]
			default: []
			type: "list"
		}
	}
	extends_documentation_fragment: "VmwareRestModule_filters.documentation"
}
