package manageiq

manageiq_alert_profiles :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_alert_profiles: {
		alerts?:        string
		name?:          string
		notes?:         string
		resource_type?: string
		state?:         string
	}
}

manageiq_alerts :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_alerts: {
		state?:           string
		description?:     string
		enabled?:         bool
		expression?:      string
		expression_type?: string
		options?:         string
		resource_type?:   string
	}
}

manageiq_tags :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_tags: {
		resource_name: string
		resource_type: string
		state?:        string
		tags?:         string
	}
}

manageiq_tenant :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_tenant: {
		description: string
		name:        string
		parent?:     string
		parent_id?:  string
		quotas?:     string
		state?:      string
	}
}

wakeonlan :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}

manageiq_group :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_group: {
		description: string
		role?:       string
		state?:      string
		tenant_id?:  string
		belongsto_filters?: [...]
		belongsto_filters_merge_mode?: string
		managed_filters?: {...}
		managed_filters_merge_mode?: string
		role_id?:                    string
		tenant?:                     string
	}
}

manageiq_policies :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_policies: {
		policy_profiles?: string
		resource_name:    string
		resource_type:    string
		state?:           string
	}
}

manageiq_provider :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_provider: {
		api_version?:                 string
		metrics?:                     string
		provider_region?:             string
		type:                         string
		host_default_vnc_port_start?: string
		name:                         string
		project?:                     string
		provider?:                    string
		alerts?:                      string
		ssh_keypair?:                 string
		zone?:                        string
		azure_tenant_id?:             string
		host_default_vnc_port_end?:   string
		state?:                       string
		subscription?:                string
		tenant_mapping_enabled?:      bool
	}
}

manageiq_user :: {
	register?:   string
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	manageiq_user: {
		state?:           string
		update_password?: string
		userid:           string
		email?:           string
		group?:           string
		name?:            string
		password?:        string
	}
}
