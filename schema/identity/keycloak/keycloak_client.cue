package ansible

module: keycloak_client: {
	module: "keycloak_client"

	short_description: "Allows administration of Keycloak clients via Keycloak API"

	version_added: "2.5"

	description: [
		"This module allows the administration of Keycloak clients via the Keycloak REST API. It requires access to the REST API via OpenID Connect; the user connecting and the client being used must have the requisite access rights. In a default Keycloak installation, admin-cli and an admin user would work, as would a separate client definition with the scope tailored to your needs and a user having the expected roles.",
		"The names of module options are snake_cased versions of the camelCase ones found in the Keycloak API and its documentation at U(http://www.keycloak.org/docs-api/3.3/rest-api/). Aliases are provided so camelCased versions can be used as well.",
		"The Keycloak API does not always sanity check inputs e.g. you can set SAML-specific settings on an OpenID Connect client for instance and vice versa. Be careful. If you do not specify a setting, usually a sensible default is chosen.",
	]

	options: {
		state: {
			description: [
				"State of the client",
				"On C(present), the client will be created (or updated if it exists already).",
				"On C(absent), the client will be removed if it exists",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		realm: description: [
			"The realm to create the client in.",
		]

		client_id: {
			description: [
				"Client id of client to be worked on. This is usually an alphanumeric name chosen by you. Either this or I(id) is required. If you specify both, I(id) takes precedence. This is 'clientId' in the Keycloak REST API.",
			]

			aliases: [
				"clientId",
			]
		}

		id: description: [
			"Id of client to be worked on. This is usually an UUID. Either this or I(client_id) is required. If you specify both, this takes precedence.",
		]

		name: description: [
			"Name of the client (this is not the same as I(client_id))",
		]

		description: description: [
			"Description of the client in Keycloak",
		]

		root_url: {
			description: [
				"Root URL appended to relative URLs for this client This is 'rootUrl' in the Keycloak REST API.",
			]

			aliases: [
				"rootUrl",
			]
		}

		admin_url: {
			description: [
				"URL to the admin interface of the client This is 'adminUrl' in the Keycloak REST API.",
			]

			aliases: [
				"adminUrl",
			]
		}

		base_url: {
			description: [
				"Default URL to use when the auth server needs to redirect or link back to the client This is 'baseUrl' in the Keycloak REST API.",
			]

			aliases: [
				"baseUrl",
			]
		}

		enabled: {
			description: [
				"Is this client enabled or not?",
			]
			type: "bool"
		}

		client_authenticator_type: {
			description: [
				"How do clients authenticate with the auth server? Either C(client-secret) or C(client-jwt) can be chosen. When using C(client-secret), the module parameter I(secret) can set it, while for C(client-jwt), you can use the keys C(use.jwks.url), C(jwks.url), and C(jwt.credential.certificate) in the I(attributes) module parameter to configure its behavior. This is 'clientAuthenticatorType' in the Keycloak REST API.",
			]

			choices: ["client-secret", "client-jwt"]
			aliases: [
				"clientAuthenticatorType",
			]
		}

		secret: description: [
			"When using I(client_authenticator_type) C(client-secret) (the default), you can specify a secret here (otherwise one will be generated if it does not exit). If changing this secret, the module will not register a change currently (but the changed secret will be saved).",
		]

		registration_access_token: {
			description: [
				"The registration access token provides access for clients to the client registration service. This is 'registrationAccessToken' in the Keycloak REST API.",
			]

			aliases: [
				"registrationAccessToken",
			]
		}

		default_roles: {
			description: [
				"list of default roles for this client. If the client roles referenced do not exist yet, they will be created. This is 'defaultRoles' in the Keycloak REST API.",
			]

			aliases: [
				"defaultRoles",
			]
		}

		redirect_uris: {
			description: [
				"Acceptable redirect URIs for this client. This is 'redirectUris' in the Keycloak REST API.",
			]

			aliases: [
				"redirectUris",
			]
		}

		web_origins: {
			description: [
				"List of allowed CORS origins. This is 'webOrigins' in the Keycloak REST API.",
			]

			aliases: [
				"webOrigins",
			]
		}

		not_before: {
			description: [
				"Revoke any tokens issued before this date for this client (this is a UNIX timestamp). This is 'notBefore' in the Keycloak REST API.",
			]

			aliases: [
				"notBefore",
			]
		}

		bearer_only: {
			description: [
				"The access type of this client is bearer-only. This is 'bearerOnly' in the Keycloak REST API.",
			]

			aliases: [
				"bearerOnly",
			]
			type: "bool"
		}

		consent_required: {
			description: [
				"If enabled, users have to consent to client access. This is 'consentRequired' in the Keycloak REST API.",
			]

			aliases: [
				"consentRequired",
			]
			type: "bool"
		}

		standard_flow_enabled: {
			description: [
				"Enable standard flow for this client or not (OpenID connect). This is 'standardFlowEnabled' in the Keycloak REST API.",
			]

			aliases: [
				"standardFlowEnabled",
			]
			type: "bool"
		}

		implicit_flow_enabled: {
			description: [
				"Enable implicit flow for this client or not (OpenID connect). This is 'implicitFlowEnabled' in the Keycloak REST API.",
			]

			aliases: [
				"implicitFlowEnabled",
			]
			type: "bool"
		}

		direct_access_grants_enabled: {
			description: [
				"Are direct access grants enabled for this client or not (OpenID connect). This is 'directAccessGrantsEnabled' in the Keycloak REST API.",
			]

			aliases: [
				"directAccessGrantsEnabled",
			]
			type: "bool"
		}

		service_accounts_enabled: {
			description: [
				"Are service accounts enabled for this client or not (OpenID connect). This is 'serviceAccountsEnabled' in the Keycloak REST API.",
			]

			aliases: [
				"serviceAccountsEnabled",
			]
			type: "bool"
		}

		authorization_services_enabled: {
			description: [
				"Are authorization services enabled for this client or not (OpenID connect). This is 'authorizationServicesEnabled' in the Keycloak REST API.",
			]

			aliases: [
				"authorizationServicesEnabled",
			]
			type: "bool"
		}

		public_client: {
			description: [
				"Is the access type for this client public or not. This is 'publicClient' in the Keycloak REST API.",
			]

			aliases: [
				"publicClient",
			]
			type: "bool"
		}

		frontchannel_logout: {
			description: [
				"Is frontchannel logout enabled for this client or not. This is 'frontchannelLogout' in the Keycloak REST API.",
			]

			aliases: [
				"frontchannelLogout",
			]
			type: "bool"
		}

		protocol: {
			description: [
				"Type of client (either C(openid-connect) or C(saml).",
			]
			choices: ["openid-connect", "saml"]
		}

		full_scope_allowed: {
			description: [
				"Is the \"Full Scope Allowed\" feature set for this client or not. This is 'fullScopeAllowed' in the Keycloak REST API.",
			]

			aliases: [
				"fullScopeAllowed",
			]
			type: "bool"
		}

		node_re_registration_timeout: {
			description: [
				"Cluster node re-registration timeout for this client. This is 'nodeReRegistrationTimeout' in the Keycloak REST API.",
			]

			aliases: [
				"nodeReRegistrationTimeout",
			]
		}

		registered_nodes: {
			description: [
				"dict of registered cluster nodes (with C(nodename) as the key and last registration time as the value). This is 'registeredNodes' in the Keycloak REST API.",
			]

			aliases: [
				"registeredNodes",
			]
		}

		client_template: {
			description: [
				"Client template to use for this client. If it does not exist this field will silently be dropped. This is 'clientTemplate' in the Keycloak REST API.",
			]

			aliases: [
				"clientTemplate",
			]
		}

		use_template_config: {
			description: [
				"Whether or not to use configuration from the I(client_template). This is 'useTemplateConfig' in the Keycloak REST API.",
			]

			aliases: [
				"useTemplateConfig",
			]
			type: "bool"
		}

		use_template_scope: {
			description: [
				"Whether or not to use scope configuration from the I(client_template). This is 'useTemplateScope' in the Keycloak REST API.",
			]

			aliases: [
				"useTemplateScope",
			]
			type: "bool"
		}

		use_template_mappers: {
			description: [
				"Whether or not to use mapper configuration from the I(client_template). This is 'useTemplateMappers' in the Keycloak REST API.",
			]

			aliases: [
				"useTemplateMappers",
			]
			type: "bool"
		}

		surrogate_auth_required: {
			description: [
				"Whether or not surrogate auth is required. This is 'surrogateAuthRequired' in the Keycloak REST API.",
			]

			aliases: [
				"surrogateAuthRequired",
			]
			type: "bool"
		}

		authorization_settings: {
			description: [
				"a data structure defining the authorization settings for this client. For reference, please see the Keycloak API docs at U(http://www.keycloak.org/docs-api/3.3/rest-api/index.html#_resourceserverrepresentation). This is 'authorizationSettings' in the Keycloak REST API.",
			]

			aliases: [
				"authorizationSettings",
			]
		}

		protocol_mappers: {
			description: [
				"a list of dicts defining protocol mappers for this client. This is 'protocolMappers' in the Keycloak REST API.",
			]

			aliases: [
				"protocolMappers",
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
						"This is either C(openid-connect) or C(saml), this specifies for which protocol this protocol mapper is active.",
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
					"Dict specifying the configuration options for the protocol mapper; the contents differ depending on the value of I(protocolMapper) and are not documented other than by the source of the mappers and its parent class(es). An example is given below. It is easiest to obtain valid config values by dumping an already-existing protocol mapper configuration through check-mode in the I(existing) field.",
				]
			}
		}

		attributes: {
			description: [
				"A dict of further attributes for this client. This can contain various configuration settings; an example is given in the examples section. While an exhaustive list of permissible options is not available; possible options as of Keycloak 3.4 are listed below. The Keycloak API does not validate whether a given option is appropriate for the protocol used; if specified anyway, Keycloak will simply not use it.",
			]

			suboptions: {
				"saml.authnstatement": description: [
					"For SAML clients, boolean specifying whether or not a statement containing method and timestamp should be included in the login response.",
				]

				"saml.client.signature": description: [
					"For SAML clients, boolean specifying whether a client signature is required and validated.",
				]

				"saml.encrypt": description: [
					"Boolean specifying whether SAML assertions should be encrypted with the client's public key.",
				]

				"saml.force.post.binding": description: [
					"For SAML clients, boolean specifying whether always to use POST binding for responses.",
				]

				"saml.onetimeuse.condition": description: [
					"For SAML clients, boolean specifying whether a OneTimeUse condition should be included in login responses.",
				]

				"saml.server.signature": description: [
					"Boolean specifying whether SAML documents should be signed by the realm.",
				]

				"saml.server.signature.keyinfo.ext": description: [
					"For SAML clients, boolean specifying whether REDIRECT signing key lookup should be optimized through inclusion of the signing key id in the SAML Extensions element.",
				]

				"saml.signature.algorithm": description: [
					"Signature algorithm used to sign SAML documents. One of C(RSA_SHA256), C(RSA_SHA1), C(RSA_SHA512), or C(DSA_SHA1).",
				]

				"saml.signing.certificate": description: [
					"SAML signing key certificate, base64-encoded.",
				]

				"saml.signing.private.key": description: [
					"SAML signing key private key, base64-encoded.",
				]

				saml_assertion_consumer_url_post: description: [
					"SAML POST Binding URL for the client's assertion consumer service (login responses).",
				]

				saml_assertion_consumer_url_redirect: description: [
					"SAML Redirect Binding URL for the client's assertion consumer service (login responses).",
				]

				saml_force_name_id_format: description: [
					"For SAML clients, Boolean specifying whether to ignore requested NameID subject format and using the configured one instead.",
				]

				saml_name_id_format: description: [
					"For SAML clients, the NameID format to use (one of C(username), C(email), C(transient), or C(persistent))",
				]

				saml_signature_canonicalization_method: description: [
					"SAML signature canonicalization method. This is one of four values, namely C(http://www.w3.org/2001/10/xml-exc-c14n#) for EXCLUSIVE, C(http://www.w3.org/2001/10/xml-exc-c14n#WithComments) for EXCLUSIVE_WITH_COMMENTS, C(http://www.w3.org/TR/2001/REC-xml-c14n-20010315) for INCLUSIVE, and C(http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments) for INCLUSIVE_WITH_COMMENTS.",
				]

				saml_single_logout_service_url_post: description: [
					"SAML POST binding url for the client's single logout service.",
				]

				saml_single_logout_service_url_redirect: description: [
					"SAML redirect binding url for the client's single logout service.",
				]

				"user.info.response.signature.alg": description: [
					"For OpenID-Connect clients, JWA algorithm for signed UserInfo-endpoint responses. One of C(RS256) or C(unsigned).",
				]

				"request.object.signature.alg": description: [
					"For OpenID-Connect clients, JWA algorithm which the client needs to use when sending OIDC request object. One of C(any), C(none), C(RS256).",
				]

				"use.jwks.url": description: [
					"For OpenID-Connect clients, boolean specifying whether to use a JWKS URL to obtain client public keys.",
				]

				"jwks.url": description: [
					"For OpenID-Connect clients, URL where client keys in JWK are stored.",
				]

				"jwt.credential.certificate": description: [
					"For OpenID-Connect clients, client certificate for validating JWT issued by client and signed by its key, base64-encoded.",
				]
			}
		}
	}

	extends_documentation_fragment: [
		"keycloak",
	]

	author: ["Eike Frost (@eikef)"]
}
