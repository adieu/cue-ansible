package ftd

ftd_file_download :: {

	// Absolute path of where to download the file to.
	// If destination is a directory, the module uses a filename from 'Content-Disposition' header specified by the server.

	destination: string

	// The name of the operation to execute.
	// Only operations that return a file can be used in this module.

	operation: string

	// Key-value pairs that should be sent as path parameters in a REST API call.

	path_params?: {...}
}

ftd_file_upload :: {

	// The name of the operation to execute.
	// Only operations that upload file can be used in this module.

	operation: string

	// Specifies Ansible fact name that is used to register received response from the FTD device.

	register_as?: string

	// Absolute path to the file that should be uploaded.

	file_to_upload: string
}

ftd_install :: {

	// Password to login on a terminal server.

	console_password: string

	// Username to login on the device.
	// Defaulted to 'admin' if not specified.

	device_username?: string

	// Forces the FTD image to be installed even when the same version is already installed on the firewall.
	// By default, the module stops execution when the target version is installed in the device.

	force_install?: bool

	// Username to login on a terminal server.

	console_username: string

	// Hostname of the device as appears in the prompt (e.g., 'firepower-5516').

	device_hostname: string

	// Device IP address of management interface.
	// If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.
	// For 'local' connection type, this parameter is mandatory.

	device_ip?: string

	// Platform model of the device (e.g., 'Cisco ASA5506-X Threat Defense').
	// If not specified and connection is 'httpapi`, the module tries to fetch the device model via REST API.
	// For 'local' connection type, this parameter is mandatory.

	device_model?: string

	// New device password to set after image installation.
	// If not specified, current password from `device_password` property is reused.
	// Not applicable for ASA5500-X series devices.

	device_new_password?: string

	// Password to login on the device.

	device_password: string

	// IP address of a terminal server.
	// Used to set up an SSH connection with device's console port through the terminal server.

	console_ip: string

	// Device gateway of management interface.
	// If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.
	// For 'local' connection type, this parameter is mandatory.

	device_gateway?: string

	// Device netmask of management interface.
	// If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.
	// For 'local' connection type, this parameter is mandatory.

	device_netmask?: string

	// Search domains delimited by comma.
	// Defaulted to 'cisco.com' if not specified.

	search_domains?: string

	// Device's port on a terminal server.

	console_port: string

	// Root password for the device. If not specified, `device_password` is used.

	device_sudo_password?: string

	// DNS IP address of management interface.
	// If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.
	// For 'local' connection type, this parameter is mandatory.

	dns_server?: string

	// Path to the FTD pkg image on the server to be downloaded.
	// FTP, SCP, SFTP, TFTP, or HTTP protocols are usually supported, but may depend on the device model.

	image_file_location: string

	// Version of FTD image to be installed.
	// Helps to compare target and current FTD versions to prevent unnecessary reinstalls.

	image_version: string

	// Path to the boot (ROMMON) image on TFTP server.
	// Only TFTP is supported.

	rommon_file_location: string
}

ftd_configuration :: {

	// Key-value pairs that should be sent as body parameters in a REST API call

	data?: {...}

	// Key-value dict that represents equality filters. Every key is a property name and value is its desired value. If multiple filters are present, they are combined with logical operator AND.

	filters?: {...}

	// The name of the operation to execute. Commonly, the operation starts with 'add', 'edit', 'get', 'upsert' or 'delete' verbs, but can have an arbitrary name too.

	operation: string

	// Key-value pairs that should be sent as path parameters in a REST API call.

	path_params?: {...}

	// Key-value pairs that should be sent as query parameters in a REST API call.

	query_params?: {...}

	// Specifies Ansible fact name that is used to register received response from the FTD device.

	register_as?: string
}
