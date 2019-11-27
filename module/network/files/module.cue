package files

net_put :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	net_put: {

		// Specifies the destination file. The path to destination file can either be the full path or relative path as supported by network_os.

		dest?: string

		// Set the file transfer mode. If mode is set to I(text) then I(src) file will go through Jinja2 template engine to replace any vars if present in the src file. If mode is set to I(binary) then file will be copied as it is to destination device.

		mode?: string

		// Protocol used to transfer file.

		protocol?: string

		// Specifies the source file. The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.

		src: string
	}
}

net_get :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	net_get: {

		// Specifies the destination file. The path to the destination file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.

		dest?: string

		// Protocol used to transfer file.

		protocol?: string

		// Specifies the source file. The path to the source file can either be the full path on the network device or a relative path as per path supported by destination network device.

		src: string
	}
}
