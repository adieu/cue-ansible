package radware

vdirect_commit :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	vdirect_commit: {

		// If C(no), save action will not be performed. Relevant for ADC devices only.

		save?: bool

		// If C(no), SSL certificates will not be validated,
		// may be set as C(VDIRECT_VALIDATE_CERTS) or C(VDIRECT_VERIFY) environment variable.
		// This should only set to C(no) used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// vDirect server password, may be set as C(VDIRECT_PASSWORD) environment variable.

		vdirect_password: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection,
		// may be set as C(VDIRECT_HTTPS) or C(VDIRECT_USE_SSL) environment variable.

		vdirect_use_ssl?: bool

		// vDirect server username, may be set as C(VDIRECT_USER) environment variable.

		vdirect_user: string

		// List of Radware Alteon device names for commit operations.

		devices: string

		// Primary vDirect server IP address, may be set as C(VDIRECT_IP) environment variable.

		vdirect_ip: string

		// Amount of time to wait for async operation completion [seconds],
		// may be set as C(VDIRECT_TIMEOUT) environment variable.

		vdirect_timeout?: string

		// If C(no), apply action will not be performed. Relevant for ADC devices only.

		apply?: bool

		// If C(no), sync action will not be performed. Relevant for ADC devices only.

		sync?: bool

		// vDirect server HTTP port number, may be set as C(VDIRECT_HTTP_PORT) environment variable.

		vdirect_http_port?: string

		// vDirect server HTTPS port number, may be set as C(VDIRECT_HTTPS_PORT) environment variable.

		vdirect_https_port?: string

		// Secondary vDirect server IP address, may be set as C(VDIRECT_SECONDARY_IP) environment variable.

		vdirect_secondary_ip?: string

		// Wait for async operation to complete, may be set as C(VDIRECT_WAIT) environment variable.

		vdirect_wait?: bool
	}
}

vdirect_file :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	vdirect_file: {

		// vDirect runnable file name to be uploaded.
		// May be velocity configuration template (.vm) or workflow template zip file (.zip).

		file_name: string

		// Primary vDirect server IP address, may be set as VDIRECT_IP environment variable.

		vdirect_ip: string

		// vDirect server password, may be set as VDIRECT_PASSWORD environment variable.

		vdirect_password: string

		// vDirect server username, may be set as VDIRECT_USER environment variable.

		vdirect_user: string

		// Wait for async operation to complete, may be set as VDIRECT_WAIT environment variable.

		vdirect_wait?: bool

		// If C(no), SSL certificates will not be validated,
		// may be set as VDIRECT_VALIDATE_CERTS or VDIRECT_VERIFY environment variable.
		// This should only set to C(no) used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// vDirect server HTTP port number, may be set as VDIRECT_HTTP_PORT environment variable.

		vdirect_http_port?: string

		// vDirect server HTTPS port number, may be set as VDIRECT_HTTPS_PORT environment variable.

		vdirect_https_port?: string

		// Secondary vDirect server IP address, may be set as VDIRECT_SECONDARY_IP environment variable.

		vdirect_secondary_ip?: string

		// Amount of time to wait for async operation completion [seconds],
		// may be set as VDIRECT_TIMEOUT environment variable.

		vdirect_timeout?: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection,
		// may be set as VDIRECT_HTTPS or VDIRECT_USE_SSL environment variable.

		vdirect_use_ssl?: bool
	}
}

vdirect_runnable :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	vdirect_runnable: {

		// vDirect server HTTP port number, may be set as C(VDIRECT_HTTP_PORT) environment variable.

		vdirect_http_port?: string

		// vDirect server HTTPS port number, may be set as C(VDIRECT_HTTPS_PORT) environment variable.

		vdirect_https_port?: string

		// Action parameters dictionary. In case of C(ConfigurationTemplate) runnable type,
		// the device connection details should always be passed as a parameter.

		parameters?: string

		// vDirect runnable name to run.
		// May be configuration template name, workflow template name or workflow instance name.

		runnable_name: string

		// vDirect runnable type.

		runnable_type: string

		// Secondary vDirect server IP address, may be set as C(VDIRECT_SECONDARY_IP) environment variable.

		vdirect_secondary_ip?: string

		// If C(no), an HTTP connection will be used instead of the default HTTPS connection,
		// may be set as C(VDIRECT_HTTPS) or C(VDIRECT_USE_SSL) environment variable.

		vdirect_use_ssl?: bool

		// If C(no), SSL certificates will not be validated,
		// may be set as C(VDIRECT_VALIDATE_CERTS) or C(VDIRECT_VERIFY) environment variable.
		// This should only set to C(no) used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// Primary vDirect server IP address, may be set as C(VDIRECT_IP) environment variable.

		vdirect_ip: string

		// vDirect server password, may be set as C(VDIRECT_PASSWORD) environment variable.

		vdirect_password: string

		// Wait for async operation to complete, may be set as C(VDIRECT_WAIT) environment variable.

		vdirect_wait?: bool

		// Workflow action name to run.
		// Required if I(runnable_type=Workflow).

		action_name?: string

		// Amount of time to wait for async operation completion [seconds],
		// may be set as C(VDIRECT_TIMEOUT) environment variable.

		vdirect_timeout?: string

		// vDirect server username, may be set as C(VDIRECT_USER) environment variable.

		vdirect_user: string
	}
}
