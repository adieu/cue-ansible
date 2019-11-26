package ansible

module: netscaler_gslb_vserver: {
	module:            "netscaler_gslb_vserver"
	short_description: "Configure gslb vserver entities in Netscaler."
	description: [
		"Configure gslb vserver entities in Netscaler.",
	]

	version_added: "2.4.0"

	author: "George Nikolopoulos (@giorgos-nikolopoulos)"

	options: {

		name: description: [
			"Name for the GSLB virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the virtual server is created.",
			"Minimum length = 1",
		]

		servicetype: {
			choices: [
				"HTTP",
				"FTP",
				"TCP",
				"UDP",
				"SSL",
				"SSL_BRIDGE",
				"SSL_TCP",
				"NNTP",
				"ANY",
				"SIP_UDP",
				"SIP_TCP",
				"SIP_SSL",
				"RADIUS",
				"RDP",
				"RTSP",
				"MYSQL",
				"MSSQL",
				"ORACLE",
			]
			description: [
				"Protocol used by services bound to the virtual server.",
				"",
			]
		}

		dnsrecordtype: {
			choices: [
				"A",
				"AAAA",
				"CNAME",
				"NAPTR",
			]
			description: [
				"DNS record type to associate with the GSLB virtual server's domain name.",
				"Default value: A",
				"Possible values = A, AAAA, CNAME, NAPTR",
			]
		}

		lbmethod: {
			choices: [
				"ROUNDROBIN",
				"LEASTCONNECTION",
				"LEASTRESPONSETIME",
				"SOURCEIPHASH",
				"LEASTBANDWIDTH",
				"LEASTPACKETS",
				"STATICPROXIMITY",
				"RTT",
				"CUSTOMLOAD",
			]
			description: [
				"Load balancing method for the GSLB virtual server.",
				"Default value: LEASTCONNECTION",
				"Possible values = ROUNDROBIN, LEASTCONNECTION, LEASTRESPONSETIME, SOURCEIPHASH, LEASTBANDWIDTH, LEASTPACKETS, STATICPROXIMITY, RTT, CUSTOMLOAD",
			]
		}

		backuplbmethod: {
			choices: [
				"ROUNDROBIN",
				"LEASTCONNECTION",
				"LEASTRESPONSETIME",
				"SOURCEIPHASH",
				"LEASTBANDWIDTH",
				"LEASTPACKETS",
				"STATICPROXIMITY",
				"RTT",
				"CUSTOMLOAD",
			]
			description: [
				"Backup load balancing method. Becomes operational if the primary load balancing method fails or cannot be used. Valid only if the primary method is based on either round-trip time (RTT) or static proximity.",
			]
		}

		netmask: description: [
			"IPv4 network mask for use in the SOURCEIPHASH load balancing method.",
			"Minimum length = 1",
		]

		v6netmasklen: description: [
			"Number of bits to consider, in an IPv6 source IP address, for creating the hash that is required by the C(SOURCEIPHASH) load balancing method.",
			"Default value: C(128)",
			"Minimum value = C(1)",
			"Maximum value = C(128)",
		]

		tolerance: description: [
			"Site selection tolerance, in milliseconds, for implementing the RTT load balancing method. If a site's RTT deviates from the lowest RTT by more than the specified tolerance, the site is not considered when the NetScaler appliance makes a GSLB decision. The appliance implements the round robin method of global server load balancing between sites whose RTT values are within the specified tolerance. If the tolerance is 0 (zero), the appliance always sends clients the IP address of the site with the lowest RTT.",
			"Minimum value = C(0)",
			"Maximum value = C(100)",
		]

		persistencetype: {
			choices: [
				"SOURCEIP",
				"NONE",
			]
			description: [
				"Use source IP address based persistence for the virtual server.",
				"After the load balancing method selects a service for the first packet, the IP address received in response to the DNS query is used for subsequent requests from the same client.",
			]
		}

		persistenceid: description: [
			"The persistence ID for the GSLB virtual server. The ID is a positive integer that enables GSLB sites to identify the GSLB virtual server, and is required if source IP address based or spill over based persistence is enabled on the virtual server.",
			"Minimum value = C(0)",
			"Maximum value = C(65535)",
		]

		persistmask: description: [
			"The optional IPv4 network mask applied to IPv4 addresses to establish source IP address based persistence.",
			"Minimum length = 1",
		]

		v6persistmasklen: description: [
			"Number of bits to consider in an IPv6 source IP address when creating source IP address based persistence sessions.",
			"Default value: C(128)",
			"Minimum value = C(1)",
			"Maximum value = C(128)",
		]

		timeout: description: [
			"Idle time, in minutes, after which a persistence entry is cleared.",
			"Default value: C(2)",
			"Minimum value = C(2)",
			"Maximum value = C(1440)",
		]

		mir: {
			choices: [
				"enabled",
				"disabled",
			]
			description: [
				"Include multiple IP addresses in the DNS responses sent to clients.",
			]
		}

		disableprimaryondown: {
			choices: [
				"enabled",
				"disabled",
			]
			description: [
				"Continue to direct traffic to the backup chain even after the primary GSLB virtual server returns to the UP state. Used when spillover is configured for the virtual server.",
			]
		}

		dynamicweight: {
			choices: [
				"SERVICECOUNT",
				"SERVICEWEIGHT",
				"DISABLED",
			]
			description: [
				"Specify if the appliance should consider the service count, service weights, or ignore both when using weight-based load balancing methods. The state of the number of services bound to the virtual server help the appliance to select the service.",
			]
		}

		considereffectivestate: {
			choices: [
				"NONE",
				"STATE_ONLY",
			]
			description: [
				"If the primary state of all bound GSLB services is DOWN, consider the effective states of all the GSLB services, obtained through the Metrics Exchange Protocol (MEP), when determining the state of the GSLB virtual server. To consider the effective state, set the parameter to STATE_ONLY. To disregard the effective state, set the parameter to NONE.",
				"The effective state of a GSLB service is the ability of the corresponding virtual server to serve traffic. The effective state of the load balancing virtual server, which is transferred to the GSLB service, is UP even if only one virtual server in the backup chain of virtual servers is in the UP state.",
			]
		}

		comment: description: [
			"Any comments that you might want to associate with the GSLB virtual server.",
		]

		somethod: {
			choices: [
				"CONNECTION",
				"DYNAMICCONNECTION",
				"BANDWIDTH",
				"HEALTH",
				"NONE",
			]
			description: [
				"Type of threshold that, when exceeded, triggers spillover. Available settings function as follows:",
				"* C(CONNECTION) - Spillover occurs when the number of client connections exceeds the threshold.",
				"* C(DYNAMICCONNECTION) - Spillover occurs when the number of client connections at the GSLB virtual server exceeds the sum of the maximum client (Max Clients) settings for bound GSLB services. Do not specify a spillover threshold for this setting, because the threshold is implied by the Max Clients settings of the bound GSLB services.",
				"* C(BANDWIDTH) - Spillover occurs when the bandwidth consumed by the GSLB virtual server's incoming and outgoing traffic exceeds the threshold.",
				"* C(HEALTH) - Spillover occurs when the percentage of weights of the GSLB services that are UP drops below the threshold. For example, if services gslbSvc1, gslbSvc2, and gslbSvc3 are bound to a virtual server, with weights 1, 2, and 3, and the spillover threshold is 50%, spillover occurs if gslbSvc1 and gslbSvc3 or gslbSvc2 and gslbSvc3 transition to DOWN.",
				"* C(NONE) - Spillover does not occur.",
			]
		}

		sopersistence: {
			choices: [
				"enabled",
				"disabled",
			]
			description: [
				"If spillover occurs, maintain source IP address based persistence for both primary and backup GSLB virtual servers.",
			]
		}

		sopersistencetimeout: description: [
			"Timeout for spillover persistence, in minutes.",
			"Default value: C(2)",
			"Minimum value = C(2)",
			"Maximum value = C(1440)",
		]

		sothreshold: description: [
			"Threshold at which spillover occurs. Specify an integer for the CONNECTION spillover method, a bandwidth value in kilobits per second for the BANDWIDTH method (do not enter the units), or a percentage for the HEALTH method (do not enter the percentage symbol).",
			"Minimum value = C(1)",
			"Maximum value = C(4294967287)",
		]

		sobackupaction: {
			choices: [
				"DROP",
				"ACCEPT",
				"REDIRECT",
			]
			description: [
				"Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.",
			]
		}

		appflowlog: {
			choices: [
				"enabled",
				"disabled",
			]
			description: [
				"Enable logging appflow flow information.",
			]
		}

		domain_bindings: {
			description: [
				"List of bindings for domains for this glsb vserver.",
			]

			suboptions: {
				cookietimeout: description: [
					"Timeout, in minutes, for the GSLB site cookie.",
				]

				domainname: description: [
					"Domain name for which to change the time to live (TTL) and/or backup service IP address.",
				]

				ttl: description: [
					"Time to live (TTL) for the domain.",
				]

				sitedomainttl: description: [
					"TTL, in seconds, for all internally created site domains (created when a site prefix is configured on a GSLB service) that are associated with this virtual server.",
					"Minimum value = C(1)",
				]
			}
		}

		service_bindings: {
			description: [
				"List of bindings for gslb services bound to this gslb virtual server.",
			]
			suboptions: {
				servicename: description: [
					"Name of the GSLB service for which to change the weight.",
				]
				weight: description: [
					"Weight to assign to the GSLB service.",
				]
			}
		}

		disabled: {
			description: [
				"When set to C(yes) the GSLB Vserver state will be set to C(disabled).",
				"When set to C(no) the GSLB Vserver state will be set to C(enabled).",
				"Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.",
			]

			type:    "bool"
			default: false
		}
	}

	extends_documentation_fragment: "netscaler"
	requirements: ["nitro python sdk"]
}
