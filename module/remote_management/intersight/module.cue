package intersight

intersight_info :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	intersight_info: {

		server_names: [...]

		// Server names to retrieve information from.
		// An empty list will return all servers.
	}
}

intersight_rest_api :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	intersight_rest_api: {

		// The payload for API requests used to modify resources.

		api_body?: {...}

		// Query parameters for the Intersight API query language.

		query_params?: {...}

		// Resource URI being configured related to api_uri.

		resource_path: string

		// If C(present), will verify the resource is present and will create if needed.
		// If C(absent), will verify the resource is absent and will delete if needed.

		state?: string

		// The HTTP method used for update operations.
		// Some Intersight resources require POST operations for modifications.

		update_method?: string
	}
}

wakeonlan :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
