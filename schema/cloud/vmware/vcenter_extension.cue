package ansible

module: vcenter_extension: {
	module:            "vcenter_extension"
	short_description: "Register/deregister vCenter Extensions"
	description: [
		"This module can be used to register/deregister vCenter Extensions.",
	]
	version_added: 2.8
	author: [
		"Michael Tipton (@castawayegr)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		extension_key: {
			description: [
				"The extension key of the extension to install or uninstall.",
			]
			required: true
			type:     "str"
		}
		version: {
			description: [
				"The version of the extension you are installing or uninstalling.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"Required for C(state=present). The name of the extension you are installing.",
			]
			type: "str"
		}
		company: {
			description: [
				"Required for C(state=present). The name of the company that makes the extension.",
			]
			type: "str"
		}
		description: {
			description: [
				"Required for C(state=present). A short description of the extension.",
			]
			type: "str"
		}
		email: {
			description: [
				"Required for C(state=present). Administrator email to use for extension.",
			]
			type: "str"
		}
		url: {
			description: [
				"Required for C(state=present). Link to server hosting extension zip file to install.",
			]
			type: "str"
		}
		ssl_thumbprint: {
			description: [
				"Required for C(state=present). SSL thumbprint of the extension hosting server.",
			]
			type: "str"
		}
		server_type: {
			description: [
				"Required for C(state=present). Type of server being used to install the extension (SOAP, REST, HTTP, etc.).",
			]
			default: "vsphere-client-serenity"
			type:    "str"
		}
		client_type: {
			description: [
				"Required for C(state=present). Type of client the extension is (win32, .net, linux, etc.).",
			]
			default: "vsphere-client-serenity"
			type:    "str"
		}
		visible: {
			description: [
				"Show the extension in solution manager inside vCenter.",
			]
			default: true
			type:    "bool"
		}
		state: {
			description: [
				"Add or remove vCenter Extension.",
			]
			choices: ["absent", "present"]
			default: "present"
			type:    "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
