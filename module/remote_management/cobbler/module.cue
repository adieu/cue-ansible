package cobbler

cobbler_sync :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	cobbler_sync: {

		// The username to log in to Cobbler.

		username?: string

		// If C(no), SSL certificates will not be validated.
		// This should only set to C(no) when used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// The name or IP address of the Cobbler system.

		host?: string

		// The password to log in to Cobbler.

		password: string

		// Port number to be used for REST connection.
		// The default value depends on parameter C(use_ssl).

		port?: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection.

		use_ssl?: bool
	}
}

cobbler_system :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	cobbler_system: {

		// A list of dictionaries containing interface options.

		interfaces?: string

		// Port number to be used for REST connection.
		// The default value depends on parameter C(use_ssl).

		port?: string

		// Sync on changes.
		// Concurrently syncing Cobbler is bound to fail.

		sync?: bool

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection.

		use_ssl?: bool

		// If C(no), SSL certificates will not be validated.
		// This should only set to C(no) when used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// The username to log in to Cobbler.

		username?: string

		// The name or IP address of the Cobbler system.

		host?: string

		// The system name to manage.

		name?: string

		// The password to log in to Cobbler.

		password: string

		// A dictionary with system properties.

		properties?: string

		// Whether the system should be present, absent or a query is made.

		state?: string
	}
}

wakeonlan :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
