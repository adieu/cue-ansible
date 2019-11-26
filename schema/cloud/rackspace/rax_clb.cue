package ansible

module: rax_clb: {
	module:            "rax_clb"
	short_description: "create / delete a load balancer in Rackspace Public Cloud"
	description: [
		"creates / deletes a Rackspace Public Cloud load balancer.",
	]
	version_added: "1.4"
	options: {
		algorithm: {
			description: [
				"algorithm for the balancer being created",
			]
			choices: [
				"RANDOM",
				"LEAST_CONNECTIONS",
				"ROUND_ROBIN",
				"WEIGHTED_LEAST_CONNECTIONS",
				"WEIGHTED_ROUND_ROBIN",
			]
			default: "LEAST_CONNECTIONS"
		}
		meta: description: [
			"A hash of metadata to associate with the instance",
		]
		name: description: [
			"Name to give the load balancer",
		]
		port: {
			description: [
				"Port for the balancer being created",
			]
			default: 80
		}
		protocol: {
			description: [
				"Protocol for the balancer being created",
			]
			choices: [
				"DNS_TCP",
				"DNS_UDP",
				"FTP",
				"HTTP",
				"HTTPS",
				"IMAPS",
				"IMAPv4",
				"LDAP",
				"LDAPS",
				"MYSQL",
				"POP3",
				"POP3S",
				"SMTP",
				"TCP",
				"TCP_CLIENT_FIRST",
				"UDP",
				"UDP_STREAM",
				"SFTP",
			]
			default: "HTTP"
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		timeout: {
			description: [
				"timeout for communication between the balancer and the node",
			]
			default: 30
		}
		type: {
			description: [
				"type of interface for the balancer being created",
			]
			choices: [
				"PUBLIC",
				"SERVICENET",
			]
			default: "PUBLIC"
		}
		vip_id: {
			description: [
				"Virtual IP ID to use when creating the load balancer for purposes of sharing an IP with another load balancer of another protocol",
			]

			version_added: 1.5
		}
		wait: {
			description: [
				"wait for the balancer to be in state 'running' before returning",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 300
		}
	}
	author: [
		"Christopher H. Laco (@claco)",
		"Matt Martz (@sivel)",
	]
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
