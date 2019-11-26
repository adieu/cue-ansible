package ansible

module: keycloak_clienttemplate: {
	module: "keycloak_clienttemplate"

	short_description: "Allows administration of Keycloak client templates via Keycloak API"

	version_added: "2.5"

	description: [
		"This module allows the administration of Keycloak client templates via the Keycloak REST API. It requires access to the REST API via OpenID Connect; the user connecting and the client being used must have the requisite access rights. In a default Keycloak installation, admin-cli and an admin user would work, as would a separate client definition with the scope tailored to your needs and a user having the expected roles.",
		"The names of module options are snake_cased versions of the camelCase ones found in the Keycloak API and its documentation at U(http://www.keycloak.org/docs-api/3.3/rest-api/)",
		"The Keycloak API does not always enforce for only sensible settings to be used -- you can set SAML-specific settings on an OpenID Connect client for instance and vice versa. Be careful. If you do not specify a setting, usually a sensible default is chosen.",
	]

	options: {
		state: {
			description: [
				"State of the client template",
				"On C(present), the client template will be created (or updated if it exists already).",
				"On C(absent), the client template will be removed if it exists",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		id: description: [
			"Id of client template to be worked on. This is usually a UUID.",
		]

		realm: description: [
			"Realm this client template is found in.",
		]

		name: description: [
			"Name of the client template",
		]

		description: description: [
			"Description of the client template in Keycloak",
		]

		protocol: {
			description: [
				"Type of client template (either C(openid-connect) or C(saml).",
			]
			choices: ["openid-connect", "saml"]
		}

		full_scope_allowed: {
			description: [
				"Is the \"Full Scope Allowed\" feature set for this client template or not. This is 'fullScopeAllowed' in the Keycloak REST API.",
			]

			type: "bool"
		}

		protocol_mappers: {
			description: [
				"a list of dicts defining protocol mappers for this client template. This is 'protocolMappers' in the Keycloak REST API.",
			]

			suboptions: {
				consentRequired: description: [
					"Specifies whether a user needs to provide consent to a client for this mapper to be active.",
				]

				consentText: description: [
					"The human-readable name of the consent the user is presented to accept.",
				]

				id: description: [
					"Usually a UUID specifying the internal ID of this protocol mapper instance.",
				]

				name: description: [
					"The name of this protocol mapper.",
				]

				protocol: {
					description: [
						"is either 'openid-connect' or 'saml', this specifies for which protocol this protocol mapper is active.",
					]

					choices: ["openid-connect", "saml"]
				}

				protocolMapper: description: [
					"The Keycloak-internal name of the type of this protocol-mapper. While an exhaustive list is impossible to provide since this may be extended through SPIs by the user of Keycloak, by default Keycloak as of 3.4 ships with at least",
					"C(docker-v2-allow-all-mapper)",
					"C(oidc-address-mapper)",
					"C(oidc-full-name-mapper)",
					"C(oidc-group-membership-mapper)",
					"C(oidc-hardcoded-claim-mapper)",
					"C(oidc-hardcoded-role-mapper)",
					"C(oidc-role-name-mapper)",
					"C(oidc-script-based-protocol-mapper)",
					"C(oidc-sha256-pairwise-sub-mapper)",
					"C(oidc-usermodel-attribute-mapper)",
					"C(oidc-usermodel-client-role-mapper)",
					"C(oidc-usermodel-property-mapper)",
					"C(oidc-usermodel-realm-role-mapper)",
					"C(oidc-usersessionmodel-note-mapper)",
					"C(saml-group-membership-mapper)",
					"C(saml-hardcode-attribute-mapper)",
					"C(saml-hardcode-role-mapper)",
					"C(saml-role-list-mapper)",
					"C(saml-role-name-mapper)",
					"C(saml-user-attribute-mapper)",
					"C(saml-user-property-mapper)",
					"C(saml-user-session-note-mapper)",
					"An exhaustive list of available mappers on your installation can be obtained on the admin console by going to Server Info -> Providers and looking under 'protocol-mapper'.",
				]

				config: description: [
					"Dict specifying the configuration options for the protocol mapper; the contents differ depending on the value of I(protocolMapper) and are not documented other than by the source of the mappers and its parent class(es). An example is given below. It is easiest to obtain valid config values by dumping an already-existing protocol mapper configuration through check-mode in the \"existing\" field.",
				]
			}
		}

		attributes: description: [
			"A dict of further attributes for this client template. This can contain various configuration settings, though in the default installation of Keycloak as of 3.4, none are documented or known, so this is usually empty.",
		]
	}

	notes: [
		"The Keycloak REST API defines further fields (namely I(bearerOnly), I(consentRequired), I(standardFlowEnabled), I(implicitFlowEnabled), I(directAccessGrantsEnabled), I(serviceAccountsEnabled), I(publicClient), and I(frontchannelLogout)) which, while available with keycloak_client, do not have any effect on Keycloak client-templates and are discarded if supplied with an API request changing client-templates. As such, they are not available through this module.",
	]

	extends_documentation_fragment: [
		"keycloak",
	]

	author: ["Eike Frost (@eikef)"]
}
