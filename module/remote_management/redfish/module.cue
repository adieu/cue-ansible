package redfish

redfish_command :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	redfish_command: {
		command: [...]
		new_username?:    string
		password:         string
		timeout?:         int
		username:         string
		boot_next?:       string
		resource_id?:     string
		roleid?:          string
		uefi_target?:     string
		baseuri:          string
		category:         string
		update_username?: string
		account_properties?: {...}
		bootdevice?:   string
		id?:           string
		new_password?: string
	}
}

redfish_config :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	redfish_config: {
		network_protocols?: {...}
		password: string
		timeout?: int
		username: string
		baseuri:  string
		bios_attributes?: {...}
		boot_order?: [...]
		command: [...]
		resource_id?:          string
		bios_attribute_name?:  string
		bios_attribute_value?: string
		category:              string
	}
}

redfish_info :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	redfish_info: {
		category?: [...]
		command?: [...]
		password: string
		timeout?: int
		username: string
		baseuri:  string
	}
}

wakeonlan :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}

idrac_redfish_command :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	idrac_redfish_command: {
		baseuri:  string
		category: string
		command: [...]
		password:     string
		resource_id?: string
		timeout?:     int
		username:     string
	}
}

idrac_redfish_config :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	idrac_redfish_config: {
		manager_attribute_value?: string
		manager_attributes?: {...}
		password:     string
		resource_id?: string
		baseuri:      string
		category:     string
		command: [...]
		manager_attribute_name?: string
		timeout?:                int
		username:                string
	}
}

idrac_redfish_info :: {
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	idrac_redfish_info: {
		username: string
		baseuri:  string
		category: string
		command: [...]
		password: string
		timeout?: int
	}
}
