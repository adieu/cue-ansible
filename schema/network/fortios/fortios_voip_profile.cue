package ansible

module: fortios_voip_profile: {
	module:            "fortios_voip_profile"
	short_description: "Configure VoIP profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify voip feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		voip_profile: {
			description: [
				"Configure VoIP profiles.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				sccp: {
					description: [
						"SCCP.",
					]
					type: "dict"
					suboptions: {
						block_mcast: {
							description: [
								"Enable/disable block multicast RTP connections.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						log_call_summary: {
							description: [
								"Enable/disable log summary of SCCP calls.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						log_violations: {
							description: [
								"Enable/disable logging of SCCP violations.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						max_calls: {
							description: [
								"Maximum calls per minute per SCCP client (max 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable SCCP.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						verify_header: {
							description: [
								"Enable/disable verify SCCP header content.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
					}
				}
				sip: {
					description: [
						"SIP.",
					]
					type: "dict"
					suboptions: {
						ack_rate: {
							description: [
								"ACK request rate limit (per second, per policy).",
							]
							type: "int"
						}
						block_ack: {
							description: [
								"Enable/disable block ACK requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_bye: {
							description: [
								"Enable/disable block BYE requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_cancel: {
							description: [
								"Enable/disable block CANCEL requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_geo_red_options: {
							description: [
								"Enable/disable block OPTIONS requests, but OPTIONS requests still notify for redundancy.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_info: {
							description: [
								"Enable/disable block INFO requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_invite: {
							description: [
								"Enable/disable block INVITE requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_long_lines: {
							description: [
								"Enable/disable block requests with headers exceeding max-line-length.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_message: {
							description: [
								"Enable/disable block MESSAGE requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_notify: {
							description: [
								"Enable/disable block NOTIFY requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_options: {
							description: [
								"Enable/disable block OPTIONS requests and no OPTIONS as notifying message for redundancy either.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_prack: {
							description: [
								"Enable/disable block prack requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_publish: {
							description: [
								"Enable/disable block PUBLISH requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_refer: {
							description: [
								"Enable/disable block REFER requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_register: {
							description: [
								"Enable/disable block REGISTER requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_subscribe: {
							description: [
								"Enable/disable block SUBSCRIBE requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_unknown: {
							description: [
								"Block unrecognized SIP requests (enabled by default).",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						block_update: {
							description: [
								"Enable/disable block UPDATE requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						bye_rate: {
							description: [
								"BYE request rate limit (per second, per policy).",
							]
							type: "int"
						}
						call_keepalive: {
							description: [
								"Continue tracking calls with no RTP for this many minutes.",
							]
							type: "int"
						}
						cancel_rate: {
							description: [
								"CANCEL request rate limit (per second, per policy).",
							]
							type: "int"
						}
						contact_fixup: {
							description: [
								"Fixup contact anyway even if contact's IP:port doesn't match session's IP:port.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						hnt_restrict_source_ip: {
							description: [
								"Enable/disable restrict RTP source IP to be the same as SIP source IP when HNT is enabled.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						hosted_nat_traversal: {
							description: [
								"Hosted NAT Traversal (HNT).",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						info_rate: {
							description: [
								"INFO request rate limit (per second, per policy).",
							]
							type: "int"
						}
						invite_rate: {
							description: [
								"INVITE request rate limit (per second, per policy).",
							]
							type: "int"
						}
						ips_rtp: {
							description: [
								"Enable/disable allow IPS on RTP.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						log_call_summary: {
							description: [
								"Enable/disable logging of SIP call summary.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						log_violations: {
							description: [
								"Enable/disable logging of SIP violations.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						malformed_header_allow: {
							description: [
								"Action for malformed Allow header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_call_id: {
							description: [
								"Action for malformed Call-ID header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_contact: {
							description: [
								"Action for malformed Contact header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_content_length: {
							description: [
								"Action for malformed Content-Length header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_content_type: {
							description: [
								"Action for malformed Content-Type header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_cseq: {
							description: [
								"Action for malformed CSeq header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_expires: {
							description: [
								"Action for malformed Expires header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_from: {
							description: [
								"Action for malformed From header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_max_forwards: {
							description: [
								"Action for malformed Max-Forwards header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_p_asserted_identity: {
							description: [
								"Action for malformed P-Asserted-Identity header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_rack: {
							description: [
								"Action for malformed RAck header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_record_route: {
							description: [
								"Action for malformed Record-Route header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_route: {
							description: [
								"Action for malformed Route header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_rseq: {
							description: [
								"Action for malformed RSeq header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_a: {
							description: [
								"Action for malformed SDP a line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_b: {
							description: [
								"Action for malformed SDP b line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_c: {
							description: [
								"Action for malformed SDP c line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_i: {
							description: [
								"Action for malformed SDP i line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_k: {
							description: [
								"Action for malformed SDP k line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_m: {
							description: [
								"Action for malformed SDP m line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_o: {
							description: [
								"Action for malformed SDP o line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_r: {
							description: [
								"Action for malformed SDP r line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_s: {
							description: [
								"Action for malformed SDP s line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_t: {
							description: [
								"Action for malformed SDP t line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_v: {
							description: [
								"Action for malformed SDP v line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_sdp_z: {
							description: [
								"Action for malformed SDP z line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_to: {
							description: [
								"Action for malformed To header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_header_via: {
							description: [
								"Action for malformed VIA header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						malformed_request_line: {
							description: [
								"Action for malformed request line.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						max_body_length: {
							description: [
								"Maximum SIP message body length (0 meaning no limit).",
							]
							type: "int"
						}
						max_dialogs: {
							description: [
								"Maximum number of concurrent calls/dialogs (per policy).",
							]
							type: "int"
						}
						max_idle_dialogs: {
							description: [
								"Maximum number established but idle dialogs to retain (per policy).",
							]
							type: "int"
						}
						max_line_length: {
							description: [
								"Maximum SIP header line length (78-4096).",
							]
							type: "int"
						}
						message_rate: {
							description: [
								"MESSAGE request rate limit (per second, per policy).",
							]
							type: "int"
						}
						nat_trace: {
							description: [
								"Enable/disable preservation of original IP in SDP i line.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						no_sdp_fixup: {
							description: [
								"Enable/disable no SDP fix-up.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						notify_rate: {
							description: [
								"NOTIFY request rate limit (per second, per policy).",
							]
							type: "int"
						}
						open_contact_pinhole: {
							description: [
								"Enable/disable open pinhole for non-REGISTER Contact port.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						open_record_route_pinhole: {
							description: [
								"Enable/disable open pinhole for Record-Route port.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						open_register_pinhole: {
							description: [
								"Enable/disable open pinhole for REGISTER Contact port.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						open_via_pinhole: {
							description: [
								"Enable/disable open pinhole for Via port.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						options_rate: {
							description: [
								"OPTIONS request rate limit (per second, per policy).",
							]
							type: "int"
						}
						prack_rate: {
							description: [
								"PRACK request rate limit (per second, per policy).",
							]
							type: "int"
						}
						preserve_override: {
							description: [
								"Override i line to preserve original IPS .",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						provisional_invite_expiry_time: {
							description: [
								"Expiry time for provisional INVITE (10 - 3600 sec).",
							]
							type: "int"
						}
						publish_rate: {
							description: [
								"PUBLISH request rate limit (per second, per policy).",
							]
							type: "int"
						}
						refer_rate: {
							description: [
								"REFER request rate limit (per second, per policy).",
							]
							type: "int"
						}
						register_contact_trace: {
							description: [
								"Enable/disable trace original IP/port within the contact header of REGISTER requests.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						register_rate: {
							description: [
								"REGISTER request rate limit (per second, per policy).",
							]
							type: "int"
						}
						rfc2543_branch: {
							description: [
								"Enable/disable support via branch compliant with RFC 2543.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						rtp: {
							description: [
								"Enable/disable create pinholes for RTP traffic to traverse firewall.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						ssl_algorithm: {
							description: [
								"Relative strength of encryption algorithms accepted in negotiation.",
							]
							type: "str"
							choices: [
								"high",
								"medium",
								"low",
							]
						}
						ssl_auth_client: {
							description: [
								"Require a client certificate and authenticate it with the peer/peergrp. Source user.peer.name user.peergrp.name.",
							]
							type: "str"
						}
						ssl_auth_server: {
							description: [
								"Authenticate the server's certificate with the peer/peergrp. Source user.peer.name user.peergrp.name.",
							]
							type: "str"
						}
						ssl_client_certificate: {
							description: [
								"Name of Certificate to offer to server if requested. Source vpn.certificate.local.name.",
							]
							type: "str"
						}
						ssl_client_renegotiation: {
							description: [
								"Allow/block client renegotiation by server.",
							]
							type: "str"
							choices: [
								"allow",
								"deny",
								"secure",
							]
						}
						ssl_max_version: {
							description: [
								"Highest SSL/TLS version to negotiate.",
							]
							type: "str"
							choices: [
								"ssl-3.0",
								"tls-1.0",
								"tls-1.1",
								"tls-1.2",
							]
						}
						ssl_min_version: {
							description: [
								"Lowest SSL/TLS version to negotiate.",
							]
							type: "str"
							choices: [
								"ssl-3.0",
								"tls-1.0",
								"tls-1.1",
								"tls-1.2",
							]
						}
						ssl_mode: {
							description: [
								"SSL/TLS mode for encryption & decryption of traffic.",
							]
							type: "str"
							choices: [
								false,
								"full",
							]
						}
						ssl_pfs: {
							description: [
								"SSL Perfect Forward Secrecy.",
							]
							type: "str"
							choices: [
								"require",
								"deny",
								"allow",
							]
						}
						ssl_send_empty_frags: {
							description: [
								"Send empty fragments to avoid attack on CBC IV (SSL 3.0 & TLS 1.0 only).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ssl_server_certificate: {
							description: [
								"Name of Certificate return to the client in every SSL connection. Source vpn.certificate.local.name.",
							]
							type: "str"
						}
						status: {
							description: [
								"Enable/disable SIP.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						strict_register: {
							description: [
								"Enable/disable only allow the registrar to connect.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						subscribe_rate: {
							description: [
								"SUBSCRIBE request rate limit (per second, per policy).",
							]
							type: "int"
						}
						unknown_header: {
							description: [
								"Action for unknown SIP header.",
							]
							type: "str"
							choices: [
								"discard",
								"pass",
								"respond",
							]
						}
						update_rate: {
							description: [
								"UPDATE request rate limit (per second, per policy).",
							]
							type: "int"
						}
					}
				}
			}
		}
	}
}
