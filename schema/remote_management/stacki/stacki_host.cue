package ansible

module: stacki_host: {
	module:            "stacki_host"
	short_description: "Add or remove host to stacki front-end"
	description: [
		"Use this module to add or remove hosts to a stacki front-end via API.",
		"U(https://github.com/StackIQ/stacki)",
	]
	version_added: "2.3"
	options: {
		name: {
			description: [
				"Name of the host to be added to Stacki.",
			]
			required: true
		}
		stacki_user: {
			description: [
				"Username for authenticating with Stacki API, but if not specified, the environment variable C(stacki_user) is used instead.",
			]

			required: true
		}
		stacki_password: {
			description: [
				"Password for authenticating with Stacki API, but if not specified, the environment variable C(stacki_password) is used instead.",
			]

			required: true
		}
		stacki_endpoint: {
			description: [
				"URL for the Stacki API Endpoint.",
			]
			required: true
		}
		prim_intf_mac: description: [
			"MAC Address for the primary PXE boot network interface.",
		]
		prim_intf_ip: description: [
			"IP Address for the primary network interface.",
		]
		prim_intf: description: [
			"Name of the primary network interface.",
		]
		force_install: {
			description: [
				"Set value to True to force node into install state if it already exists in stacki.",
			]
			type: "bool"
		}
	}
	author: ["Hugh Ma (@bbyhuy) <Hugh.Ma@flextronics.com>"]
}
