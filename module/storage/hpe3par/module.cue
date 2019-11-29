package hpe3par

ss_3par_cpg :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	ss_3par_cpg: {
		growth_limit?:      string
		growth_warning?:    string
		state:              string
		growth_increment?:  string
		disk_type?:         string
		domain?:            string
		high_availability?: string
		raid_type?:         string
		secure?:            bool
		set_size?:          int
		cpg_name:           string
	}
}
