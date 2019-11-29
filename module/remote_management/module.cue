package remote_management

wakeonlan :: {
	name?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?: string
	notify?:   string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	wakeonlan: {
		port?:      string
		broadcast?: string
		mac:        string
	}
}
