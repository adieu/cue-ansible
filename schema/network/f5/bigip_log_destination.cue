package ansible

module: bigip_log_destination: {
	module:            "bigip_log_destination"
	short_description: "Manages log destinations on a BIG-IP."
	description: [
		"Manages log destinations on a BIG-IP.",
	]
	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the log destination.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"Specifies the type of log destination.",
				"Once created, this parameter cannot be changed.",
			]
			type: "str"
			choices: [
				"remote-high-speed-log",
				"remote-syslog",
				"arcsight",
				"splunk",
				"management-port",
				"ipfix",
			]
			required: true
		}
		description: {
			description: [
				"The description of the log destination.",
			]
			type: "str"
		}
		pool_settings: {
			description: [
				"This parameter is only available when C(type) is C(remote-high-speed-log).",
				"Deprecated. Use the equivalent top-level parameters instead.",
			]
			suboptions: {
				pool: {
					description: [
						"Specifies the existing pool of remote high-speed log servers where logs will be sent.",
						"When creating a new destination (and C(type) is C(remote-high-speed-log)), this parameter is required.",
					]

					type: "str"
				}
				protocol: {
					description: [
						"Specifies the protocol for the system to use to send logs to the pool of remote high-speed log servers, where the logs are stored.",
						"When creating a new log destination (and C(type) is C(remote-high-speed-log)), if this parameter is not specified, the default is C(tcp).",
					]

					type: "str"
					choices: [
						"tcp",
						"udp",
					]
				}
				distribution: {
					description: [
						"Specifies the distribution method used by the Remote High Speed Log destination to send messages to pool members.",
						"When C(adaptive), connections to pool members will be added as required to provide enough logging bandwidth. This can have the undesirable effect of logs accumulating on only one pool member when it provides sufficient logging bandwidth on its own.",
						"When C(balanced), sends each successive log to a new pool member, balancing the logs among them according to the pool's load balancing method.",
						"When C(replicated), replicates each log to all pool members, for redundancy.",
						"When creating a new log destination (and C(type) is C(remote-high-speed-log)), if this parameter is not specified, the default is C(adaptive).",
					]

					type: "str"
					choices: [
						"adaptive",
						"balanced",
						"replicated",
					]
				}
			}
			type: "dict"
		}
		syslog_settings: {
			description: [
				"This parameter is only available when C(type) is C(remote-syslog).",
				"Deprecated. Use the equivalent top-level parameters instead.",
			]
			suboptions: {
				syslog_format: {
					description: [
						"Specifies the method to use to format the logs associated with the remote Syslog log destination.",
						"When creating a new log destination (and C(type) is C(remote-syslog)), if this parameter is not specified, the default is C(bsd-syslog).",
						"The C(syslog) and C(rfc5424) choices are two ways of saying the same thing.",
						"The C(bsd-syslog) and C(rfc3164) choices are two ways of saying the same thing.",
					]
					type: "str"
					choices: [
						"bsd-syslog",
						"syslog",
						"legacy-bigip",
						"rfc5424",
						"rfc3164",
					]
				}
				forward_to: {
					description: [
						"Specifies the management port log destination, which will be used to forward the logs to a single log server, or a remote high-speed log destination, which will be used to forward the logs to a pool of remote log servers.",
						"When creating a new log destination (and C(type) is C(remote-syslog)), this parameter is required.",
					]
					type: "str"
				}
			}
			type: "dict"
		}
		syslog_format: {
			description: [
				"Specifies the method to use to format the logs associated with the remote Syslog log destination.",
				"When creating a new log destination (and C(type) is C(remote-syslog)), if this parameter is not specified, the default is C(bsd-syslog).",
				"The C(syslog) and C(rfc5424) choices are two ways of saying the same thing.",
				"The C(bsd-syslog) and C(rfc3164) choices are two ways of saying the same thing.",
			]
			type: "str"
			choices: [
				"bsd-syslog",
				"syslog",
				"legacy-bigip",
				"rfc5424",
				"rfc3164",
			]
			version_added: 2.8
		}
		forward_to: {
			description: [
				"When C(type) is C(remote-syslog), specifies the management port log destination, which will be used to forward the logs to a single log server, or a remote high-speed log destination, which will be used to forward the logs to a pool of remote log servers.",
				"When C(type) is C(splunk) or C(arcsight), specifies the log destination to which logs are forwarded. This log destination may be a management port destination, a remote high-speed log destination, or a remote Syslog destination which is configured to send logs to an ArcSight or Splunk server.",
				"When creating a new log destination and C(type) is C(remote-syslog), C(splunk), or C(arcsight), this parameter is required.",
			]

			type:          "str"
			version_added: 2.8
		}
		pool: {
			description: [
				"When C(type) is C(remote-high-speed-log), specifies the existing pool of remote high-speed log servers where logs will be sent.",
				"When C(type) is C(ipfix), specifies the existing LTM pool of remote IPFIX collectors. Any BIG-IP application that uses this log destination sends its IP-traffic logs to this pool of collectors.",
				"When creating a new destination and C(type) is C(remote-high-speed-log) or C(ipfix), this parameter is required.",
			]

			type:          "str"
			version_added: 2.8
		}
		protocol: {
			description: [
				"When C(type) is C(remote-high-speed-log), specifies the protocol for the system to use to send logs to the pool of remote high-speed log servers, where the logs are stored.",
				"When C(type) is C(ipfix), can be IPFIX or Netflow v9, depending on the type of collectors you have in the pool that you specify.",
				"When C(type) is C(management-port), specifies the protocol used to send messages to the specified location.",
				"When C(type) is C(management-port), only C(tcp) and C(udp) are valid values.",
			]
			type: "str"
			choices: [
				"tcp",
				"udp",
				"ipfix",
				"netflow-9",
			]
			version_added: 2.8
		}
		distribution: {
			description: [
				"Specifies the distribution method used by the Remote High Speed Log destination to send messages to pool members.",
				"When C(adaptive), connections to pool members will be added as required to provide enough logging bandwidth. This can have the undesirable effect of logs accumulating on only one pool member when it provides sufficient logging bandwidth on its own.",
				"When C(balanced), sends each successive log to a new pool member, balancing the logs among them according to the pool's load balancing method.",
				"When C(replicated), replicates each log to all pool members, for redundancy.",
				"When creating a new log destination and C(type) is C(remote-high-speed-log), if this parameter is not specified, the default is C(adaptive).",
			]

			type: "str"
			choices: [
				"adaptive",
				"balanced",
				"replicated",
			]
			version_added: 2.8
		}
		address: {
			description: [
				"Specifies the IP address that will receive messages from the specified local Log Destination.",
				"This parameter is only available when C(type) is C(management-port).",
				"When creating a new log destination and C(type) is C(management-port), this parameter is required.",
			]

			type:          "str"
			version_added: 2.8
		}
		port: {
			description: [
				"Specifies the port of the IP address that will receive messages from the specified local Log Destination.",
				"This parameter is only available when C(type) is C(management-port).",
				"When creating a new log destination and C(type) is C(management-port), this parameter is required.",
			]

			type:          "int"
			version_added: 2.8
		}
		transport_profile: {
			description: [
				"Is a transport profile based on either TCP or UDP.",
				"This profile defines the TCP or UDP options used to send IP-traffic logs to the pool of collectors.",
				"This parameter is only available when C(type) is C(ipfix).",
			]
			type:          "str"
			version_added: 2.8
		}
		server_ssl_profile: {
			description: [
				"If the C(transport_profile) is a TCP profile, you can use this field to choose a Secure Socket Layer (SSL) profile for sending logs to the IPFIX collectors.",
				"An SSL server profile defines how to communicate securely over SSL or Transport Layer Security (TLS).",
				"This parameter is only available when C(type) is C(ipfix).",
			]
			type:          "str"
			version_added: 2.8
		}
		template_retransmit_interval: {
			description: [
				"Enter the time (in seconds) between each transmission of IPFIX templates to the pool of IPFIX collectors.",
				"The logging destination periodically retransmits all of its IPFIX templates at the interval you set in this field. These retransmissions are helpful for UDP, a lossy transport mechanism.",
				"This parameter is only available when C(type) is C(ipfix).",
			]
			type:          "int"
			version_added: 2.8
		}
		template_delete_delay: {
			description: [
				"Enter the time (in seconds) that the BIG-IP device should pause between deleting an obsolete IPFIX template and reusing its template ID.",
				"This feature is useful for systems where you use iRules to create customized IPFIX templates.",
			]

			type:          "int"
			version_added: 2.8
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
