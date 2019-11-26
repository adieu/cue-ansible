package ansible

module: cpm_serial_port_config: {
	module:            "cpm_serial_port_config"
	version_added:     "2.9"
	author:            "Western Telematic Inc. (@wtinetworkgear)"
	short_description: "Set Serial port parameters in WTI OOB and PDU devices"
	description: [
		"Set Serial port parameters in WTI OOB and PDU devices",
	]
	options: {
		cpm_url: {
			description: [
				"This is the URL of the WTI device to send the module.",
			]
			required: true
		}
		cpm_username: {
			description: [
				"This is the Username of the WTI device to send the module.",
			]
			required: true
		}
		cpm_password: {
			description: [
				"This is the Password of the WTI device to send the module.",
			]
			required: true
		}
		use_https: {
			description: [
				"Designates to use an https connection or http connection.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		validate_certs: {
			description: [
				"If false, SSL certificates will not be validated. This should only be used",
				"on personally controlled sites using self-signed certificates.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		use_proxy: {
			description: "Flag to control if the lookup will observe HTTP proxy environment variables when present."
			required:    false
			type:        "bool"
			default:     false
		}
		port: {
			description: [
				"This is the port number that is getting the action performed on.",
			]
			required: true
			type:     "int"
		}
		portname: {
			description: [
				"This is the Name of the Port that is displayed.",
			]
			required: false
		}
		baud: {
			description: [
				"This is the baud rate to assign to the port.",
				"0=300, 1=1200, 2=2400, 3=4800, 4=9600, 5=19200, 6=38400, 7=57600, 8=115200, 9=230400, 10=460800",
			]
			required: false
			choices: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		}
		handshake: {
			description: [
				"This is the handshake to assign to the port, 0=None, 1=XON/XOFF, 2=RTS/CTS, 3=Both.",
			]
			required: false
			choices: [0, 1, 2, 3]
		}
		stopbits: {
			description: [
				"This is the stop bits to assign to the port, 0=1 Stop Bit, 1=2 Stop Bit.",
			]
			required: false
			choices: [0, 1]
		}
		parity: {
			description: [
				"This is the parity to assign to the port, 0=7-None, 1=7-Even, 2=7-Odd, 3=8-None, 4=8-Even, 5=8-Odd.",
			]
			required: false
			choices: [0, 1, 2, 3, 4, 5]
		}
		mode: {
			description: [
				"This is the port mode to assign to the port, 0=Any-to-Any. 1=Passive, 2=Buffer, 3=Modem, 4=ModemPPP.",
			]
			required: false
			choices: [0, 1, 2, 3, 4]
		}
		cmd: {
			description: [
				"This is the Admin Mode to assign to the port, 0=Deny, 1=Permit.",
			]
			required: false
			choices: [0, 1]
		}
		seq: {
			description: [
				"This is the type of Sequence Disconnect to assign to the port, 0=Three Characters (before and after), 1=One Character Only, 2=Off",
			]
			required: false
			choices: [1, 2, 3]
		}
		tout: {
			description: [
				"This is the Port Activity Timeout to assign to the port, 0=Off, 1=5 Min, 2=15 Min, 3=30 Min, 4=90 Min, 5=1 Min.",
			]
			required: false
			choices: [0, 1, 2, 3, 4, 5]
		}
		echo: {
			description:
					"-This is the command echo parameter to assign to the port, 0=Off, 1=On"
			required: false
		}
		break_allow: {
			description: [
				"This is if the break character is allowed to be passed through the port, 0=Off, 1=On",
			]
			required: false
		}
		logoff: {
			description: [
				"This is the logout character to assign to the port",
				"If preceded by a ^ character, the sequence will be a control character. Used if seq is set to 0 or 1",
			]
			required: false
		}
	}
	notes: ["Use C(groups/cpm) in C(module_defaults) to set common options used between CPM modules."]
}
