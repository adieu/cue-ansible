package ipa

ipa_sudocmdgroup :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_sudocmdgroup: {
		cn:           string
		description?: string
		state?:       string
		sudocmd?:     string
	}
}

ipa_user :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_user: {
		givenname?:             string
		sn?:                    string
		sshpubkey?:             string
		title?:                 string
		uid:                    string
		displayname?:           string
		state?:                 string
		uidnumber?:             string
		update_password?:       string
		telephonenumber?:       string
		gidnumber?:             string
		krbpasswordexpiration?: string
		loginshell?:            string
		mail?:                  string
		password?:              string
	}
}

ipa_vault :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_vault: {
		service?:           string
		state?:             string
		username?:          string
		validate_certs?:    bool
		ipavaultpublickey?: string
		replace?:           bool
		ipavaultsalt?:      string
		ipavaulttype:       string
		cn:                 string
		description?:       string
	}
}

ipa_dnsrecord :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_dnsrecord: {
		record_name:  string
		record_ttl?:  string
		record_type?: string
		record_value: string
		state?:       string
		zone_name:    string
	}
}

ipa_dnszone :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_dnszone: {
		zone_name:      string
		dynamicupdate?: string
		state?:         string
	}
}

ipa_hostgroup :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_hostgroup: {
		host?:        string
		hostgroup?:   string
		state?:       string
		cn:           string
		description?: string
	}
}

ipa_subca :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_subca: {
		state?:        string
		subca_desc:    string
		subca_name:    string
		subca_subject: string
	}
}

ipa_group :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_group: {
		external?:    bool
		gidnumber?:   string
		group?:       string
		nonposix?:    bool
		state?:       string
		user?:        string
		cn:           string
		description?: string
	}
}

onepassword_info :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	onepassword_info: {
		cli_path?: string
		search_terms: [...]
		auto_login?: {...}
	}
}

ipa_hbacrule :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_hbacrule: {
		host?:               string
		service?:            string
		servicecategory?:    string
		sourcehostcategory?: string
		usergroup?:          string
		cn:                  string
		hostcategory?:       string
		hostgroup?:          string
		sourcehostgroup?:    string
		user?:               string
		servicegroup?:       string
		sourcehost?:         string
		usercategory?:       string
		description?:        string
		state?:              string
	}
}

ipa_host :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_host: {
		ip_address?:           string
		ns_os_version?:        string
		fqdn:                  string
		mac_address?:          string
		ns_hardware_platform?: string
		ns_host_location?:     string
		random_password?:      bool
		state?:                string
		description?:          string
		force?:                bool
		update_dns?:           bool
		user_certificate?:     string
	}
}

ipa_sudocmd :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_sudocmd: {
		description?: string
		state?:       string
		sudocmd:      string
	}
}

ipa_config :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_config: {
		ipadefaultemaildomain?: string
		ipadefaultloginshell?:  string
	}
}

ipa_role :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_role: {
		privilege?:   string
		service?:     string
		cn:           string
		description?: string
		group?:       string
		host?:        string
		hostgroup?:   string
		state?:       string
		user?:        string
	}
}

ipa_service :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_service: {
		krbcanonicalname: string
		state?:           string
		force?:           bool
		hosts?:           string
	}
}

ipa_sudorule :: {
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	become?:     bool
	ipa_sudorule: {
		cmdcategory?:        string
		hostcategory?:       string
		usercategory?:       string
		usergroup?:          string
		description?:        string
		runasgroupcategory?: string
		runasusercategory?:  string
		state?:              string
		user?:               string
		hostgroup?:          string
		cmd?:                string
		cn:                  string
		host?:               string
		sudoopt?:            string
	}
}
