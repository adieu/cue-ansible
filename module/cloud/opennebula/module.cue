package opennebula

one_host :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	one_host: {
		cluster_id?:   string
		cluster_name?: string
		im_mad_name?:  string
		labels?:       string
		name:          string
		state?:        string
		template?:     string
		vmm_mad_name?: string
	}
}

one_image :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	one_image: {
		state?:        string
		api_password?: string
		api_url?:      string
		api_username?: string
		enabled?:      bool
		id?:           string
		name?:         string
		new_name?:     string
	}
}

one_image_info :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	one_image_info: {
		api_password?: string
		api_url?:      string
		api_username?: string
		ids?:          string
		name?:         string
	}
}

one_service :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	one_service: {
		role?:          string
		state?:         string
		template_name?: string
		api_password?:  string
		api_url?:       string
		cardinality?:   string
		force?:         bool
		group_id?:      string
		service_id?:    string
		service_name?:  string
		wait_timeout?:  string
		api_username?:  string
		custom_attrs?:  string
		mode?:          string
		owner_id?:      string
		template_id?:   string
		unique?:        bool
		wait?:          bool
	}
}

one_vm :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	one_vm: {
		api_username?:     string
		datastore_id?:     string
		disk_size?:        string
		exact_count?:      string
		group_id?:         string
		mode?:             string
		count_attributes?: string
		networks?:         string
		persistent?:       bool
		state?:            string
		datastore_name?:   string
		disk_saveas?:      string
		hard?:             bool
		instance_ids?:     string
		labels?:           string
		vcpu?:             string
		api_password?:     string
		count_labels?:     string
		owner_id?:         string
		wait?:             bool
		api_url?:          string
		cpu?:              string
		vm_start_on_hold?: string
		attributes?:       string
		memory?:           string
		template_id?:      string
		template_name?:    string
		wait_timeout?:     string
		count?:            string
	}
}
