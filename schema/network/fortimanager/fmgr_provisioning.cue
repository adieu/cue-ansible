package ansible

module: fmgr_provisioning: {
	module:            "fmgr_provisioning"
	version_added:     "2.7"
	author:            "Andrew Welsh (@Ghilli3)"
	short_description: "Provision devices via FortiMananger"
	description: [
		"Add model devices on the FortiManager using jsonrpc API and have them pre-configured, so when central management is configured, the configuration is pushed down to the registering devices",
	]

	options: {
		adom: {
			description: [
				"The administrative domain (admon) the configuration belongs to",
			]
			required: true
		}
		vdom: description: [
			"The virtual domain (vdom) the configuration belongs to",
		]
		host: {
			description: [
				"The FortiManager's Address.",
			]
			required: true
		}
		username: {
			description: [
				"The username to log into the FortiManager",
			]
			required: true
		}
		password: {
			description: [
				"The password associated with the username account.",
			]
			required: false
		}

		policy_package: {
			description: [
				"The name of the policy package to be assigned to the device.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the device to be provisioned.",
			]
			required: true
		}
		group: {
			description: [
				"The name of the device group the provisioned device can belong to.",
			]
			required: false
		}
		serial: {
			description: [
				"The serial number of the device that will be provisioned.",
			]
			required: true
		}
		platform: {
			description: [
				"The platform of the device, such as model number or VM.",
			]
			required: true
		}
		description: {
			description: [
				"Description of the device to be provisioned.",
			]
			required: false
		}
		os_version: {
			description: [
				"The Fortinet OS version to be used for the device, such as 5.0 or 6.0.",
			]
			required: true
		}
		minor_release: {
			description: [
				"The minor release number such as 6.X.1, as X being the minor release.",
			]
			required: false
		}
		patch_release: {
			description: [
				"The patch release number such as 6.0.X, as X being the patch release.",
			]
			required: false
		}
		os_type: {
			description: [
				"The Fortinet OS type to be pushed to the device, such as 'FOS' for FortiOS.",
			]
			required: true
		}
	}
}
