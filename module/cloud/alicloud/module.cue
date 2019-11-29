package alicloud

ali_instance :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	connection?: string
	become?:     bool
	ali_instance: {
		user_data?:               string
		instance_charge_type?:    string
		security_groups?:         string
		host_name?:               string
		image_id?:                string
		instance_name?:           string
		key_name?:                string
		system_disk_description?: string
		allocate_public_ip?:      bool
		period?:                  string
		state?:                   string
		description?:             string
		instance_ids?:            string
		system_disk_name?:        string
		vswitch_id?:              string
		max_bandwidth_out?:       string
		auto_renew?:              bool
		auto_renew_period?:       string
		count?:                   string
		force?:                   bool
		instance_type?:           string
		internet_charge_type?:    string
		max_bandwidth_in?:        string
		password?:                string
		system_disk_category?:    string
		availability_zone?:       string
		count_tag?:               string
		instance_tags?:           string
		system_disk_size?:        string
	}
}

ali_instance_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	connection?: string
	become?:     bool
	ali_instance_info: {
		availability_zone?: string
		instance_ids?:      string
		instance_names?:    string
		instance_tags?:     string
	}
}
