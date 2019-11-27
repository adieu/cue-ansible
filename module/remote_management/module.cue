package remote_management

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
