package xenserver

xenserver_guest :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	xenserver_guest: {
		custom_params?: [...]
		linked_clone?: bool
		name:          string
		state?:        string
		name_desc?:    string
		networks?: [...]
		template_uuid?: string
		disks?: [...]
		force?: bool
		hardware?: {...}
		is_template?:         bool
		uuid?:                string
		template?:            string
		wait_for_ip_address?: bool
		cdrom?: {...}
		folder?:               string
		home_server?:          string
		state_change_timeout?: int
	}
}

xenserver_guest_info :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	xenserver_guest_info: {
		name:  string
		uuid?: string
	}
}

xenserver_guest_powerstate :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	become?: bool
	when?:   string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	xenserver_guest_powerstate: {
		uuid?:                 string
		wait_for_ip_address?:  bool
		name:                  string
		state?:                string
		state_change_timeout?: int
	}
}
