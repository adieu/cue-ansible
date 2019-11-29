package fortianalyzer

faz_device :: {
	register?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	faz_device: {
		device_unique_name?: string
		faz_quota?:          string
		os_ver:              string
		platform_str?:       string
		mode?:               string
		os_minor_vers:       string
		adom:                string
		device_ip?:          string
		device_password?:    string
		device_serial?:      string
		device_username?:    string
		mgmt_mode:           string
		os_type:             string
	}
}
