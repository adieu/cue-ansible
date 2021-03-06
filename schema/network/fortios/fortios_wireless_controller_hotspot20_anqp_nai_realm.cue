package ansible

module: fortios_wireless_controller_hotspot20_anqp_nai_realm: {
	module:            "fortios_wireless_controller_hotspot20_anqp_nai_realm"
	short_description: "Configure network access identifier (NAI) realm in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller_hotspot20 feature and anqp_nai_realm category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.4",
	]

	version_added: "2.9"
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
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Indicates whether to create or remove the object.",
			]
			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
			]
		}
		wireless_controller_hotspot20_anqp_nai_realm: {
			description: [
				"Configure network access identifier (NAI) realm.",
			]
			default: null
			type:    "dict"
			suboptions: {
				nai_list: {
					description: [
						"NAI list.",
					]
					type: "list"
					suboptions: {
						eap_method: {
							description: [
								"EAP Methods.",
							]
							type: "list"
							suboptions: {
								auth_param: {
									description: [
										"EAP auth param.",
									]
									type: "str"
									suboptions: {
										id: {
											description: [
												"ID of authentication parameter.",
											]
											type: "str"
											choices: [
												"non-eap-inner-auth",
												"inner-auth-eap",
												"credential",
												"tunneled-credential",
											]
										}
										index: {
											description: [
												"Param index.",
											]
											required: true
											type:     "int"
										}
										val: {
											description: [
												"Value of authentication parameter.",
											]
											type: "str"
											choices: [
												"eap-identity",
												"eap-md5",
												"eap-tls",
												"eap-ttls",
												"eap-peap",
												"eap-sim",
												"eap-aka",
												"eap-aka-prime",
												"non-eap-pap",
												"non-eap-chap",
												"non-eap-mschap",
												"non-eap-mschapv2",
												"cred-sim",
												"cred-usim",
												"cred-nfc",
												"cred-hardware-token",
												"cred-softoken",
												"cred-certificate",
												"cred-user-pwd",
												"cred-none",
												"cred-vendor-specific",
												"tun-cred-sim",
												"tun-cred-usim",
												"tun-cred-nfc",
												"tun-cred-hardware-token",
												"tun-cred-softoken",
												"tun-cred-certificate",
												"tun-cred-user-pwd",
												"tun-cred-anonymous",
												"tun-cred-vendor-specific",
											]
										}
									}
								}
								index: {
									description: [
										"EAP method index.",
									]
									required: true
									type:     "int"
								}
								method: {
									description: [
										"EAP method type.",
									]
									type: "str"
									choices: [
										"eap-identity",
										"eap-md5",
										"eap-tls",
										"eap-ttls",
										"eap-peap",
										"eap-sim",
										"eap-aka",
										"eap-aka-prime",
									]
								}
							}
						}
						encoding: {
							description: [
								"Enable/disable format in accordance with IETF RFC 4282.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						nai_realm: {
							description: [
								"Configure NAI realms (delimited by a semi-colon character).",
							]
							type: "str"
						}
						name: {
							description: [
								"NAI realm name.",
							]
							required: true
							type:     "str"
						}
					}
				}
				name: {
					description: [
						"NAI realm list name.",
					]
					required: true
					type:     "str"
				}
			}
		}
	}
}
