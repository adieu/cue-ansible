package keycloak

keycloak_group :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	keycloak_group: {

		// A dict of key/value pairs to set as custom attributes for the group.
		// Values may be single values (e.g. a string) or a list of strings.

		attributes?: {...}

		// The unique identifier for this group.
		// This parameter is not required for updating or deleting a group but providing it will reduce the number of API calls required.

		id?: string

		// Name of the group.
		// This parameter is required only when creating or updating the group.

		name?: string

		// They Keycloak realm under which this group resides.

		realm?: string

		// State of the group.
		// On C(present), the group will be created if it does not yet exist, or updated with the parameters you provide.
		// On C(absent), the group will be removed if it exists.

		state: string
	}
}

onepassword_info :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	onepassword_info: {

		// A dictionary containing authentication details. If this is set, M(onepassword_info) will attempt to sign in to 1Password automatically.
		// Without this option, you must have already logged in via the 1Password CLI before running Ansible.
		// It is B(highly) recommended to store 1Password credentials in an Ansible Vault. Ensure that the key used to encrypt the Ansible Vault is equal to or greater in strength than the 1Password master password.

		auto_login?: {...}

		// Used to specify the exact path to the C(op) command line interface

		cli_path?: string

		// A list of one or more search terms.
		// Each search term can either be a simple string or it can be a dictionary for more control.
		// When passing a simple string, I(field) is assumed to be C(password).
		// When passing a dictionary, the following fields are available.

		search_terms: [...]
	}
}

