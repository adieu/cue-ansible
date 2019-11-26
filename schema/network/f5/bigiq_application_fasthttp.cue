package ansible

module: bigiq_application_fasthttp: {
	module:            "bigiq_application_fasthttp"
	short_description: "Manages BIG-IQ FastHTTP applications"
	description: [
		"Manages BIG-IQ applications used for load balancing an HTTP-based application, speeding up connections and reducing the number of connections to the back-end server.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Name of the new application.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the application.",
			]
			type: "str"
		}
		servers: {
			description: [
				"A list of servers that the application is hosted on.",
				"If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.",
				"When creating a new application, at least one server is required.",
			]
			suboptions: {
				address: {
					description: [
						"The IP address of the server.",
					]
					type:     "str"
					required: true
				}
				port: {
					description: [
						"The port of the server.",
						"When creating a new application and specifying a server, if this parameter is not provided, the default of C(80) will be used.",
					]

					type:    "str"
					default: 80
				}
			}
			type: "list"
		}
		inbound_virtual: {
			description: [
				"Settings to configure the virtual which will receive the inbound connection.",
				"This virtual will be used to host the HTTP endpoint of the application.",
			]
			suboptions: {
				address: {
					description: [
						"Specifies destination IP address information to which the virtual server sends traffic.",
						"This parameter is required when creating a new application.",
					]
					type:     "str"
					required: true
				}
				netmask: {
					description: [
						"Specifies the netmask to associate with the given C(destination).",
						"This parameter is required when creating a new application.",
					]
					type:     "str"
					required: true
				}
				port: {
					description: [
						"The port that the virtual listens for connections on.",
						"When creating a new application, if this parameter is not specified, the default value of C(80) will be used.",
					]

					type:    "str"
					default: 80
				}
			}
			type: "dict"
		}
		service_environment: {
			description: [
				"Specifies the name of service environment that the application will be deployed to.",
				"When creating a new application, this parameter is required.",
				"The service environment type will be discovered by this module automatically. Therefore, it is crucial that you maintain unique names for items in the different service environment types (at this time, SSGs and BIGIPs).",
			]

			type: "str"
		}
		add_analytics: {
			description: [
				"Collects statistics of the BIG-IP that the application is deployed to.",
				"This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.",
			]

			type:    "bool"
			default: false
		}
		state: {
			description: [
				"The state of the resource on the system.",
				"When C(present), guarantees that the resource exists with the provided attributes.",
				"When C(absent), removes the resource from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
		wait: {
			description: [
				"If the module should wait for the application to be created, deleted or updated.",
			]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "f5"
	notes: [
		"This module does not support updating of your application (whether deployed or not). If you need to update the application, the recommended practice is to remove and re-create.",
		"This module will not work on BIGIQ version 6.1.x or greater.",
	]
	author: ["Tim Rupp (@caphrim007)"]
}
