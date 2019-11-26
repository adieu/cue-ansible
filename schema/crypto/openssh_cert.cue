package ansible

module: openssh_cert: {
	module:            "openssh_cert"
	author:            "David Kainz (@lolcube)"
	version_added:     "2.8"
	short_description: "Generate OpenSSH host or user certificates."
	description: [
		"Generate and regenerate OpenSSH host or user certificates.",
	]
	requirements: [
		"ssh-keygen",
	]
	options: {
		state: {
			description: [
				"Whether the host or user certificate should exist or not, taking action if the state is different from what is stated.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		type: {
			description: [
				"Whether the module should generate a host or a user certificate.",
			]
			type:     "str"
			required: true
			choices: ["host", "user"]
		}
		force: {
			description: [
				"Should the certificate be regenerated even if it already exists and is valid.",
			]
			type:    "bool"
			default: false
		}
		path: {
			description: [
				"Path of the file containing the certificate.",
			]
			type:     "path"
			required: true
		}
		signing_key: {
			description: [
				"The path to the private openssh key that is used for signing the public key in order to generate the certificate.",
			]
			type:     "path"
			required: true
		}
		public_key: {
			description: [
				"The path to the public key that will be signed with the signing key in order to generate the certificate.",
			]
			type:     "path"
			required: true
		}
		valid_from: {
			description: [
				"The point in time the certificate is valid from. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | always) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.",
			]

			type:     "str"
			required: true
		}
		valid_to: {
			description: [
				"The point in time the certificate is valid to. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | forever) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.",
			]

			type:     "str"
			required: true
		}
		valid_at: {
			description: [
				"Check if the certificate is valid at a certain point in time. If it is not the certificate will be regenerated. Time will always be interpreted as UTC. Mainly to be used with relative timespec for I(valid_from) and / or I(valid_to). Note that if using relative time this module is NOT idempotent.",
			]

			type: "str"
		}
		principals: {
			description: [
				"Certificates may be limited to be valid for a set of principal (user/host) names. By default, generated certificates are valid for all users or hosts.",
			]

			type:     "list"
			elements: "str"
		}
		options: {
			description: [
				"Specify certificate options when signing a key. The option that are valid for user certificates are:",
				"C(clear): Clear all enabled permissions.  This is useful for clearing the default set of permissions so permissions may be added individually.",
				"C(force-command=command): Forces the execution of command instead of any shell or command specified by the user when the certificate is used for authentication.",
				"C(no-agent-forwarding): Disable ssh-agent forwarding (permitted by default).",
				"C(no-port-forwarding): Disable port forwarding (permitted by default).",
				"C(no-pty Disable): PTY allocation (permitted by default).",
				"C(no-user-rc): Disable execution of C(~/.ssh/rc) by sshd (permitted by default).",
				"C(no-x11-forwarding): Disable X11 forwarding (permitted by default)",
				"C(permit-agent-forwarding): Allows ssh-agent forwarding.",
				"C(permit-port-forwarding): Allows port forwarding.",
				"C(permit-pty): Allows PTY allocation.",
				"C(permit-user-rc): Allows execution of C(~/.ssh/rc) by sshd.",
				"C(permit-x11-forwarding): Allows X11 forwarding.",
				"C(source-address=address_list): Restrict the source addresses from which the certificate is considered valid. The C(address_list) is a comma-separated list of one or more address/netmask pairs in CIDR format.",
				"At present, no options are valid for host keys.",
			]
			type:     "list"
			elements: "str"
		}
		identifier: {
			description: [
				"Specify the key identity when signing a public key. The identifier that is logged by the server when the certificate is used for authentication.",
			]
			type: "str"
		}
		serial_number: {
			description: [
				"Specify the certificate serial number. The serial number is logged by the server when the certificate is used for authentication. The certificate serial number may be used in a KeyRevocationList. The serial number may be omitted for checks, but must be specified again for a new certificate. Note: The default value set by ssh-keygen is 0.",
			]

			type: "int"
		}
	}

	extends_documentation_fragment: "files"
}
