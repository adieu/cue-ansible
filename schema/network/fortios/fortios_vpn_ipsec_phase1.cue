package ansible

module: fortios_vpn_ipsec_phase1: {
	module:            "fortios_vpn_ipsec_phase1"
	short_description: "Configure VPN remote gateway in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_ipsec feature and phase1 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_ipsec_phase1: {
			description: [
				"Configure VPN remote gateway.",
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
				acct_verify: {
					description: [
						"Enable/disable verification of RADIUS accounting record.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				add_gw_route: {
					description: [
						"Enable/disable automatically add a route to the remote gateway.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				add_route: {
					description: [
						"Enable/disable control addition of a route to peer destination selector.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				assign_ip: {
					description: [
						"Enable/disable assignment of IP to IPsec interface via configuration method.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				assign_ip_from: {
					description: [
						"Method by which the IP address will be assigned.",
					]
					type: "str"
					choices: [
						"range",
						"usrgrp",
						"dhcp",
						"name",
					]
				}
				authmethod: {
					description: [
						"Authentication method.",
					]
					type: "str"
					choices: [
						"psk",
						"signature",
					]
				}
				authmethod_remote: {
					description: [
						"Authentication method (remote side).",
					]
					type: "str"
					choices: [
						"psk",
						"signature",
					]
				}
				authpasswd: {
					description: [
						"XAuth password (max 35 characters).",
					]
					type: "str"
				}
				authusr: {
					description: [
						"XAuth user name.",
					]
					type: "str"
				}
				authusrgrp: {
					description: [
						"Authentication user group. Source user.group.name.",
					]
					type: "str"
				}
				auto_negotiate: {
					description: [
						"Enable/disable automatic initiation of IKE SA negotiation.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				backup_gateway: {
					description: [
						"Instruct unity clients about the backup gateway address(es).",
					]
					type: "list"
					suboptions: address: {
						description: [
							"Address of backup gateway.",
						]
						required: true
						type:     "str"
					}
				}
				banner: {
					description: [
						"Message that unity client should display after connecting.",
					]
					type: "str"
				}
				cert_id_validation: {
					description: [
						"Enable/disable cross validation of peer ID and the identity in the peer's certificate as specified in RFC 4945.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				certificate: {
					description: [
						"Names of up to 4 signed personal certificates.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Certificate name. Source vpn.certificate.local.name.",
						]
						required: true
						type:     "str"
					}
				}
				childless_ike: {
					description: [
						"Enable/disable childless IKEv2 initiation (RFC 6023).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				client_auto_negotiate: {
					description: [
						"Enable/disable allowing the VPN client to bring up the tunnel when there is no traffic.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				client_keep_alive: {
					description: [
						"Enable/disable allowing the VPN client to keep the tunnel up when there is no traffic.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				dhgrp: {
					description: [
						"DH group.",
					]
					type: "str"
					choices: [
						1,
						2,
						5,
						14,
						15,
						16,
						17,
						18,
						19,
						20,
						21,
						27,
						28,
						29,
						30,
						31,
					]
				}
				digital_signature_auth: {
					description: [
						"Enable/disable IKEv2 Digital Signature Authentication (RFC 7427).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				distance: {
					description: [
						"Distance for routes added by IKE (1 - 255).",
					]
					type: "int"
				}
				dns_mode: {
					description: [
						"DNS server mode.",
					]
					type: "str"
					choices: [
						"manual",
						"auto",
					]
				}
				domain: {
					description: [
						"Instruct unity clients about the default DNS domain.",
					]
					type: "str"
				}
				dpd: {
					description: [
						"Dead Peer Detection mode.",
					]
					type: "str"
					choices: [
						"disable",
						"on-idle",
						"on-demand",
					]
				}
				dpd_retrycount: {
					description: [
						"Number of DPD retry attempts.",
					]
					type: "int"
				}
				dpd_retryinterval: {
					description: [
						"DPD retry interval.",
					]
					type: "str"
				}
				eap: {
					description: [
						"Enable/disable IKEv2 EAP authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				eap_identity: {
					description: [
						"IKEv2 EAP peer identity type.",
					]
					type: "str"
					choices: [
						"use-id-payload",
						"send-request",
					]
				}
				enforce_unique_id: {
					description: [
						"Enable/disable peer ID uniqueness check.",
					]
					type: "str"
					choices: [
						"disable",
						"keep-new",
						"keep-old",
					]
				}
				forticlient_enforcement: {
					description: [
						"Enable/disable FortiClient enforcement.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fragmentation: {
					description: [
						"Enable/disable fragment IKE message on re-transmission.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fragmentation_mtu: {
					description: [
						"IKE fragmentation MTU (500 - 16000).",
					]
					type: "int"
				}
				group_authentication: {
					description: [
						"Enable/disable IKEv2 IDi group authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				group_authentication_secret: {
					description: [
						"Password for IKEv2 IDi group authentication.  (ASCII string or hexadecimal indicated by a leading 0x.)",
					]
					type: "str"
				}
				ha_sync_esp_seqno: {
					description: [
						"Enable/disable sequence number jump ahead for IPsec HA.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				idle_timeout: {
					description: [
						"Enable/disable IPsec tunnel idle timeout.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				idle_timeoutinterval: {
					description: [
						"IPsec tunnel idle timeout in minutes (5 - 43200).",
					]
					type: "int"
				}
				ike_version: {
					description: [
						"IKE protocol version.",
					]
					type: "str"
					choices: [
						1,
						2,
					]
				}
				include_local_lan: {
					description: [
						"Enable/disable allow local LAN access on unity clients.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				interface: {
					description: [
						"Local physical, aggregate, or VLAN outgoing interface. Source system.interface.name.",
					]
					type: "str"
				}
				ipv4_dns_server1: {
					description: [
						"IPv4 DNS server 1.",
					]
					type: "str"
				}
				ipv4_dns_server2: {
					description: [
						"IPv4 DNS server 2.",
					]
					type: "str"
				}
				ipv4_dns_server3: {
					description: [
						"IPv4 DNS server 3.",
					]
					type: "str"
				}
				ipv4_end_ip: {
					description: [
						"End of IPv4 range.",
					]
					type: "str"
				}
				ipv4_exclude_range: {
					description: [
						"Configuration Method IPv4 exclude ranges.",
					]
					type: "list"
					suboptions: {
						end_ip: {
							description: [
								"End of IPv4 exclusive range.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						start_ip: {
							description: [
								"Start of IPv4 exclusive range.",
							]
							type: "str"
						}
					}
				}
				ipv4_name: {
					description: [
						"IPv4 address name. Source firewall.address.name firewall.addrgrp.name.",
					]
					type: "str"
				}
				ipv4_netmask: {
					description: [
						"IPv4 Netmask.",
					]
					type: "str"
				}
				ipv4_split_exclude: {
					description: [
						"IPv4 subnets that should not be sent over the IPsec tunnel. Source firewall.address.name firewall.addrgrp.name.",
					]
					type: "str"
				}
				ipv4_split_include: {
					description: [
						"IPv4 split-include subnets. Source firewall.address.name firewall.addrgrp.name.",
					]
					type: "str"
				}
				ipv4_start_ip: {
					description: [
						"Start of IPv4 range.",
					]
					type: "str"
				}
				ipv4_wins_server1: {
					description: [
						"WINS server 1.",
					]
					type: "str"
				}
				ipv4_wins_server2: {
					description: [
						"WINS server 2.",
					]
					type: "str"
				}
				ipv6_dns_server1: {
					description: [
						"IPv6 DNS server 1.",
					]
					type: "str"
				}
				ipv6_dns_server2: {
					description: [
						"IPv6 DNS server 2.",
					]
					type: "str"
				}
				ipv6_dns_server3: {
					description: [
						"IPv6 DNS server 3.",
					]
					type: "str"
				}
				ipv6_end_ip: {
					description: [
						"End of IPv6 range.",
					]
					type: "str"
				}
				ipv6_exclude_range: {
					description: [
						"Configuration method IPv6 exclude ranges.",
					]
					type: "list"
					suboptions: {
						end_ip: {
							description: [
								"End of IPv6 exclusive range.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						start_ip: {
							description: [
								"Start of IPv6 exclusive range.",
							]
							type: "str"
						}
					}
				}
				ipv6_name: {
					description: [
						"IPv6 address name. Source firewall.address6.name firewall.addrgrp6.name.",
					]
					type: "str"
				}
				ipv6_prefix: {
					description: [
						"IPv6 prefix.",
					]
					type: "int"
				}
				ipv6_split_exclude: {
					description: [
						"IPv6 subnets that should not be sent over the IPsec tunnel. Source firewall.address6.name firewall.addrgrp6.name.",
					]
					type: "str"
				}
				ipv6_split_include: {
					description: [
						"IPv6 split-include subnets. Source firewall.address6.name firewall.addrgrp6.name.",
					]
					type: "str"
				}
				ipv6_start_ip: {
					description: [
						"Start of IPv6 range.",
					]
					type: "str"
				}
				keepalive: {
					description: [
						"NAT-T keep alive interval.",
					]
					type: "int"
				}
				keylife: {
					description: [
						"Time to wait in seconds before phase 1 encryption key expires.",
					]
					type: "int"
				}
				local_gw: {
					description: [
						"Local VPN gateway.",
					]
					type: "str"
				}
				localid: {
					description: [
						"Local ID.",
					]
					type: "str"
				}
				localid_type: {
					description: [
						"Local ID type.",
					]
					type: "str"
					choices: [
						"auto",
						"fqdn",
						"user-fqdn",
						"keyid",
						"address",
						"asn1dn",
					]
				}
				mesh_selector_type: {
					description: [
						"Add selectors containing subsets of the configuration depending on traffic.",
					]
					type: "str"
					choices: [
						"disable",
						"subnet",
						"host",
					]
				}
				mode: {
					description: [
						"ID protection mode used to establish a secure channel.",
					]
					type: "str"
					choices: [
						"aggressive",
						"main",
					]
				}
				mode_cfg: {
					description: [
						"Enable/disable configuration method.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				name: {
					description: [
						"IPsec remote gateway name.",
					]
					required: true
					type:     "str"
				}
				nattraversal: {
					description: [
						"Enable/disable NAT traversal.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
						"forced",
					]
				}
				negotiate_timeout: {
					description: [
						"IKE SA negotiation timeout in seconds (1 - 300).",
					]
					type: "int"
				}
				peer: {
					description: [
						"Accept this peer certificate. Source user.peer.name.",
					]
					type: "str"
				}
				peergrp: {
					description: [
						"Accept this peer certificate group. Source user.peergrp.name.",
					]
					type: "str"
				}
				peerid: {
					description: [
						"Accept this peer identity.",
					]
					type: "str"
				}
				peertype: {
					description: [
						"Accept this peer type.",
					]
					type: "str"
					choices: [
						"any",
						"one",
						"dialup",
						"peer",
						"peergrp",
					]
				}
				ppk: {
					description: [
						"Enable/disable IKEv2 Postquantum Preshared Key (PPK).",
					]
					type: "str"
					choices: [
						"disable",
						"allow",
						"require",
					]
				}
				ppk_identity: {
					description: [
						"IKEv2 Postquantum Preshared Key Identity.",
					]
					type: "str"
				}
				ppk_secret: {
					description: [
						"IKEv2 Postquantum Preshared Key (ASCII string or hexadecimal encoded with a leading 0x).",
					]
					type: "str"
				}
				priority: {
					description: [
						"Priority for routes added by IKE (0 - 4294967295).",
					]
					type: "int"
				}
				proposal: {
					description: [
						"Phase1 proposal.",
					]
					type: "str"
					choices: [
						"des-md5",
						"des-sha1",
						"des-sha256",
						"des-sha384",
						"des-sha512",
					]
				}
				psksecret: {
					description: [
						"Pre-shared secret for PSK authentication (ASCII string or hexadecimal encoded with a leading 0x).",
					]
					type: "str"
				}
				psksecret_remote: {
					description: [
						"Pre-shared secret for remote side PSK authentication (ASCII string or hexadecimal encoded with a leading 0x).",
					]
					type: "str"
				}
				reauth: {
					description: [
						"Enable/disable re-authentication upon IKE SA lifetime expiration.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				rekey: {
					description: [
						"Enable/disable phase1 rekey.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				remote_gw: {
					description: [
						"Remote VPN gateway.",
					]
					type: "str"
				}
				remotegw_ddns: {
					description: [
						"Domain name of remote gateway (eg. name.DDNS.com).",
					]
					type: "str"
				}
				rsa_signature_format: {
					description: [
						"Digital Signature Authentication RSA signature format.",
					]
					type: "str"
					choices: [
						"pkcs1",
						"pss",
					]
				}
				save_password: {
					description: [
						"Enable/disable saving XAuth username and password on VPN clients.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				send_cert_chain: {
					description: [
						"Enable/disable sending certificate chain.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				signature_hash_alg: {
					description: [
						"Digital Signature Authentication hash algorithms.",
					]
					type: "str"
					choices: [
						"sha1",
						"sha2-256",
						"sha2-384",
						"sha2-512",
					]
				}
				split_include_service: {
					description: [
						"Split-include services. Source firewall.service.group.name firewall.service.custom.name.",
					]
					type: "str"
				}
				suite_b: {
					description: [
						"Use Suite-B.",
					]
					type: "str"
					choices: [
						"disable",
						"suite-b-gcm-128",
						"suite-b-gcm-256",
					]
				}
				type: {
					description: [
						"Remote gateway type.",
					]
					type: "str"
					choices: [
						"static",
						"dynamic",
						"ddns",
					]
				}
				unity_support: {
					description: [
						"Enable/disable support for Cisco UNITY Configuration Method extensions.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				usrgrp: {
					description: [
						"User group name for dialup peers. Source user.group.name.",
					]
					type: "str"
				}
				wizard_type: {
					description: [
						"GUI VPN Wizard Type.",
					]
					type: "str"
					choices: [
						"custom",
						"dialup-forticlient",
						"dialup-ios",
						"dialup-android",
						"dialup-windows",
						"dialup-cisco",
						"static-fortigate",
						"dialup-fortigate",
						"static-cisco",
						"dialup-cisco-fw",
					]
				}
				xauthtype: {
					description: [
						"XAuth type.",
					]
					type: "str"
					choices: [
						"disable",
						"client",
						"pap",
						"chap",
						"auto",
					]
				}
			}
		}
	}
}
