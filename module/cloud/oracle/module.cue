package oracle

oci_vcn :: {
	become?: bool
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	oci_vcn: {
		vcn_id?:         string
		cidr_block?:     string
		compartment_id?: string
		display_name?:   string
		dns_label?:      string
		state?:          string
	}
}
