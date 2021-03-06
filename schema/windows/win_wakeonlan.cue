package ansible

module: win_wakeonlan: {
	module:            "win_wakeonlan"
	version_added:     "2.4"
	short_description: "Send a magic Wake-on-LAN (WoL) broadcast packet"
	description: [
		"The C(win_wakeonlan) module sends magic Wake-on-LAN (WoL) broadcast packets.",
		"For non-Windows targets, use the M(wakeonlan) module instead.",
	]
	options: {
		mac: {
			description: [
				"MAC address to send Wake-on-LAN broadcast packet for.",
			]
			type:     "str"
			required: true
		}
		broadcast: {
			description: [
				"Network broadcast address to use for broadcasting magic Wake-on-LAN packet.",
			]
			type:    "str"
			default: "255.255.255.255"
		}
		port: {
			description: [
				"UDP port to use for magic Wake-on-LAN packet.",
			]
			type:    "int"
			default: 7
		}
	}
	todo: [
		"Does not have SecureOn password support",
	]
	notes: [
		"This module sends a magic packet, without knowing whether it worked. It always report a change.",
		"Only works if the target system was properly configured for Wake-on-LAN (in the BIOS and/or the OS).",
		"Some BIOSes have a different (configurable) Wake-on-LAN boot order (i.e. PXE first).",
	]
	seealso: [{
		module: "wakeonlan"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
