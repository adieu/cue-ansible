package panos

panos_admpwd :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_admpwd: {
		ip_address:   string
		key_filename: string
		newpassword:  string
		username?:    string
	}
}

panos_check :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_check: {
		interval?: string
		timeout?:  string
	}
}

panos_mgtconfig :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_mgtconfig: {
		panorama_primary?:     string
		panorama_secondary?:   string
		commit?:               bool
		dns_server_primary?:   string
		dns_server_secondary?: string
	}
}

panos_admin :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_admin: {
		admin_password:  string
		admin_username?: string
		commit?:         bool
		role?:           string
	}
}

panos_cert_gen_ssh :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_cert_gen_ssh: {
		ip_address:         string
		key_filename:       string
		password:           string
		rsa_nbits?:         string
		signed_by:          string
		cert_cn:            string
		cert_friendly_name: string
	}
}

panos_commit :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_commit: {
		commit_changes_by?: [...]
		description?: string
		ip_address:   string
		username?:    string
		commit_vsys?: [...]
		interval?: string
		password:  string
		sync?:     bool
		timeout?:  string
	}
}

panos_match_rule :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_match_rule: {
		destination_ip?:   string
		destination_zone?: string
		protocol?:         string
		username?:         string
		vsys_id:           string
		api_key?:          string
		application?:      string
		ip_address:        string
		password:          string
		rule_type:         string
		source_port?:      string
		source_zone?:      string
		to_interface?:     string
		category?:         string
		destination_port?: string
		source_ip:         string
		source_user?:      string
	}
}

panos_op :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_op: {
		api_key?:   string
		cmd:        string
		ip_address: string
		password:   string
		username?:  string
	}
}

panos_sag :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_sag: {
		api_key?:     string
		commit?:      bool
		description?: string
		devicegroup?: string
		operation:    string
		sag_match_filter?: [...]
		sag_name: string
		tags?:    string
	}
}

panos_set :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_set: {
		xpath:      string
		command?:   string
		element?:   string
		ip_address: string
		password:   string
		username?:  string
	}
}

panos_dag_tags :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_dag_tags: {
		ip_to_register?: string
		operation?:      string
		tag_names?:      string
		api_key?:        string
		commit?:         bool
		description?:    string
		devicegroup?:    string
	}
}

panos_import :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_import: {
		category?:       string
		file?:           string
		url?:            string
		validate_certs?: bool
	}
}

panos_loadcfg :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_loadcfg: {
		file?:   string
		commit?: bool
	}
}

panos_pg :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_pg: {
		spyware?:        string
		virus?:          string
		vulnerability?:  string
		wildfire?:       string
		commit?:         bool
		file_blocking?:  string
		pg_name:         string
		url_filtering?:  string
		data_filtering?: string
	}
}

panos_query_rules :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_query_rules: {
		destination_ip?:   string
		ip_address:        string
		tag_name?:         string
		api_key?:          string
		protocol?:         string
		source_zone?:      string
		destination_port?: string
		destination_zone?: string
		devicegroup?:      string
		password:          string
		source_port?:      string
		username?:         string
		application?:      string
		source_ip?:        string
	}
}

panos_security_rule :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_security_rule: {
		ip_address:        string
		log_start?:        bool
		operation?:        string
		description?:      string
		group_profile?:    string
		destination_zone?: string
		source_user?:      string
		category?: [...]
		url_filtering?:     string
		rule_name:          string
		source_zone?:       string
		tag_name?:          string
		wildfire_analysis?: string
		data_filtering?:    string
		file_blocking?:     string
		source_ip?:         string
		spyware?:           string
		vulnerability?:     string
		hip_profiles?:      string
		service?:           string
		api_key?:           string
		commit?:            bool
		password:           string
		username?:          string
		action?:            string
		antivirus?:         string
		application?:       string
		destination_ip?:    string
		rule_type?:         string
		devicegroup?:       string
		log_end?:           bool
	}
}

panos_dag :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_dag: {
		commit?:    bool
		dag_filter: string
		dag_name:   string
	}
}

panos_interface :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_interface: {
		commit?:               bool
		create_default_route?: bool
		if_name:               string
		zone_name:             string
	}
}

panos_lic :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_lic: {
		auth_code: string
		force?:    bool
	}
}

panos_nat_rule :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_nat_rule: {
		dnat_address?:           string
		operation:               string
		snat_static_address?:    string
		api_key?:                string
		destination_ip?:         string
		destination_zone:        string
		devicegroup?:            string
		snat_interface?:         string
		snat_type?:              string
		source_ip?:              string
		source_zone:             string
		description?:            string
		username?:               string
		ip_address:              string
		rule_name:               string
		snat_address_type?:      string
		snat_dynamic_address?:   string
		to_interface?:           string
		dnat_port?:              string
		password:                string
		service?:                string
		snat_bidirectional?:     bool
		snat_interface_address?: string
		tag_name?:               string
		commit?:                 bool
	}
}

panos_object :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_object: {
		devicegroup?:      string
		servicegroup?:     string
		address_type?:     string
		api_key?:          string
		description?:      string
		destination_port?: string
		static_value?:     string
		username?:         string
		dynamic_value?:    string
		protocol?:         string
		services?:         string
		source_port?:      string
		tag_name?:         string
		operation:         string
		password:          string
		serviceobject?:    string
		address?:          string
		addressgroup?:     string
		addressobject?:    string
		color?:            string
		ip_address:        string
	}
}

panos_restart :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	become?:     bool
	register?:   string
	connection?: string
	panos_restart: {
	}
}
