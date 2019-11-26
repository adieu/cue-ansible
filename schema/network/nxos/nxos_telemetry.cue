package ansible

module: nxos_telemetry: {
	module:            "nxos_telemetry"
	version_added:     2.9
	short_description: "Telemetry Monitoring Service (TMS) configuration"
	description:       "Manages Telemetry Monitoring Service (TMS) configuration"
	author:            "Mike Wiebe (@mikewiebe)"
	notes: [
		"Supported on N9k Version 7.0(3)I7(5) and later.",
	]
	options: {
		config: {
			description: "The provided configuration"
			type:        "dict"
			suboptions: {
				certificate: {
					type: "dict"
					description: [
						"Certificate SSL/TLS and hostname values.",
						"Value must be a dict defining values for keys (key and hostname).",
					]
					suboptions: {
						key: {
							description: [
								"Certificate key",
							]
							type: "str"
						}
						hostname: {
							description: [
								"Certificate hostname",
							]
							type: "str"
						}
					}
				}
				compression: {
					type: "str"
					description: [
						"Destination profile compression method.",
					]
					choices: [
						"gzip",
					]
				}
				source_interface: {
					type: "str"
					description: [
						"Destination profile source interface.",
						"Valid value is a str representing the source interface name.",
					]
				}
				vrf: {
					type: "str"
					description: [
						"Destination profile vrf.",
						"Valid value is a str representing the vrf name.",
					]
				}
				destination_groups: {
					type: "list"
					description: [
						"List of telemetry destination groups.",
					]
					suboptions: {
						id: {
							type: "int"
							description: [
								"Destination group identifier.",
								"Value must be a int representing the destination group identifier.",
							]
						}
						destination: {
							type: "dict"
							description: [
								"Group destination ipv4, port, protocol and encoding values.",
								"Value must be a dict defining values for keys (ip, port, protocol, encoding).",
							]
							suboptions: {
								ip: {
									type: "str"
									description: [
										"Destination group IP address.",
									]
								}
								port: {
									type: "int"
									description: [
										"Destination group port number.",
									]
								}
								protocol: {
									type: "str"
									description: [
										"Destination group protocol.",
									]
									choices: [
										"HTTP",
										"TCP",
										"UDP",
										"gRPC",
									]
								}
								encoding: {
									type: "str"
									description: [
										"Destination group encoding.",
									]
									choices: [
										"GPB",
										"JSON",
									]
								}
							}
						}
					}
				}
				sensor_groups: {
					type: "list"
					description: [
						"List of telemetry sensor groups.",
					]
					suboptions: {
						id: {
							type: "int"
							description: [
								"Sensor group identifier.",
								"Value must be a int representing the sensor group identifier.",
							]
						}
						data_source: {
							type: "str"
							description: [
								"Telemetry data source.",
							]
							choices: [
								"NX-API",
								"DME",
								"YANG",
							]
						}
						path: {
							type: "dict"
							description: [
								"Telemetry sensor path.",
								"Value must be a dict defining values for keys (name, depth, filter_condition, query_condition).",
								"Mandatory Keys (name)",
								"Optional Keys  (depth, filter_condition, query_condition)",
							]
							suboptions: {
								name: {
									type: "str"
									description: [
										"Sensor group path name.",
									]
								}
								depth: {
									type: "str"
									description: [
										"Sensor group depth.",
									]
								}
								filter_condition: {
									type: "str"
									description: [
										"Sensor group filter condition.",
									]
								}
								query_condition: {
									type: "str"
									description: [
										"Sensor group query condition.",
									]
								}
							}
						}
					}
				}
				subscriptions: {
					type: "list"
					description: [
						"List of telemetry subscriptions.",
					]
					suboptions: {
						id: {
							type: "int"
							description: [
								"Subscription identifier.",
								"Value must be a int representing the subscription identifier.",
							]
						}
						destination_group: {
							type: "int"
							description: [
								"Associated destination group.",
							]
						}
						sensor_group: {
							type: "dict"
							description: [
								"Associated sensor group.",
								"Value must be a dict defining values for keys (id, sample_interval).",
							]
							suboptions: {
								id: {
									type: "int"
									description: [
										"Associated sensor group id.",
									]
								}
								sample_interval: {
									type: "int"
									description: [
										"Associated sensor group id sample interval.",
									]
								}
							}
						}
					}
				}
			}
		}

		state: {
			description: [
				"Final configuration state",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"deleted",
			]
			default: "merged"
		}
	}
}
