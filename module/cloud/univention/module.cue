package univention

udm_dns_record :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	udm_dns_record: {
		data?:  string
		name:   string
		state?: string
		type:   string
		zone:   string
	}
}

udm_dns_zone :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	udm_dns_zone: {
		interfaces?: string
		refresh?:    string
		state?:      string
		contact?:    string
		mx?:         string
		nameserver?: string
		retry?:      string
		ttl?:        string
		type:        string
		zone:        string
		expire?:     string
	}
}

udm_group :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	udm_group: {
		description?: string
		name:         string
		ou?:          string
		position?:    string
		state?:       string
		subpath?:     string
	}
}

udm_share :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	udm_share: {
		directorymode?:                       string
		name:                                 string
		samba_force_directory_mode?:          string
		samba_postexec?:                      string
		sync?:                                string
		group?:                               string
		samba_hosts_deny?:                    string
		root_squash?:                         string
		samba_csc_policy?:                    string
		samba_writeable?:                     string
		samba_force_group?:                   string
		samba_level_2_oplocks?:               string
		samba_locking?:                       string
		samba_create_mode?:                   string
		samba_valid_users?:                   string
		subtree_checking?:                    string
		writeable?:                           string
		samba_oplocks?:                       string
		samba_public?:                        string
		samba_directory_mode?:                string
		samba_force_directory_security_mode?: string
		samba_strict_locking?:                string
		samba_write_list?:                    string
		samba_force_security_mode?:           string
		nfs_custom_settings?:                 string
		owner?:                               string
		samba_custom_settings?:               string
		samba_force_create_mode?:             string
		samba_security_mode?:                 string
		samba_msdfs_root?:                    string
		samba_name?:                          string
		samba_directory_security_mode?:       string
		samba_dos_filemode?:                  string
		samba_vfs_objects?:                   string
		state?:                               string
		nfs_hosts?:                           string
		samba_block_size?:                    string
		samba_inherit_owner?:                 string
		samba_browseable?:                    string
		samba_hide_unreadable?:               string
		samba_nt_acl_support?:                string
		host?:                                string
		samba_blocking_locks?:                string
		samba_invalid_users?:                 string
		samba_preexec?:                       string
		path?:                                string
		samba_force_user?:                    string
		samba_hosts_allow?:                   string
		samba_inherit_acls?:                  string
		samba_hide_files?:                    string
		ou:                                   string
		samba_fake_oplocks?:                  string
		samba_inherit_permissions?:           string
	}
}

udm_user :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	with_items?: [...string]
	become?:     bool
	name?:       string
	notify?:     string | [...string]
	connection?: string
	udm_user: {
		birthday?:                 string
		home_share?:               string
		lastname?:                 string
		pwd_change_next_login?:    string
		shell?:                    string
		homedrive?:                string
		override_pw_history?:      bool
		phone?:                    string
		city?:                     string
		display_name?:             string
		email?:                    string
		employee_number?:          string
		mail_alternative_address?: string
		mobile_telephone_number?:  string
		override_pw_length?:       bool
		street?:                   string
		unixhome?:                 string
		organisation?:             string
		samba_privileges?:         string
		country?:                  string
		firstname?:                string
		home_telephone_number?:    string
		primary_group?:            string
		title?:                    string
		serviceprovider?:          string
		description?:              string
		home_share_path?:          string
		mail_primary_address?:     string
		position?:                 string
		room_number?:              string
		scriptpath?:               string
		secretary?:                string
		username:                  string
		department_number?:        string
		employee_type?:            string
		gecos?:                    string
		mail_home_server?:         string
		password?:                 string
		state?:                    string
		userexpiry?:               string
		subpath?:                  string
		groups?:                   string
		ou?:                       string
		pager_telephonenumber?:    string
		postcode?:                 string
		profilepath?:              string
		samba_user_workstations?:  string
		sambahome?:                string
		update_password?:          string
	}
}
