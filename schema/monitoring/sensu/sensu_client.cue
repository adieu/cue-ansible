package ansible

module: sensu_client: {
	module:            "sensu_client"
	author:            "David Moreau Simard (@dmsimard)"
	short_description: "Manages Sensu client configuration"
	version_added:     2.4
	description: [
		"Manages Sensu client configuration.",
		"For more information, refer to the Sensu documentation: U(https://sensuapp.org/docs/latest/reference/clients.html)",
	]
	options: {
		state: {
			description: [
				"Whether the client should be present or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"A unique name for the client. The name cannot contain special characters or spaces.",
			]
			default: "System hostname as determined by Ruby Socket.gethostname (provided by Sensu)"
		}
		address: {
			description: [
				"An address to help identify and reach the client. This is only informational, usually an IP address or hostname.",
			]
			default: "Non-loopback IPv4 address as determined by Ruby Socket.ip_address_list (provided by Sensu)"
		}
		subscriptions: {
			description: [
				"An array of client subscriptions, a list of roles and/or responsibilities assigned to the system (e.g. webserver).",
				"These subscriptions determine which monitoring checks are executed by the client, as check requests are sent to subscriptions.",
				"The subscriptions array items must be strings.",
			]
			required: true
		}
		safe_mode: {
			description: [
				"If safe mode is enabled for the client. Safe mode requires local check definitions in order to accept a check request and execute the check.",
			]
			type:    "bool"
			default: "no"
		}
		redact: description: [
			"Client definition attributes to redact (values) when logging and sending client keepalives.",
		]
		socket: description: [
			"The socket definition scope, used to configure the Sensu client socket.",
		]
		keepalives: {
			description: [
				"If Sensu should monitor keepalives for this client.",
			]
			type:    "bool"
			default: "yes"
		}
		keepalive: description: [
			"The keepalive definition scope, used to configure Sensu client keepalives behavior (e.g. keepalive thresholds, etc).",
		]
		registration: description: [
			"The registration definition scope, used to configure Sensu registration event handlers.",
		]
		deregister: {
			description: [
				"If a deregistration event should be created upon Sensu client process stop.",
			]
			type:    "bool"
			default: "no"
		}
		deregistration: description: [
			"The deregistration definition scope, used to configure automated Sensu client de-registration.",
		]
		ec2: description: [
			"The ec2 definition scope, used to configure the Sensu Enterprise AWS EC2 integration (Sensu Enterprise users only).",
		]
		chef: description: [
			"The chef definition scope, used to configure the Sensu Enterprise Chef integration (Sensu Enterprise users only).",
		]
		puppet: description: [
			"The puppet definition scope, used to configure the Sensu Enterprise Puppet integration (Sensu Enterprise users only).",
		]
		servicenow: description: [
			"The servicenow definition scope, used to configure the Sensu Enterprise ServiceNow integration (Sensu Enterprise users only).",
		]
	}
	notes: ["Check mode is supported"]
}
