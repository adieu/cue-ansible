package ansible

module: avi_useraccount: {
	module:            "avi_useraccount"
	author:            "Chaitanya Deshpande (@chaitanyaavi) <chaitanya.deshpande@avinetworks.com>"
	short_description: "Avi UserAccount Module"
	description: [
		"This module can be used for updating the password of a user.",
		"This module is useful for setting up admin password for Controller bootstrap.",
	]
	version_added: 2.6
	requirements: ["avisdk"]
	options: {
		old_password: description: [
			"Old password for update password or default password for bootstrap.",
		]
		force_change: {
			description: [
				"If specifically set to true then old password is tried first for controller and then the new password is tried. If not specified this flag then the new password is tried first.",
			]

			version_added: "2.9"
		}
	}

	extends_documentation_fragment: ["avi"]
}
