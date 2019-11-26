package ansible

module: ftd_install: {
	module:            "ftd_install"
	short_description: "Installs FTD pkg image on the firewall"
	description: [
		"Provisioning module for FTD devices that installs ROMMON image (if needed) and FTD pkg image on the firewall.",
		"Can be used with `httpapi` and `local` connection types. The `httpapi` is preferred, the `local` connection should be used only when the device cannot be accessed via REST API.",
	]

	version_added: "2.8"
	requirements: ["python >= 3.5", "firepower-kickstart"]
	notes: [
		"Requires `firepower-kickstart` library that should be installed separately and requires Python >= 3.5.",
		"On localhost, Ansible can be still run with Python >= 2.7, but the interpreter for this particular module must be Python >= 3.5.",
		"Python interpreter for the module can overwritten in `ansible_python_interpreter` variable.",
	]
	author: "Cisco Systems, Inc. (@annikulin)"
	options: {
		device_hostname: {
			description: [
				"Hostname of the device as appears in the prompt (e.g., 'firepower-5516').",
			]
			required: true
			type:     "str"
		}
		device_username: {
			description: [
				"Username to login on the device.",
				"Defaulted to 'admin' if not specified.",
			]
			required: false
			type:     "str"
			default:  "admin"
		}
		device_password: {
			description: [
				"Password to login on the device.",
			]
			required: true
			type:     "str"
		}
		device_sudo_password: {
			description: [
				"Root password for the device. If not specified, `device_password` is used.",
			]
			required: false
			type:     "str"
		}
		device_new_password: {
			description: [
				"New device password to set after image installation.",
				"If not specified, current password from `device_password` property is reused.",
				"Not applicable for ASA5500-X series devices.",
			]
			required: false
			type:     "str"
		}
		device_ip: {
			description: [
				"Device IP address of management interface.",
				"If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.",
				"For 'local' connection type, this parameter is mandatory.",
			]
			required: false
			type:     "str"
		}
		device_gateway: {
			description: [
				"Device gateway of management interface.",
				"If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.",
				"For 'local' connection type, this parameter is mandatory.",
			]
			required: false
			type:     "str"
		}
		device_netmask: {
			description: [
				"Device netmask of management interface.",
				"If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.",
				"For 'local' connection type, this parameter is mandatory.",
			]
			required: false
			type:     "str"
		}
		device_model: {
			description: [
				"Platform model of the device (e.g., 'Cisco ASA5506-X Threat Defense').",
				"If not specified and connection is 'httpapi`, the module tries to fetch the device model via REST API.",
				"For 'local' connection type, this parameter is mandatory.",
			]
			required: false
			type:     "str"
			choices: [
				"Cisco ASA5506-X Threat Defense",
				"Cisco ASA5508-X Threat Defense",
				"Cisco ASA5516-X Threat Defense",
				"Cisco Firepower 2110 Threat Defense",
				"Cisco Firepower 2120 Threat Defense",
				"Cisco Firepower 2130 Threat Defense",
				"Cisco Firepower 2140 Threat Defense",
			]
		}
		dns_server: {
			description: [
				"DNS IP address of management interface.",
				"If not specified and connection is 'httpapi`, the module tries to fetch the existing value via REST API.",
				"For 'local' connection type, this parameter is mandatory.",
			]
			required: false
			type:     "str"
		}
		console_ip: {
			description: [
				"IP address of a terminal server.",
				"Used to set up an SSH connection with device's console port through the terminal server.",
			]
			required: true
			type:     "str"
		}
		console_port: {
			description: [
				"Device's port on a terminal server.",
			]
			required: true
			type:     "str"
		}
		console_username: {
			description: [
				"Username to login on a terminal server.",
			]
			required: true
			type:     "str"
		}
		console_password: {
			description: [
				"Password to login on a terminal server.",
			]
			required: true
			type:     "str"
		}
		rommon_file_location: {
			description: [
				"Path to the boot (ROMMON) image on TFTP server.",
				"Only TFTP is supported.",
			]
			required: true
			type:     "str"
		}
		image_file_location: {
			description: [
				"Path to the FTD pkg image on the server to be downloaded.",
				"FTP, SCP, SFTP, TFTP, or HTTP protocols are usually supported, but may depend on the device model.",
			]
			required: true
			type:     "str"
		}
		image_version: {
			description: [
				"Version of FTD image to be installed.",
				"Helps to compare target and current FTD versions to prevent unnecessary reinstalls.",
			]
			required: true
			type:     "str"
		}
		force_install: {
			description: [
				"Forces the FTD image to be installed even when the same version is already installed on the firewall.",
				"By default, the module stops execution when the target version is installed in the device.",
			]
			required: false
			type:     "bool"
			default:  false
		}
		search_domains: {
			description: [
				"Search domains delimited by comma.",
				"Defaulted to 'cisco.com' if not specified.",
			]
			required: false
			type:     "str"
			default:  "cisco.com"
		}
	}
}
