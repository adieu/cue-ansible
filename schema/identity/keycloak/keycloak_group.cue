package ansible

module: keycloak_group: {
	module: "keycloak_group"

	short_description: "Allows administration of Keycloak groups via Keycloak API"

	description: [
		"This module allows you to add, remove or modify Keycloak groups via the Keycloak REST API. It requires access to the REST API via OpenID Connect; the user connecting and the client being used must have the requisite access rights. In a default Keycloak installation, admin-cli and an admin user would work, as would a separate client definition with the scope tailored to your needs and a user having the expected roles.",
		"The names of module options are snake_cased versions of the camelCase ones found in the Keycloak API and its documentation at U(http://www.keycloak.org/docs-api/3.3/rest-api/).",
		"Attributes are multi-valued in the Keycloak API. All attributes are lists of individual values and will be returned that way by this module. You may pass single values for attributes when calling the module, and this will be translated into a list suitable for the API.",
		"When updating a group, where possible provide the group ID to the module. This removes a lookup to the API to translate the name into the group ID.",
	]

	version_added: "2.8"

	options: {
		state: {
			description: [
				"State of the group.",
				"On C(present), the group will be created if it does not yet exist, or updated with the parameters you provide.",
				"On C(absent), the group will be removed if it exists.",
			]
			required: true
			default:  "present"
			type:     "str"
			choices: [
				"present",
				"absent",
			]
		}

		name: {
			type: "str"
			description: [
				"Name of the group.",
				"This parameter is required only when creating or updating the group.",
			]
		}

		realm: {
			type: "str"
			description: [
				"They Keycloak realm under which this group resides.",
			]
			default: "master"
		}

		id: {
			type: "str"
			description: [
				"The unique identifier for this group.",
				"This parameter is not required for updating or deleting a group but providing it will reduce the number of API calls required.",
			]
		}

		attributes: {
			type: "dict"
			description: [
				"A dict of key/value pairs to set as custom attributes for the group.",
				"Values may be single values (e.g. a string) or a list of strings.",
			]
		}
	}

	notes: [
		"Presently, the I(realmRoles), I(clientRoles) and I(access) attributes returned by the Keycloak API are read-only for groups. This limitation will be removed in a later version of this module.",
	]

	extends_documentation_fragment: [
		"keycloak",
	]

	author: ["Adam Goossens (@adamgoossens)"]
}
