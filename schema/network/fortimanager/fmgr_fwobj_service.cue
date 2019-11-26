package ansible

module: fmgr_fwobj_service: {
	module:        "fmgr_fwobj_service"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manages FortiManager Firewall Service Objects."
	description: [
		"Manages FortiManager Firewall Service Objects.",
	]

	options: {
		adom: {
			description:
					"-The ADOM the configuration should belong to."
			required: false
			default:  "root"
		}

		app_category: {
			description: [
				"Application category ID.",
			]
			required: false
		}

		app_service_type: {
			description: [
				"Application service type.",
			]
			required: false
		}

		application: {
			description: [
				"Application ID.",
			]
			required: false
		}

		category: {
			description: [
				"Service category.",
			]
			required: false
		}

		check_reset_range: {
			description: [
				"Enable disable RST check.",
			]
			required: false
		}

		color: {
			description: [
				"GUI icon color.",
			]
			required: false
			default:  22
		}

		comment: {
			description: [
				"Comment.",
			]
			required: false
		}

		custom_type: {
			description: [
				"Tells module what kind of custom service to be added.",
			]
			choices: ["tcp_udp_sctp", "icmp", "icmp6", "ip", "http", "ftp", "connect", "socks_tcp", "socks_udp", "all"]
			default:  "all"
			required: false
		}

		explicit_proxy: {
			description: [
				"Enable/disable explicit web proxy service.",
			]
			choices: ["enable", "disable"]
			default:  "disable"
			required: false
		}

		fqdn: {
			description: [
				"Fully qualified domain name.",
			]
			required: false
			default:  ""
		}

		group_name: {
			description: [
				"Name of the Service Group.",
			]
			required: false
		}

		group_member: {
			description: [
				"Comma-Seperated list of members' names.",
			]
			required: false
		}

		icmp_code: {
			description: [
				"ICMP code.",
			]
			required: false
		}

		icmp_type: {
			description: [
				"ICMP type.",
			]
			required: false
		}

		iprange: {
			description: [
				"Start IP-End IP.",
			]
			required: false
			default:  "0.0.0.0"
		}

		name: {
			description: [
				"Custom service name.",
			]
			required: false
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
			]
			choices: ["add", "set", "delete"]
			default:  "add"
			required: false
		}

		object_type: {
			description: [
				"Tells module if we are adding a custom service, category, or group.",
			]
			choices: ["custom", "group", "category"]
			required: false
		}

		protocol: {
			description: [
				"Protocol type.",
			]
			required: false
		}

		protocol_number: {
			description: [
				"IP protocol number.",
			]
			required: false
		}

		sctp_portrange: {
			description: [
				"Multiple SCTP port ranges. Comma separated list of destination ports to add (i.e. '443,80').",
				"Syntax is <destPort:sourcePort>",
				"If no sourcePort is defined, it assumes all of them.",
				"Ranges can be defined with a hyphen -",
				"Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).",
				"String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').",
			]
			required: false
		}

		session_ttl: {
			description: [
				"Session TTL (300 - 604800, 0 = default).",
			]
			required: false
			default:  0
		}

		tcp_halfclose_timer: {
			description: [
				"TCP half close timeout (1 - 86400 sec, 0 = default).",
			]
			required: false
			default:  0
		}

		tcp_halfopen_timer: {
			description: [
				"TCP half close timeout (1 - 86400 sec, 0 = default).",
			]
			required: false
			default:  0
		}

		tcp_portrange: {
			description: [
				"Comma separated list of destination ports to add (i.e. '443,80').",
				"Syntax is <destPort:sourcePort>",
				"If no sourcePort is defined, it assumes all of them.",
				"Ranges can be defined with a hyphen -",
				"Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).",
				"String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').",
			]
			required: false
		}

		tcp_timewait_timer: {
			description: [
				"TCP half close timeout (1 - 300 sec, 0 = default).",
			]
			required: false
			default:  0
		}

		udp_idle_timer: {
			description: [
				"TCP half close timeout (0 - 86400 sec, 0 = default).",
			]
			required: false
			default:  0
		}

		udp_portrange: {
			description: [
				"Comma separated list of destination ports to add (i.e. '443,80').",
				"Syntax is <destPort:sourcePort>",
				"If no sourcePort is defined, it assumes all of them.",
				"Ranges can be defined with a hyphen -",
				"Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).",
				"String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').",
			]
			required: false
		}

		visibility: {
			description: [
				"Enable/disable service visibility.",
			]
			required: false
			choices: ["enable", "disable"]
			default: "enable"
		}
	}
}
