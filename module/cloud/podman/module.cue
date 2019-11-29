package podman

podman_image :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	podman_image: {
		force?:          string
		path?:           string
		push?:           string
		push_args?:      string
		username?:       string
		validate_certs?: string
		build?:          string
		name:            string
		pull?:           string
		tag?:            string
		executable?:     string
		state?:          string
		password?:       string
		ca_cert_dir?:    string
		auth_file?:      string
	}
}

podman_image_info :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	podman_image_info: {
		executable?: string
		name?:       string
	}
}

podman_volume_info :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	when?:       string
	connection?: string
	podman_volume_info: {
		executable?: string
		name?:       string
	}
}
