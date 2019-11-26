package ansible

module: fortios_web_proxy_global: {
	module:            "fortios_web_proxy_global"
	short_description: "Configure Web proxy global settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify web_proxy feature and global category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		web_proxy_global: {
			description: [
				"Configure Web proxy global settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				fast_policy_match: {
					description: [
						"Enable/disable fast matching algorithm for explicit and transparent proxy policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forward_proxy_auth: {
					description: [
						"Enable/disable forwarding proxy authentication headers.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forward_server_affinity_timeout: {
					description: [
						"Period of time before the source IP's traffic is no longer assigned to the forwarding server (6 - 60 min).",
					]
					type: "int"
				}
				learn_client_ip: {
					description: [
						"Enable/disable learning the client's IP address from headers.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				learn_client_ip_from_header: {
					description: [
						"Learn client IP address from the specified headers.",
					]
					type: "str"
					choices: [
						"true-client-ip",
						"x-real-ip",
						"x-forwarded-for",
					]
				}
				learn_client_ip_srcaddr: {
					description: [
						"Source address name (srcaddr or srcaddr6 must be set).",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				learn_client_ip_srcaddr6: {
					description: [
						"IPv6 Source address name (srcaddr or srcaddr6 must be set).",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				max_message_length: {
					description: [
						"Maximum length of HTTP message, not including body (16 - 256 Kbytes).",
					]
					type: "int"
				}
				max_request_length: {
					description: [
						"Maximum length of HTTP request line (2 - 64 Kbytes).",
					]
					type: "int"
				}
				max_waf_body_cache_length: {
					description: [
						"Maximum length of HTTP messages processed by Web Application Firewall (WAF) (10 - 1024 Kbytes).",
					]
					type: "int"
				}
				proxy_fqdn: {
					description: [
						"Fully Qualified Domain Name (FQDN) that clients connect to  to connect to the explicit web proxy.",
					]
					type: "str"
				}
				strict_web_check: {
					description: [
						"Enable/disable strict web checking to block web sites that send incorrect headers that don't conform to HTTP 1.1.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tunnel_non_http: {
					description: [
						"Enable/disable allowing non-HTTP traffic. Allowed non-HTTP traffic is tunneled.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				unknown_http_version: {
					description: [
						"Action to take when an unknown version of HTTP is encountered: reject, allow (tunnel), or proceed with best-effort.",
					]
					type: "str"
					choices: [
						"reject",
						"tunnel",
						"best-effort",
					]
				}
				webproxy_profile: {
					description: [
						"Name of the web proxy profile to apply when explicit proxy traffic is allowed by default and traffic is accepted that does not match an explicit proxy policy. Source web-proxy.profile.name.",
					]

					type: "str"
				}
			}
		}
	}
}