keycloak_client :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	keycloak_client: {

		// The realm to create the client in.

		realm?: string

		// Whether or not surrogate auth is required. This is 'surrogateAuthRequired' in the Keycloak REST API.

		surrogate_auth_required?: bool

		// Whether or not to use mapper configuration from the I(client_template). This is 'useTemplateMappers' in the Keycloak REST API.

		use_template_mappers?: bool

		// Default URL to use when the auth server needs to redirect or link back to the client This is 'baseUrl' in the Keycloak REST API.

		base_url?: string

		// Revoke any tokens issued before this date for this client (this is a UNIX timestamp). This is 'notBefore' in the Keycloak REST API.

		not_before?: string

		// Is frontchannel logout enabled for this client or not. This is 'frontchannelLogout' in the Keycloak REST API.

		frontchannel_logout?: bool

		// Enable implicit flow for this client or not (OpenID connect). This is 'implicitFlowEnabled' in the Keycloak REST API.

		implicit_flow_enabled?: bool

		// Type of client (either C(openid-connect) or C(saml).

		protocol?: string

		// Acceptable redirect URIs for this client. This is 'redirectUris' in the Keycloak REST API.

		redirect_uris?: string

		// The registration access token provides access for clients to the client registration service. This is 'registrationAccessToken' in the Keycloak REST API.

		registration_access_token?: string

		// Client id of client to be worked on. This is usually an alphanumeric name chosen by you. Either this or I(id) is required. If you specify both, I(id) takes precedence. This is 'clientId' in the Keycloak REST API.

		client_id?: string

		// list of default roles for this client. If the client roles referenced do not exist yet, they will be created. This is 'defaultRoles' in the Keycloak REST API.

		default_roles?: string

		// URL to the admin interface of the client This is 'adminUrl' in the Keycloak REST API.

		admin_url?: string

		// How do clients authenticate with the auth server? Either C(client-secret) or C(client-jwt) can be chosen. When using C(client-secret), the module parameter I(secret) can set it, while for C(client-jwt), you can use the keys C(use.jwks.url), C(jwks.url), and C(jwt.credential.certificate) in the I(attributes) module parameter to configure its behavior. This is 'clientAuthenticatorType' in the Keycloak REST API.

		client_authenticator_type?: string

		// Is this client enabled or not?

		enabled?: bool

		// Id of client to be worked on. This is usually an UUID. Either this or I(client_id) is required. If you specify both, this takes precedence.

		id?: string

		// Cluster node re-registration timeout for this client. This is 'nodeReRegistrationTimeout' in the Keycloak REST API.

		node_re_registration_timeout?: string

		// Are service accounts enabled for this client or not (OpenID connect). This is 'serviceAccountsEnabled' in the Keycloak REST API.

		service_accounts_enabled?: bool

		// List of allowed CORS origins. This is 'webOrigins' in the Keycloak REST API.

		web_origins?: string

		// a data structure defining the authorization settings for this client. For reference, please see the Keycloak API docs at U(http://www.keycloak.org/docs-api/3.3/rest-api/index.html#_resourceserverrepresentation). This is 'authorizationSettings' in the Keycloak REST API.

		authorization_settings?: string

		// The access type of this client is bearer-only. This is 'bearerOnly' in the Keycloak REST API.

		bearer_only?: bool

		// Whether or not to use configuration from the I(client_template). This is 'useTemplateConfig' in the Keycloak REST API.

		use_template_config?: bool

		// Whether or not to use scope configuration from the I(client_template). This is 'useTemplateScope' in the Keycloak REST API.

		use_template_scope?: bool

		// Name of the client (this is not the same as I(client_id))

		name?: string

		// Root URL appended to relative URLs for this client This is 'rootUrl' in the Keycloak REST API.

		root_url?: string

		// Are direct access grants enabled for this client or not (OpenID connect). This is 'directAccessGrantsEnabled' in the Keycloak REST API.

		direct_access_grants_enabled?: bool

		// Is the access type for this client public or not. This is 'publicClient' in the Keycloak REST API.

		public_client?: bool

		// When using I(client_authenticator_type) C(client-secret) (the default), you can specify a secret here (otherwise one will be generated if it does not exit). If changing this secret, the module will not register a change currently (but the changed secret will be saved).

		secret?: string

		// State of the client
		// On C(present), the client will be created (or updated if it exists already).
		// On C(absent), the client will be removed if it exists

		state?: string

		// A dict of further attributes for this client. This can contain various configuration settings; an example is given in the examples section. While an exhaustive list of permissible options is not available; possible options as of Keycloak 3.4 are listed below. The Keycloak API does not validate whether a given option is appropriate for the protocol used; if specified anyway, Keycloak will simply not use it.

		attributes?: string

		// If enabled, users have to consent to client access. This is 'consentRequired' in the Keycloak REST API.

		consent_required?: bool

		// Description of the client in Keycloak

		description?: string

		// Is the "Full Scope Allowed" feature set for this client or not. This is 'fullScopeAllowed' in the Keycloak REST API.

		full_scope_allowed?: bool

		// a list of dicts defining protocol mappers for this client. This is 'protocolMappers' in the Keycloak REST API.

		protocol_mappers?: string

		// dict of registered cluster nodes (with C(nodename) as the key and last registration time as the value). This is 'registeredNodes' in the Keycloak REST API.

		registered_nodes?: string

		// Enable standard flow for this client or not (OpenID connect). This is 'standardFlowEnabled' in the Keycloak REST API.

		standard_flow_enabled?: bool

		// Are authorization services enabled for this client or not (OpenID connect). This is 'authorizationServicesEnabled' in the Keycloak REST API.

		authorization_services_enabled?: bool

		// Client template to use for this client. If it does not exist this field will silently be dropped. This is 'clientTemplate' in the Keycloak REST API.

		client_template?: string
	}
}

keycloak_clienttemplate :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	keycloak_clienttemplate: {

		// A dict of further attributes for this client template. This can contain various configuration settings, though in the default installation of Keycloak as of 3.4, none are documented or known, so this is usually empty.

		attributes?: string

		// a list of dicts defining protocol mappers for this client template. This is 'protocolMappers' in the Keycloak REST API.

		protocol_mappers?: string

		// State of the client template
		// On C(present), the client template will be created (or updated if it exists already).
		// On C(absent), the client template will be removed if it exists

		state?: string

		// Description of the client template in Keycloak

		description?: string

		// Is the "Full Scope Allowed" feature set for this client template or not. This is 'fullScopeAllowed' in the Keycloak REST API.

		full_scope_allowed?: bool

		// Id of client template to be worked on. This is usually a UUID.

		id?: string

		// Name of the client template

		name?: string

		// Type of client template (either C(openid-connect) or C(saml).

		protocol?: string

		// Realm this client template is found in.

		realm?: string
	}
}
