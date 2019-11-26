package ansible

module: wakeonlan: {
	module:            "wakeonlan"
	version_added:     "2.2"
	short_description: "Send a magic Wake-on-LAN (WoL) broadcast packet"
	description: [
		"The C(wakeonlan) module sends magic Wake-on-LAN (WoL) broadcast packets.",
	]
	options: {
		mac: {
			description: [
				"MAC address to send Wake-on-LAN broadcast packet for.",
			]
			required: true
		}
		broadcast: {
			description: [
				"Network broadcast address to use for broadcasting magic Wake-on-LAN packet.",
			]
			default: "255.255.255.255"
		}
		port: {
			description: [
				"UDP port to use for magic Wake-on-LAN packet.",
			]
			default: 7
		}
	}
	todo: [
		"Add arping support to check whether the system is up (before and after)",
		"Enable check-mode support (when we have arping support)",
		"Does not have SecureOn password support",
	]
	notes: [
		"This module sends a magic packet, without knowing whether it worked",
		"Only works if the target system was properly configured for Wake-on-LAN (in the BIOS and/or the OS)",
		"Some BIOSes have a different (configurable) Wake-on-LAN boot order (i.e. PXE first).",
	]
	seealso: [{
		module: "win_wakeonlan"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
