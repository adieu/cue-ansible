package edgeswitch

edgeswitch_facts :: {
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	with_items?: [...string]
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	edgeswitch_facts: {
		gather_subset?: string
	}
}

edgeswitch_vlan :: {
	vars?: {...}
	tags?: [...string]
	connection?: string
	become?:     bool
	with_items?: [...string]
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	edgeswitch_vlan: {
		name?:                string
		purge?:               bool
		state?:               string
		tagged_interfaces?:   string
		aggregate?:           string
		auto_untag?:          bool
		excluded_interfaces?: string
		vlan_id?:             string
		auto_exclude?:        bool
		auto_tag?:            bool
		untagged_interfaces?: string
	}
}
