package ipmi

ipmi_boot :: {
	become?: bool
	name?:   string
	tags?: [...string]
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	ipmi_boot: {
		name:        string
		password:    string
		persistent?: bool
		port?:       string
		state?:      string
		uefiboot?:   bool
		user:        string
		bootdev:     string
	}
}

ipmi_power :: {
	become?: bool
	name?:   string
	tags?: [...string]
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	ipmi_power: {
		timeout?: string
		user:     string
		name:     string
		password: string
		port?:    string
		state:    string
	}
}

wakeonlan :: {
	become?: bool
	name?:   string
	tags?: [...string]
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
