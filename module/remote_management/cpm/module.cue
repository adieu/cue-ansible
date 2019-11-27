package cpm

cpm_plugconfig :: {

	// Prioritizes which plug gets its state changed first. The lower the number the higher the priority. Valid value can from 1 to the maximum number of plugs of the WTI unit.

	plug_bootpriority?: string

	// This is the plug number that is to be manipulated For the getplugconfig command, the plug_id 'all' will return the status of all the plugs the user has rights to access.

	plug_id: string

	// The new name of the Plug.

	plug_name?: string

	// Designates to use an https connection or http connection.

	use_https?: bool

	// Flag to control if the lookup will observe HTTP proxy environment variables when present.

	use_proxy?: bool

	// This is the Action to send the module.

	cpm_action: string

	// This is the URL of the WTI device to send the module.

	cpm_url: string

	// This is the Username of the WTI device to send the module.

	cpm_username?: string

	// If false, SSL certificates will not be validated. This should only be used
	// on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// This is the Password of the WTI device to send the module.

	cpm_password?: string

	// On a reboot command, this is the time when a plug will turn on power, after it has been turned off. 0='0.5 Secs', 1='1 Sec', 2='2 Sec', 3='5 Sec', 4='15 Sec', 5='30 Sec', 6='1 Min', 7='2 Mins', 8='3 Mins', 9='5 Mins'.

	plug_bootdelay?: string

	// What the Plugs default state is when the device starts. 0 - Off, 1 - On.

	plug_default?: string
}

cpm_plugcontrol :: {

	// This is the Action to send the module.

	cpm_action: string

	// This is the Password of the WTI device to send the module.

	cpm_password?: string

	// This is the URL of the WTI device  to send the module.

	cpm_url: string

	// This is the Username of the WTI device to send the module.

	cpm_username?: string

	// This is what action to take on the plug.

	plug_state?: string

	// Flag to control if the lookup will observe HTTP proxy environment variables when present.

	use_proxy?: bool

	// This is the plug number or the plug name that is to be manipulated For the plugget command, the plug_id 'all' will return the status of all the plugs the user has rights to access.

	plug_id: string

	// Designates to use an https connection or http connection.

	use_https?: bool

	// If false, SSL certificates will not be validated. This should only be used
	// on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

cpm_serial_port_config :: {

	// This is the handshake to assign to the port, 0=None, 1=XON/XOFF, 2=RTS/CTS, 3=Both.

	handshake?: string

	// This is the port number that is getting the action performed on.

	port: int

	// This is the Name of the Port that is displayed.

	portname?: string

	// This is the Port Activity Timeout to assign to the port, 0=Off, 1=5 Min, 2=15 Min, 3=30 Min, 4=90 Min, 5=1 Min.

	tout?: string

	// This is the logout character to assign to the port
	// If preceded by a ^ character, the sequence will be a control character. Used if seq is set to 0 or 1

	logoff?: string

	// This is the port mode to assign to the port, 0=Any-to-Any. 1=Passive, 2=Buffer, 3=Modem, 4=ModemPPP.

	mode?: string

	// This is the type of Sequence Disconnect to assign to the port, 0=Three Characters (before and after), 1=One Character Only, 2=Off

	seq?: string

	// This is the stop bits to assign to the port, 0=1 Stop Bit, 1=2 Stop Bit.

	stopbits?: string

	// Flag to control if the lookup will observe HTTP proxy environment variables when present.

	use_proxy?: bool

	// If false, SSL certificates will not be validated. This should only be used
	// on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// This is the baud rate to assign to the port.
	// 0=300, 1=1200, 2=2400, 3=4800, 4=9600, 5=19200, 6=38400, 7=57600, 8=115200, 9=230400, 10=460800

	baud?: string

	// This is the Admin Mode to assign to the port, 0=Deny, 1=Permit.

	cmd?: string

	// This is the Password of the WTI device to send the module.

	cpm_password: string

	// This is the URL of the WTI device to send the module.

	cpm_url: string

	// This is the Username of the WTI device to send the module.

	cpm_username: string

	// Designates to use an https connection or http connection.

	use_https?: bool

	// This is if the break character is allowed to be passed through the port, 0=Off, 1=On

	break_allow?: string

	// -This is the command echo parameter to assign to the port, 0=Off, 1=On

	echo?: string

	// This is the parity to assign to the port, 0=7-None, 1=7-Even, 2=7-Odd, 3=8-None, 4=8-Even, 5=8-Odd.

	parity?: string
}

cpm_serial_port_info :: {

	// This is the Username of the WTI device to send the module.

	cpm_username: string

	// This is the serial port number that is getting retrieved. It can include a single port number, multiple port numbers separated by commas, a list of port numbers, or an '*' character for all ports.

	port: [..._]

	// Designates to use an https connection or http connection.

	use_https?: bool

	// Flag to control if the lookup will observe HTTP proxy environment variables when present.

	use_proxy?: bool

	// If false, SSL certificates will not be validated. This should only be used
	// on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// This is the Password of the WTI device to send the module.

	cpm_password: string

	// This is the URL of the WTI device to send the module.

	cpm_url: string
}

cpm_user :: {

	// This is the Basic Authentication Username of the WTI device to send the module.

	cpm_username: string

	// If the user has access to the WTI device via RESTful APIs
	// 0 No , 1 Yes

	user_accessapi?: string

	// This is the access level that needs to be create/modified/deleted
	// 0 View, 1 User, 2 SuperUser, 3 Administrator

	user_accesslevel?: string

	// If the user has access to the WTI device via Serial ports
	// 0 No , 1 Yes

	user_accessserial?: string

	// If the user has access to the WTI device via SSH
	// 0 No , 1 Yes

	user_accessssh?: string

	// This is the User Password that needs to be create/modified/deleted
	// If the user is being Created this parameter is required

	user_pass?: string

	// This is the URL of the WTI device to send the module.

	cpm_url: string

	// If the user has ability to initiate Outbound connection
	// 0 No , 1 Yes

	user_accessoutbound?: string

	// This is the User Name that needs to be create/modified/deleted

	user_name: string

	// If AccessLevel is lower than Administrator, which ports the user has access

	user_portaccess?: string

	// This is the Action to send the module.

	cpm_action: string

	// This is the Basic Authentication Password of the WTI device to send the module.

	cpm_password: string

	// Designates to use an https connection or http connection.

	use_https?: bool

	// Flag to control if the lookup will observe HTTP proxy environment variables when present.

	use_proxy?: bool

	// If the user has ability to monitor connection sessions
	// 0 No , 1 Yes

	user_accessmonitor?: string

	// This is the Call Back phone number used for POTS modem connections

	user_callbackphone?: string

	// If the user has access to the WTI device via Web
	// 0 No , 1 Yes

	user_accessweb?: string

	// If AccessLevel is lower than Administrator, which Groups the user has access

	user_groupaccess?: string

	// If AccessLevel is lower than Administrator, which plugs the user has access

	user_plugaccess?: string

	// If false, SSL certificates will not be validated. This should only be used
	// on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

wakeonlan :: {

	// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

	broadcast?: string

	// MAC address to send Wake-on-LAN broadcast packet for.

	mac: string

	// UDP port to use for magic Wake-on-LAN packet.

	port?: string
}
