package memset

memset_dns_reload :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_dns_reload: {

		// The API key obtained from the Memset control panel.

		api_key: string

		// Boolean value, if set will poll the reload job's status and return when the job has completed (unless the 30 second timeout is reached first). If the timeout is reached then the task will not be marked as failed, but stderr will indicate that the polling failed.

		poll?: bool
	}
}

memset_memstore_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_memstore_info: {

		// The Memstore product name (i.e. C(mstestyaa1)).

		name: string

		// The API key obtained from the Memset control panel.

		api_key: string
	}
}

memset_server_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_server_info: {

		// The API key obtained from the Memset control panel.

		api_key: string

		// The server product name (i.e. C(testyaa1)).

		name: string
	}
}

memset_zone :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone: {

		// The API key obtained from the Memset control panel.

		api_key: string

		// Forces deletion of a zone and all zone domains/zone records it contains.

		force?: bool

		// The zone nickname; usually the same as the main domain. Ensure this value has at most 250 characters.

		name: string

		// Indicates desired state of resource.

		state: string

		// The default TTL for all records created in the zone. This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_create).

		ttl?: string
	}
}

memset_zone_domain :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone_domain: {

		// The API key obtained from the Memset control panel.

		api_key: string

		// The zone domain name. Ensure this value has at most 250 characters.

		domain: string

		// Indicates desired state of resource.

		state?: string

		// The zone to add the domain to (this must already exist).

		zone: string
	}
}

memset_zone_record :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	memset_zone_record: {

		// The API key obtained from the Memset control panel.

		api_key: string

		// The subdomain to create.

		record?: string

		// Indicates desired state of resource.

		state?: string

		// The record's TTL in seconds (will inherit zone's TTL if not explicitly set). This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_record_create).

		ttl?: string

		// The name of the zone to which to add the record to.

		zone: string

		// The address for this record (can be IP or text string depending on record type).

		address: string

		// C(SRV) and C(TXT) record priority, in the range 0 > 999 (inclusive).

		priority?: string

		// If set then the current domain is added onto the address field for C(CNAME), C(MX), C(NS) and C(SRV)record types.

		relative?: bool

		// The type of DNS record to create.

		type: string
	}
}
