package stacki

wakeonlan :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}

stacki_host :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	stacki_host: {

		// Username for authenticating with Stacki API, but if not specified, the environment variable C(stacki_user) is used instead.

		stacki_user: string

		// Set value to True to force node into install state if it already exists in stacki.

		force_install?: bool

		// Name of the host to be added to Stacki.

		name: string

		// Name of the primary network interface.

		prim_intf?: string

		// IP Address for the primary network interface.

		prim_intf_ip?: string

		// MAC Address for the primary PXE boot network interface.

		prim_intf_mac?: string

		// URL for the Stacki API Endpoint.

		stacki_endpoint: string

		// Password for authenticating with Stacki API, but if not specified, the environment variable C(stacki_password) is used instead.

		stacki_password: string
	}
}
