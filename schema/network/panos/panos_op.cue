package ansible

module: panos_op: {
	module:            "panos_op"
	short_description: "execute arbitrary OP commands on PANW devices (e.g. show interface all)"
	description:       "This module will allow user to pass and execute any supported OP command on the PANW device."
	author:            "Ivan Bojer (@ivanbojer)"
	version_added:     "2.5"
	requirements: [
		"pan-python can be obtained from PyPI U(https://pypi.org/project/pan-python/)",
		"pandevice can be obtained from PyPI U(https://pypi.org/project/pandevice/)",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	notes: [
		"Checkmode is NOT supported.",
		"Panorama is NOT supported.",
	]
	options: {
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device or Panorama management console being configured.",
			]
			required: true
		}
		username: {
			description: [
				"Username credentials to use for authentication.",
			]
			required: false
			default:  "admin"
		}
		password: {
			description: [
				"Password credentials to use for authentication.",
			]
			required: true
		}
		api_key: description: [
			"API key that can be used instead of I(username)/I(password) credentials.",
		]
		cmd: {
			description: [
				"The OP command to be performed.",
			]
			required: true
		}
	}
}
