package vultr

vultr_ssh_key_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_ssh_key_info: {
	}
}

vultr_user_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_user_info: {
	}
}

vultr_dns_domain :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_dns_domain: {
		name:       string
		server_ip?: string
		state?:     string
	}
}

vultr_firewall_group :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_firewall_group: {
		name:   string
		state?: string
	}
}

vultr_firewall_group_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_firewall_group_info: {
	}
}

vultr_dns_domain_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_dns_domain_facts: {
	}
}

vultr_startup_script_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_startup_script_info: {
	}
}

vultr_network_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_network_info: {
	}
}

vultr_region_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_region_info: {
	}
}

vultr_server_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_server_info: {
	}
}

vultr_block_storage_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_block_storage_info: {
	}
}

vultr_dns_record :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_dns_record: {
		domain:       string
		multiple?:    bool
		name?:        string
		priority?:    string
		record_type?: string
		state?:       string
		ttl?:         string
		data?:        string
	}
}

vultr_network_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_network_facts: {
	}
}

vultr_region_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_region_facts: {
	}
}

vultr_startup_script_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_startup_script_facts: {
	}
}

vultr_firewall_rule :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_firewall_rule: {
		cidr?:       string
		end_port?:   string
		group:       string
		ip_version?: string
		protocol?:   string
		start_port?: string
		state?:      string
	}
}

vultr_network :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_network: {
		cidr?:   string
		name:    string
		region?: string
		state?:  string
	}
}

vultr_plan_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_plan_info: {
	}
}

vultr_block_storage :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_block_storage: {
		name:   string
		region: string
		size:   string
		state?: string
	}
}

vultr_user :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_user: {
		email?:    string
		force?:    bool
		name:      string
		password?: string
		state?:    string
		acls?: [...]
		api_enabled?: bool
	}
}

vultr_user_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_user_facts: {
	}
}

vultr_ssh_key :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_ssh_key: {
		name:     string
		ssh_key?: string
		state?:   string
	}
}

vultr_firewall_group_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_firewall_group_facts: {
	}
}

vultr_plan_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_plan_facts: {
	}
}

vultr_server_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_server_facts: {
	}
}

vultr_os_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_os_info: {
	}
}

vultr_startup_script :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_startup_script: {
		script_type?: string
		state?:       string
		name:         string
		script?:      string
	}
}

vultr_account_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_account_info: {
	}
}

vultr_block_storage_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_block_storage_facts: {
	}
}

vultr_dns_domain_info :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_dns_domain_info: {
	}
}

vultr_ssh_key_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_ssh_key_facts: {
	}
}

vultr_account_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_account_facts: {
	}
}

vultr_os_facts :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_os_facts: {
	}
}

vultr_server :: {
	name?: string
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	vultr_server: {
		ipv6_enabled?:            bool
		plan?:                    string
		private_network_enabled?: bool
		reserved_ip_v4?:          string
		tag?:                     string
		auto_backup_enabled?:     bool
		firewall_group?:          string
		force?:                   bool
		name:                     string
		notify_activate?:         bool
		user_data?:               string
		os?:                      string
		region?:                  string
		snapshot?:                string
		ssh_keys?: [...]
		state?:          string
		hostname?:       string
		startup_script?: string
	}
}
