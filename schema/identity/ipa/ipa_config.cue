package ansible

module: ipa_config: {
	module:            "ipa_config"
	author:            "Fran Fitzpatrick (@fxfitz)"
	short_description: "Manage Global FreeIPA Configuration Settings"
	description: [
		"Modify global configuration settings of a FreeIPA Server.",
	]
	options: {
		ipadefaultloginshell: {
			description: "Default shell for new users."
			aliases: ["loginshell"]
		}
		ipadefaultemaildomain: {
			description: "Default e-mail domain for new users."
			aliases: ["emaildomain"]
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.7"
}
