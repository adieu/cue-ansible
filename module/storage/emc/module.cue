package emc

emc_vnx_sg_member :: {
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	become?: bool
	emc_vnx_sg_member: {
		lunid:  string
		name:   string
		state?: string
	}
}
