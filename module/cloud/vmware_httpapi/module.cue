package vmware_httpapi

vmware_core_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	vmware_core_info: {

		// Type of VMware object.
		// Valid choices are datacenter, cluster, datastore, folder, host, network, resource_pool, virtual_machine, content_library, local_library, subscribed_library, content_type, tag, category.

		object_type?: string

		// A list of filters to find the given object.
		// Valid filters for datacenter object type - folders, datacenters, names.
		// Valid filters for cluster object type - folders, datacenters, names, clusters.
		// Valid filters for datastore object type - folders, datacenters, names, datastores, types.
		// Valid filters for folder object type - folders, parent_folders, names, datacenters, type.
		// Valid filters for host object type - folders, hosts, names, datacenters, clusters, connection_states.
		// Valid filters for network object type - folders, types, names, datacenters, networks.
		// Valid filters for resource_pool object type - resource_pools, parent_resource_pools, names, datacenters, hosts, clusters.
		// Valid filters for virtual_machine object type - folders, resource_pools, power_states, vms, names, datacenters, hosts, clusters.
		// content_library, local_library, subscribed_library, content_type, tag, category does not take any filters.

		filters?: [...]
	}
}

vmware_appliance_access_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	vmware_appliance_access_info: {

		access_mode?: string

		// Method of access to get to appliance
		// If not specified, all modes will be returned.
	}
}

vmware_appliance_health_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	vmware_appliance_health_info: {

		// A VCSA asset that has associated health metrics.
		// Valid choices have yet to be determined at this time.

		asset?: string

		// A subsystem of the VCSA.

		subsystem?: string
	}
}

vmware_cis_category_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	vmware_cis_category_info: {

		// The object id of the category.
		// Exclusive of category_name and used_by_*.

		category_id?: string

		// The name of the category.
		// Exclusive of category_id and used_by_*.

		category_name?: string

		// The id of the entity to list applied categories.
		// Exclusive of other used_by_* and category_*.

		used_by_id?: string

		// The name of the entity to list applied categories, whose type is specified in used_by_type.
		// Exclusive of other used_by_id and category_*.

		used_by_name?: string

		// The type of the entity to list applied categories, whose name is specified in used_by_name.
		// Exclusive of other used_by_id and category_*.

		used_by_type?: string
	}
}
