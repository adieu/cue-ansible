package ipmi

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

ipmi_boot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ipmi_boot: {

		// Password to connect to the BMC.

		password: string

		// If set, ask that system firmware uses this device beyond next boot. Be aware many systems do not honor this.

		persistent?: bool

		// Remote RMCP port.

		port?: string

		// Whether to ensure that boot devices is desired.

		state?: string

		// If set, request UEFI boot explicitly. Strictly speaking, the spec suggests that if not set, the system should BIOS boot and offers no "don't care" option. In practice, this flag not being set does not preclude UEFI boot on any system I've encountered.

		uefiboot?: bool

		// Username to use to connect to the BMC.

		user: string

		// Set boot device to use on next reboot

		bootdev: string

		// Hostname or ip address of the BMC.

		name: string
	}
}

ipmi_power :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ipmi_power: {

		// Remote RMCP port.

		port?: string

		// Whether to ensure that the machine in desired state.

		state: string

		// Maximum number of seconds before interrupt request.

		timeout?: string

		// Username to use to connect to the BMC.

		user: string

		// Hostname or ip address of the BMC.

		name: string

		// Password to connect to the BMC.

		password: string
	}
}
