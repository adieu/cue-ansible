package imc

imc_rest :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	imc_rest: {

		// If C(no), SSL certificates will not be validated.
		// This should only set to C(no) used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// When used instead of C(path), sets the content of the API requests directly.
		// This may be convenient to template simple requests, for anything complex use the M(template) module.
		// You can collate multiple IMC XML fragments and they will be processed sequentially in a single stream, the Cisco IMC output is subsequently merged.
		// Parameter C(content) is mutual exclusive with parameter C(path).

		content?: string

		// IP Address or hostname of Cisco IMC, resolvable by Ansible control host.

		hostname: string

		// The password to use for authentication.

		password?: string

		// Name of the absolute path of the filename that includes the body of the http request being sent to the Cisco IMC REST API.
		// Parameter C(path) is mutual exclusive with parameter C(content).

		path?: string

		// Connection protocol to use.

		protocol?: string

		// The socket level timeout in seconds.
		// This is the time that every single connection (every fragment) can spend. If this C(timeout) is reached, the module will fail with a C(Connection failure) indicating that C(The read operation timed out).

		timeout?: string

		// Username used to login to the switch.

		username?: string
	}
}

wakeonlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
