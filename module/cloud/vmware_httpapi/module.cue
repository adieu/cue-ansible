package vmware_httpapi

vmware_appliance_access_info :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	become?: bool
	vmware_appliance_access_info: {
		access_mode?: string
	}
}

vmware_appliance_health_info :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	become?: bool
	vmware_appliance_health_info: {
		subsystem?: string
		asset?:     string
	}
}

vmware_cis_category_info :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	become?: bool
	vmware_cis_category_info: {
		category_id?:   string
		category_name?: string
		used_by_id?:    string
		used_by_name?:  string
		used_by_type?:  string
	}
}

vmware_core_info :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	become?: bool
	vmware_core_info: {
		filters?: [...]
		object_type?: string
	}
}
