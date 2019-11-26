package ansible

module: netapp_e_iscsi_target: {
	module:            "netapp_e_iscsi_target"
	short_description: "NetApp E-Series manage iSCSI target configuration"
	description: [
		"Configure the settings of an E-Series iSCSI target",
	]
	version_added: "2.7"
	author:        "Michael Price (@lmprice)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		name: {
			description: [
				"The name/alias to assign to the iSCSI target.",
				"This alias is often used by the initiator software in order to make an iSCSI target easier to identify.",
			]
			aliases: [
				"alias",
			]
		}
		ping: {
			description: [
				"Enable ICMP ping responses from the configured iSCSI ports.",
			]
			type:    "bool"
			default: true
		}
		chap_secret: {
			description: [
				"Enable Challenge-Handshake Authentication Protocol (CHAP), utilizing this value as the password.",
				"When this value is specified, we will always trigger an update (changed=True). We have no way of verifying whether or not the password has changed.",
				"The chap secret may only use ascii characters with values between 32 and 126 decimal.",
				"The chap secret must be no less than 12 characters, but no greater than 57 characters in length.",
				"The chap secret is cleared when not specified or an empty string.",
			]
			aliases: [
				"chap",
				"password",
			]
		}
		unnamed_discovery: {
			description: [
				"When an initiator initiates a discovery session to an initiator port, it is considered an unnamed discovery session if the iSCSI target iqn is not specified in the request.",
				"This option may be disabled to increase security if desired.",
			]
			type:    "bool"
			default: true
		}
		log_path: {
			description: [
				"A local path (on the Ansible controller), to a file to be used for debug logging.",
			]
			required: false
		}
	}
	notes: [
		"Check mode is supported.",
		"Some of the settings are dependent on the settings applied to the iSCSI interfaces. These can be configured using M(netapp_e_iscsi_interface).",
		"This module requires a Web Services API version of >= 1.3.",
	]
}
