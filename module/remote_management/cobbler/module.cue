package cobbler

cobbler_sync :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	cobbler_sync: {

		// The name or IP address of the Cobbler system.

		host?: string

		// The password to log in to Cobbler.

		password: string

		// Port number to be used for REST connection.
		// The default value depends on parameter C(use_ssl).

		port?: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection.

		use_ssl?: bool

		// The username to log in to Cobbler.

		username?: string

		// If C(no), SSL certificates will not be validated.
		// This should only set to C(no) when used on personally controlled sites using self-signed certificates.

		validate_certs?: bool
	}
}

cobbler_system :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	cobbler_system: {

		// A dictionary with system properties.

		properties?: string

		// Sync on changes.
		// Concurrently syncing Cobbler is bound to fail.

		sync?: bool

		// The username to log in to Cobbler.

		username?: string

		// If C(no), SSL certificates will not be validated.
		// This should only set to C(no) when used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// The system name to manage.

		name?: string

		// Port number to be used for REST connection.
		// The default value depends on parameter C(use_ssl).

		port?: string

		// The password to log in to Cobbler.

		password: string

		// Whether the system should be present, absent or a query is made.

		state?: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection.

		use_ssl?: bool

		// The name or IP address of the Cobbler system.

		host?: string

		// A list of dictionaries containing interface options.

		interfaces?: string
	}
}

wakeonlan :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
