package ansible

module: bigip_device_httpd: {
	module:            "bigip_device_httpd"
	short_description: "Manage HTTPD related settings on BIG-IP"
	description: [
		"Manages HTTPD related settings on the BIG-IP. These settings are interesting to change when you want to set GUI timeouts and other TMUI related settings.",
	]

	version_added: 2.5
	options: {
		allow: {
			description: [
				"Specifies, if you have enabled HTTPD access, the IP address or address range for other systems that can communicate with this system.",
				"To specify all addresses, use the value C(all).",
				"IP address can be specified, such as 172.27.1.10.",
				"IP ranges can be specified, such as 172.27.*.* or 172.27.0.0/255.255.0.0.",
			]
			type: "list"
		}
		auth_name: {
			description: [
				"Sets the BIG-IP authentication realm name.",
			]
			type: "str"
		}
		auth_pam_idle_timeout: {
			description: [
				"Sets the GUI timeout for automatic logout, in seconds.",
			]
			type: "int"
		}
		auth_pam_validate_ip: {
			description: [
				"Sets the authPamValidateIp setting.",
			]
			type: "bool"
		}
		auth_pam_dashboard_timeout: {
			description: [
				"Sets whether or not the BIG-IP dashboard will timeout.",
			]
			type: "bool"
		}
		fast_cgi_timeout: {
			description: [
				"Sets the timeout of FastCGI.",
			]
			type: "int"
		}
		hostname_lookup: {
			description: [
				"Sets whether or not to display the hostname, if possible.",
			]
			type: "bool"
		}
		log_level: {
			description: [
				"Sets the minimum httpd log level.",
			]
			type: "str"
			choices: [
				"alert",
				"crit",
				"debug",
				"emerg",
				"error",
				"info",
				"notice",
				"warn",
			]
		}
		max_clients: {
			description: [
				"Sets the maximum number of clients that can connect to the GUI at once.",
			]
			type: "int"
		}
		redirect_http_to_https: {
			description: [
				"Whether or not to redirect http requests to the GUI to https.",
			]
			type: "bool"
		}
		ssl_port: {
			description: [
				"The HTTPS port to listen on.",
			]
			type: "int"
		}
		ssl_cipher_suite: {
			description: [
				"Specifies the ciphers that the system uses.",
				"The values in the suite are separated by colons (:).",
				"Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.",
				"Use the value C(default) to set the cipher suite to the system default. This value is equivalent to specifying a list of C(ECDHE-RSA-AES128-GCM-SHA256, ECDHE-RSA-AES256-GCM-SHA384,ECDHE-RSA-AES128-SHA,ECDHE-RSA-AES256-SHA, ECDHE-RSA-AES128-SHA256,ECDHE-RSA-AES256-SHA384,ECDHE-ECDSA-AES128-GCM-SHA256, ECDHE-ECDSA-AES256-GCM-SHA384,ECDHE-ECDSA-AES128-SHA,ECDHE-ECDSA-AES256-SHA, ECDHE-ECDSA-AES128-SHA256,ECDHE-ECDSA-AES256-SHA384,AES128-GCM-SHA256, AES256-GCM-SHA384,AES128-SHA,AES256-SHA,AES128-SHA256,AES256-SHA256, ECDHE-RSA-DES-CBC3-SHA,ECDHE-ECDSA-DES-CBC3-SHA,DES-CBC3-SHA).",
			]

			type:          "raw"
			version_added: 2.6
		}
		ssl_protocols: {
			description: [
				"The list of SSL protocols to accept on the management console.",
				"A space-separated list of tokens in the format accepted by the Apache mod_ssl SSLProtocol directive.",
				"Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.",
				"Use the value C(default) to set the SSL protocols to the system default. This value is equivalent to specifying a list of C(all,-SSLv2,-SSLv3).",
			]

			type:          "raw"
			version_added: 2.6
		}
	}
	notes: [
		"Requires the requests Python package on the host. This is as easy as C(pip install requests).",
	]

	requirements: [
		"requests",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Joe Reifel (@JoeReifel)",
		"Tim Rupp (@caphrim007)",
	]
}
