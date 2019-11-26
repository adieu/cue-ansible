package ansible

module: bigip_monitor_ldap: {
	module:            "bigip_monitor_ldap"
	short_description: "Manages BIG-IP LDAP monitors"
	description: [
		"Manages BIG-IP LDAP monitors.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Monitor name.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Specifies descriptive text that identifies the monitor.",
			]
			type: "str"
		}
		parent: {
			description: [
				"The parent template of this monitor template. Once this value has been set, it cannot be changed.",
				"By default, this value is the C(ldap) parent on the C(Common) partition.",
			]
			type:    "str"
			default: "/Common/ldap"
		}
		ip: {
			description: [
				"IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
			]

			type: "str"
		}
		port: {
			description: [
				"Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
				"Note that if specifying an IP address, a value between 1 and 65535 must be specified.",
			]

			type: "str"
		}
		interval: {
			description: [
				"Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.",
			]

			type: "int"
		}
		timeout: {
			description: [
				"Specifies the number of seconds the target has in which to respond to the monitor request.",
				"If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor.",
				"Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.",
			]

			type: "int"
		}
		time_until_up: {
			description: [
				"Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'.",
				"During the interval, all responses from the resource must be correct.",
				"When the interval expires, the resource is marked 'up'.",
				"A value of 0, means that the resource is marked up immediately upon receipt of the first correct response.",
			]

			type: "int"
		}
		up_interval: {
			description: [
				"Specifies the interval for the system to use to perform the health check when a resource is up.",
				"When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.",
				"When any other number, enables specification of a different interval to use when checking the health of a resource that is up.",
			]

			type: "int"
		}
		manual_resume: {
			description: [
				"Specifies whether the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.",
				"If you set this option to C(yes), you must manually re-enable the resource before the system can use it for load balancing connections.",
				"When C(yes), specifies that you must manually re-enable the resource after an unsuccessful monitor check.",
				"When C(no), specifies that the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.",
			]

			type: "bool"
		}
		target_username: {
			description: [
				"Specifies the user name, if the monitored target requires authentication.",
			]
			type: "str"
		}
		target_password: {
			description: [
				"Specifies the password, if the monitored target requires authentication.",
			]
			type: "str"
		}
		base: {
			description: [
				"Specifies the location in the LDAP tree from which the monitor starts the health check.",
			]

			type: "str"
		}
		filter: {
			description: [
				"Specifies an LDAP key for which the monitor searches.",
			]
			type: "str"
		}
		security: {
			description: [
				"Specifies the secure protocol type for communications with the target.",
			]
			type: "str"
			choices: [
				"none",
				"ssl",
				"tls",
			]
		}
		mandatory_attributes: {
			description: [
				"Specifies whether the target must include attributes in its response to be considered up.",
			]

			type: "bool"
		}
		chase_referrals: {
			description: [
				"Specifies whether, upon receipt of an LDAP referral entry, the target follows (or chases) that referral.",
			]

			type: "bool"
		}
		debug: {
			description: [
				"Specifies whether the monitor sends error messages and additional information to a log file created and labeled specifically for this monitor.",
			]

			type: "bool"
		}
		update_password: {
			description: [
				"C(always) will update passwords if the C(target_password) is specified.",
				"C(on_create) will only set the password for newly created monitors.",
			]
			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the monitor exists.",
				"When C(absent), ensures the monitor is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Greg Crosby (@crosbygw)",
	]
}
