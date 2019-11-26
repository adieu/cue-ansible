package ansible

module: hpilo_boot: {
	module:            "hpilo_boot"
	version_added:     "2.3"
	author:            "Dag Wieers (@dagwieers)"
	short_description: "Boot system using specific media through HP iLO interface"
	description: [
		"This module boots a system through its HP iLO interface. The boot media can be one of: cdrom, floppy, hdd, network or usb.",
		"This module requires the hpilo python module.",
	]
	options: {
		host: {
			description: [
				"The HP iLO hostname/address that is linked to the physical system.",
			]
			required: true
		}
		login: {
			description: [
				"The login name to authenticate to the HP iLO interface.",
			]
			default: "Administrator"
		}
		password: {
			description: [
				"The password to authenticate to the HP iLO interface.",
			]
			default: "admin"
		}
		media: {
			description: [
				"The boot media to boot the system from",
			]
			choices: ["cdrom", "floppy", "hdd", "network", "normal", "usb"]
		}
		image: description: [
			"The URL of a cdrom, floppy or usb boot media image. protocol://username:password@hostname:port/filename",
			"protocol is either 'http' or 'https'",
			"username:password is optional",
			"port is optional",
		]
		state: {
			description: [
				"The state of the boot media.",
				"no_boot: Do not boot from the device",
				"boot_once: Boot from the device once and then notthereafter",
				"boot_always: Boot from the device each time the server is rebooted",
				"connect: Connect the virtual media device and set to boot_always",
				"disconnect: Disconnects the virtual media device and set to no_boot",
				"poweroff: Power off the server",
			]
			default: "boot_once"
			choices: ["boot_always", "boot_once", "connect", "disconnect", "no_boot", "poweroff"]
		}
		force: {
			description: [
				"Whether to force a reboot (even when the system is already booted).",
				"As a safeguard, without force, hpilo_boot will refuse to reboot a server that is already running.",
			]
			default: false
			type:    "bool"
		}
		ssl_version: {
			description: [
				"Change the ssl_version used.",
			]
			default: "TLSv1"
			choices: ["SSLv3", "SSLv23", "TLSv1", "TLSv1_1", "TLSv1_2"]
			version_added: "2.4"
		}
	}
	requirements: [
		"python-hpilo",
	]
	notes: [
		"To use a USB key image you need to specify floppy as boot media.",
		"This module ought to be run from a system that can access the HP iLO interface directly, either by using C(local_action) or using C(delegate_to).",
	]
}
