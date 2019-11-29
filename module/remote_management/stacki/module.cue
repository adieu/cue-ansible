package stacki

stacki_host :: {
	register?: string
	vars?: {...}
	when?: string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	stacki_host: {
		stacki_endpoint: string
		stacki_password: string
		stacki_user:     string
		force_install?:  bool
		name:            string
		prim_intf?:      string
		prim_intf_ip?:   string
		prim_intf_mac?:  string
	}
}

wakeonlan :: {
	register?: string
	vars?: {...}
	when?: string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	wakeonlan: {
		port?:      string
		broadcast?: string
		mac:        string
	}
}
