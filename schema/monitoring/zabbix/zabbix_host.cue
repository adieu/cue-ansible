package ansible

module: zabbix_host: {
	module:            "zabbix_host"
	short_description: "Create/update/delete Zabbix hosts"
	description: [
		"This module allows you to create, modify and delete Zabbix host entries and associated group and template data.",
	]
	version_added: "2.0"
	author: [
		"Cove (@cove)",
		"Tony Minfei Ding (!UNKNOWN)",
		"Harrison Gu (@harrisongu)",
		"Werner Dijkerman (@dj-wasabi)",
		"Eike Frost (@eikef)",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: {
		host_name: {
			description: [
				"Name of the host in Zabbix.",
				"I(host_name) is the unique identifier used and cannot be updated using this module.",
			]
			required: true
		}
		visible_name: {
			description: [
				"Visible name of the host in Zabbix.",
			]
			version_added: "2.3"
		}
		description: {
			description: [
				"Description of the host in Zabbix.",
			]
			version_added: "2.5"
		}
		host_groups: description: [
			"List of host groups the host is part of.",
		]
		link_templates: description: [
			"List of templates linked to the host.",
		]
		inventory_mode: {
			description: [
				"Configure the inventory mode.",
			]
			choices: ["automatic", "manual", "disabled"]
			version_added: "2.1"
		}
		inventory_zabbix: {
			description: [
				"Add Facts for a zabbix inventory (e.g. Tag) (see example below).",
				"Please review the interface documentation for more information on the supported properties",
				"U(https://www.zabbix.com/documentation/3.2/manual/api/reference/host/object#host_inventory)",
			]
			version_added: "2.5"
		}
		status: {
			description: [
				"Monitoring status of the host.",
			]
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		state: {
			description: [
				"State of the host.",
				"On C(present), it will create if host does not exist or update the host if the associated data is different.",
				"On C(absent) will remove a host if it exists.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		proxy: description: [
			"The name of the Zabbix proxy to be used.",
		]
		interfaces: {
			type: "list"
			description: [
				"List of interfaces to be created for the host (see example below).",
				"For more information, review host interface documentation at",
				"U(https://www.zabbix.com/documentation/4.0/manual/api/reference/hostinterface/object)",
			]
			suboptions: {
				type: {
					description: [
						"Interface type to add",
						"Numerical values are also accepted for interface type",
						"1 = agent",
						"2 = snmp",
						"3 = ipmi",
						"4 = jmx",
					]
					choices: ["agent", "snmp", "ipmi", "jmx"]
					required: true
				}
				main: {
					type: "int"
					description: [
						"Whether the interface is used as default.",
						"If multiple interfaces with the same type are provided, only one can be default.",
						"0 (not default), 1 (default)",
					]
					default: 0
					choices: [0, 1]
				}
				useip: {
					type: "int"
					description: [
						"Connect to host interface with IP address instead of DNS name.",
						"0 (don't use ip), 1 (use ip)",
					]
					default: 0
					choices: [0, 1]
				}
				ip: {
					type: "str"
					description: [
						"IP address used by host interface.",
						"Required if I(useip=1).",
					]
					default: ""
				}
				dns: {
					type: "str"
					description: [
						"DNS name of the host interface.",
						"Required if I(useip=0).",
					]
					default: ""
				}
				port: {
					type: "str"
					description: [
						"Port used by host interface.",
						"If not specified, default port for each type of interface is used",
						"10050 if I(type='agent')",
						"161 if I(type='snmp')",
						"623 if I(type='ipmi')",
						"12345 if I(type='jmx')",
					]
				}
				bulk: {
					type: "int"
					description: [
						"Whether to use bulk SNMP requests.",
						"0 (don't use bulk requests), 1 (use bulk requests)",
					]
					choices: [0, 1]
					default: 1
				}
			}
			default: []
		}
		tls_connect: {
			description: [
				"Specifies what encryption to use for outgoing connections.",
				"Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).",
				"Works only with >= Zabbix 3.0",
			]
			default:       1
			version_added: "2.5"
		}
		tls_accept: {
			description: [
				"Specifies what types of connections are allowed for incoming connections.",
				"The tls_accept parameter accepts values of 1 to 7",
				"Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).",
				"Values can be combined.",
				"Works only with >= Zabbix 3.0",
			]
			default:       1
			version_added: "2.5"
		}
		tls_psk_identity: {
			description: [
				"It is a unique name by which this specific PSK is referred to by Zabbix components",
				"Do not put sensitive information in the PSK identity string, it is transmitted over the network unencrypted.",
				"Works only with >= Zabbix 3.0",
			]
			version_added: "2.5"
		}
		tls_psk: {
			description: [
				"PSK value is a hard to guess string of hexadecimal digits.",
				"The preshared key, at least 32 hex digits. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.",
				"Works only with >= Zabbix 3.0",
			]
			version_added: "2.5"
		}
		ca_cert: {
			description: [
				"Required certificate issuer.",
				"Works only with >= Zabbix 3.0",
			]
			version_added: "2.5"
			aliases: ["tls_issuer"]
		}
		tls_subject: {
			description: [
				"Required certificate subject.",
				"Works only with >= Zabbix 3.0",
			]
			version_added: "2.5"
		}
		ipmi_authtype: {
			description: [
				"IPMI authentication algorithm.",
				"Please review the Host object documentation for more information on the supported properties",
				"https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object",
				"Possible values are, C(0) (none), C(1) (MD2), C(2) (MD5), C(4) (straight), C(5) (OEM), C(6) (RMCP+), with -1 being the API default.",
				"Please note that the Zabbix API will treat absent settings as default when updating any of the I(ipmi_)-options; this means that if you attempt to set any of the four options individually, the rest will be reset to default values.",
			]

			version_added: "2.5"
		}
		ipmi_privilege: {
			description: [
				"IPMI privilege level.",
				"Please review the Host object documentation for more information on the supported properties",
				"https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object",
				"Possible values are C(1) (callback), C(2) (user), C(3) (operator), C(4) (admin), C(5) (OEM), with C(2) being the API default.",
				"also see the last note in the I(ipmi_authtype) documentation",
			]
			version_added: "2.5"
		}
		ipmi_username: {
			description: [
				"IPMI username.",
				"also see the last note in the I(ipmi_authtype) documentation",
			]
			version_added: "2.5"
		}
		ipmi_password: {
			description: [
				"IPMI password.",
				"also see the last note in the I(ipmi_authtype) documentation",
			]
			version_added: "2.5"
		}
		force: {
			description: [
				"Overwrite the host configuration, even if already present.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.0"
		}
	}
	extends_documentation_fragment: ["zabbix"]
}
