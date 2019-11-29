package kubevirt

kubevirt_cdi_upload :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_cdi_upload: {
		merge_type?: [...]
		path?:                       string
		pvc_name:                    string
		pvc_namespace:               string
		upload_host?:                string
		upload_host_validate_certs?: bool
	}
}

kubevirt_preset :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_preset: {
		namespace: string
		selector?: {...}
		state?: string
		name:   string
	}
}

kubevirt_pvc :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_pvc: {
		annotations?: {...}
		cdi_source?: {...}
		name: string
		selector?: {...}
		labels?: {...}
		size?:         string
		state?:        string
		volume_name?:  string
		wait_timeout?: int
		volume_mode?:  string
		access_modes?: [...]
		force?:    bool
		namespace: string
		resource_definition?: {...}
		storage_class_name?: string
		merge_type?: [...]
		wait?: bool
	}
}

kubevirt_rs :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_rs: {
		state?:    string
		name:      string
		namespace: string
		replicas?: int
		selector: {...}
	}
}

kubevirt_template :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_template: {
		default_network?: {...}
		default_nic?: {...}
		editable?: [...]
		name: string
		parameters?: [...]
		provider_display_name?: string
		default_volume?: {...}
		description?:       string
		documentation_url?: string
		long_description?:  string
		merge_type?: [...]
		objects?: [...]
		default_disk?: {...}
		display_name?: string
		icon_class?:   string
		namespace:     string
		support_url?:  string
		version?:      string
	}
}

kubevirt_vm :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	kubevirt_vm: {
		state?:    string
		template?: string
		template_parameters?: {...}
		datavolumes?: [...]
		ephemeral?: bool
		name:       string
		namespace:  string
	}
}
