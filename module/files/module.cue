package files

find :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	find: {
		patterns?: [...]
		recurse?:   bool
		use_regex?: bool
		age?:       string
		depth?:     int
		excludes?: [...]
		file_type?: string
		paths: [...]
		get_checksum?: bool
		hidden?:       bool
		age_stamp?:    string
		contains?:     string
		size?:         string
		follow?:       bool
	}
}

copy :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	copy: {
		directory_mode?: _
		follow?:         bool
		force?:          bool
		local_follow?:   bool
		mode?:           string
		src?:            string
		backup?:         bool
		content?:        string
		remote_src?:     bool
		checksum?:       string
		dest:            string
		owner?:          string
		group?:          string
	}
}

fetch :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	fetch: {
		src:                string
		validate_checksum?: bool
		dest:               string
		fail_on_missing?:   bool
		flat?:              bool
	}
}

read_csv :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	read_csv: {
		path:              string
		skipinitialspace?: bool
		strict?:           bool
		unique?:           bool
		delimiter?:        string
		dialect?:          string
		fieldnames?: [...]
		key?: string
	}
}

xml :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	xml: {
		insertbefore?: bool
		pretty_print?: bool
		set_children?: [...]
		state?:            string
		strip_cdata_tags?: bool
		add_children?: [...]
		input_type?:  string
		path:         string
		count?:       bool
		insertafter?: bool
		namespaces?: {...}
		print_match?: bool
		backup?:      bool
		content?:     string
		xmlstring:    string
		xpath?:       string
		attribute?:   _
		value?:       _
	}
}

assemble :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	assemble: {
		delimiter?:     string
		dest:           string
		ignore_hidden?: bool
		regexp?:        string
		remote_src?:    bool
		src:            string
		validate?:      string
		backup?:        bool
	}
}

iso_extract :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	iso_extract: {
		dest:        string
		executable?: string
		files: [...]
		force?: bool
		image:  string
	}
}

patch :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	patch: {
		dest?:       string
		remote_src?: bool
		src:         string
		state?:      string
		strip?:      int
		backup?:     bool
		basedir?:    string
		binary?:     bool
	}
}

stat :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	stat: {
		checksum_algorithm?: string
		follow?:             bool
		get_attributes?:     bool
		get_checksum?:       bool
		get_mime?:           bool
		path:                string
	}
}

synchronize :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	synchronize: {
		dirs?:            bool
		recursive?:       bool
		set_remote_user?: bool
		times?:           bool
		checksum?:        bool
		compress?:        bool
		existing_only?:   bool
		link_dest?: [...]
		links?:       bool
		mode?:        string
		owner?:       bool
		private_key?: string
		rsync_opts?: [...]
		use_ssh_args?:  bool
		verify_host?:   bool
		archive?:       bool
		delete?:        bool
		dest_port?:     int
		group?:         bool
		partial?:       bool
		perms?:         bool
		copy_links?:    bool
		dest:           string
		rsync_path?:    string
		rsync_timeout?: int
		src:            string
	}
}

tempfile :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	tempfile: {
		suffix?: string
		path?:   string
		prefix?: string
		state?:  string
	}
}

template :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	template: {
		follow?: bool
	}
}

xattr :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	xattr: {
		follow?:    bool
		key?:       string
		namespace?: string
		path:       string
		state?:     string
		value?:     string
	}
}

archive :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	archive: {
		dest?: string
		exclude_path?: [...]
		force_archive?: bool
		format?:        string
		path: [...]
		remove?: bool
	}
}

blockinfile :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	blockinfile: {
		block?:        string
		create?:       bool
		insertbefore?: string
		marker_begin?: string
		marker_end?:   string
		state?:        string
		backup?:       bool
		insertafter?:  string
		marker?:       string
		path:          string
	}
}

file :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	file: {
		access_time_format?:       string
		follow?:                   bool
		force?:                    bool
		path:                      string
		state?:                    string
		access_time?:              string
		modification_time?:        string
		modification_time_format?: string
		recurse?:                  bool
		src?:                      string
	}
}

ini_file :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	ini_file: {
		backup?:          bool
		option?:          string
		section:          string
		state?:           string
		value?:           string
		allow_no_value?:  bool
		create?:          bool
		no_extra_spaces?: bool
		path:             string
	}
}

lineinfile :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	lineinfile: {
		backup?:       bool
		others?:       string
		path:          string
		regexp?:       string
		backrefs?:     bool
		create?:       bool
		firstmatch?:   bool
		insertafter?:  string
		insertbefore?: string
		line?:         string
		state?:        string
	}
}

replace :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	replace: {
		others?:   string
		path:      string
		regexp:    string
		replace?:  string
		after?:    string
		backup?:   bool
		before?:   string
		encoding?: string
	}
}

unarchive :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	unarchive: {
		list_files?: bool
		remote_src?: bool
		src:         string
		extra_opts?: [...]
		keep_newer?:     bool
		validate_certs?: bool
		copy?:           bool
		creates?:        string
		dest:            string
		exclude?: [...]
	}
}

acl :: {
	register?: string
	when?:     string
	with_items?: [...string]
	name?: string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	vars?: {...}
	acl: {
		recalculate_mask?: string
		recursive?:        bool
		state?:            string
		etype?:            string
		follow?:           bool
		path:              string
		permissions?:      string
		use_nfsv4_acls?:   bool
		default?:          bool
		entity?:           string
		entry?:            string
	}
}
