package lxc

lxc_container :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	lxc_container: {
		backing_store?:       string
		config?:              string
		container_log_level?: string
		lxc_path?:            string
		thinpool?:            string
		vg_name?:             string
		archive_compression?: string
		clone_name?:          string
		container_command?:   string
		fs_type?:             string
		name:                 string
		state?:               string
		zfs_root?:            string
		archive?:             bool
		directory?:           string
		fs_size?:             string
		lv_name?:             string
		template?:            string
		archive_path?:        string
		clone_snapshot?:      bool
		container_config?:    string
		container_log?:       bool
		template_options?:    string
	}
}
