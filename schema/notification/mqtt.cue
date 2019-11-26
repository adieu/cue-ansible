package ansible

module: mqtt: {
	module:            "mqtt"
	short_description: "Publish a message on an MQTT topic for the IoT"
	version_added:     "1.2"
	description: [
		"Publish a message on an MQTT topic.",
	]
	options: {
		server: {
			description: [
				"MQTT broker address/name",
			]
			default: "localhost"
		}
		port: {
			description: [
				"MQTT broker port number",
			]
			default: 1883
		}
		username: description: [
			"Username to authenticate against the broker.",
		]
		password: description: [
			"Password for C(username) to authenticate against the broker.",
		]
		client_id: {
			description: [
				"MQTT client identifier",
			]
			default: "hostname + pid"
		}
		topic: {
			description: [
				"MQTT topic name",
			]
			required: true
		}
		payload: {
			description: [
				"Payload. The special string C(\"None\") may be used to send a NULL (i.e. empty) payload which is useful to simply notify with the I(topic) or to clear previously retained messages.",
			]

			required: true
		}
		qos: {
			description: [
				"QoS (Quality of Service)",
			]
			default: 0
			choices: ["0", "1", "2"]
		}
		retain: {
			description: [
				"Setting this flag causes the broker to retain (i.e. keep) the message so that applications that subsequently subscribe to the topic can received the last retained message immediately.",
			]

			type:    "bool"
			default: "no"
		}
		ca_cert: {
			description: [
				"The path to the Certificate Authority certificate files that are to be treated as trusted by this client. If this is the only option given then the client will operate in a similar manner to a web browser. That is to say it will require the broker to have a certificate signed by the Certificate Authorities in ca_certs and will communicate using TLS v1, but will not attempt any form of authentication. This provides basic network encryption but may not be sufficient depending on how the broker is configured.",
			]

			version_added: 2.3
			aliases: ["ca_certs"]
		}
		client_cert: {
			description: [
				"The path pointing to the PEM encoded client certificate. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.",
			]

			version_added: 2.3
			aliases: ["certfile"]
		}
		client_key: {
			description: [
				"The path pointing to the PEM encoded client private key. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.",
			]

			version_added: 2.3
			aliases: ["keyfile"]
		}
		tls_version: {
			description: [
				"Specifies the version of the SSL/TLS protocol to be used.",
				"By default (if the python version supports it) the highest TLS version is detected. If unavailable, TLS v1 is used.",
			]

			type: "str"
			choices: [
				"tlsv1.1",
				"tlsv1.2",
			]
			version_added: 2.9
		}
	}
	requirements: ["mosquitto"]
	notes: [
		"This module requires a connection to an MQTT broker such as Mosquitto U(http://mosquitto.org) and the I(Paho) C(mqtt) Python client (U(https://pypi.org/project/paho-mqtt/)).",
	]

	author: "Jan-Piet Mens (@jpmens)"
}
