package ansible

module: fmgr_secprof_waf: {
	module:        "fmgr_secprof_waf"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "FortiManager web application firewall security profile"
	description: [
		"Manage web application firewall security profiles for FGTs via FMG",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		name: {
			description: [
				"WAF Profile name.",
			]
			required: false
		}

		external: {
			description: [
				"Disable/Enable external HTTP Inspection.",
				"choice | disable | Disable external inspection.",
				"choice | enable | Enable external inspection.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		extended_log: {
			description: [
				"Enable/disable extended logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		comment: {
			description: [
				"Comment.",
			]
			required: false
		}

		address_list: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		address_list_blocked_address: {
			description: [
				"Blocked address.",
			]
			required: false
		}

		address_list_blocked_log: {
			description: [
				"Enable/disable logging on blocked addresses.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		address_list_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		address_list_status: {
			description: [
				"Status.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		address_list_trusted_address: {
			description: [
				"Trusted address.",
			]
			required: false
		}

		constraint: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		constraint_content_length_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_content_length_length: {
			description: [
				"Length of HTTP content in bytes (0 to 2147483647).",
			]
			required: false
		}

		constraint_content_length_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_content_length_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_content_length_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_address: {
			description: [
				"Host address.",
			]
			required: false
		}

		constraint_exception_content_length: {
			description: [
				"HTTP content length in request.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_header_length: {
			description: [
				"HTTP header length in request.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_hostname: {
			description: [
				"Enable/disable hostname check.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_line_length: {
			description: [
				"HTTP line length in request.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_malformed: {
			description: [
				"Enable/disable malformed HTTP request check.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_max_cookie: {
			description: [
				"Maximum number of cookies in HTTP request.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_max_header_line: {
			description: [
				"Maximum number of HTTP header line.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_max_range_segment: {
			description: [
				"Maximum number of range segments in HTTP range line.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_max_url_param: {
			description: [
				"Maximum number of parameters in URL.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_method: {
			description: [
				"Enable/disable HTTP method check.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_param_length: {
			description: [
				"Maximum length of parameter in URL, HTTP POST request or HTTP body.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_pattern: {
			description: [
				"URL pattern.",
			]
			required: false
		}

		constraint_exception_regex: {
			description: [
				"Enable/disable regular expression based pattern match.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_url_param_length: {
			description: [
				"Maximum length of parameter in URL.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_exception_version: {
			description: [
				"Enable/disable HTTP version check.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_header_length_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_header_length_length: {
			description: [
				"Length of HTTP header in bytes (0 to 2147483647).",
			]
			required: false
		}

		constraint_header_length_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_header_length_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_header_length_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_hostname_action: {
			description: [
				"Action for a hostname constraint.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_hostname_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_hostname_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_hostname_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_line_length_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_line_length_length: {
			description: [
				"Length of HTTP line in bytes (0 to 2147483647).",
			]
			required: false
		}

		constraint_line_length_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_line_length_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_line_length_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_malformed_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_malformed_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_malformed_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_malformed_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_cookie_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_max_cookie_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_cookie_max_cookie: {
			description: [
				"Maximum number of cookies in HTTP request (0 to 2147483647).",
			]
			required: false
		}

		constraint_max_cookie_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_max_cookie_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_header_line_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_max_header_line_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_header_line_max_header_line: {
			description: [
				"Maximum number HTTP header lines (0 to 2147483647).",
			]
			required: false
		}

		constraint_max_header_line_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_max_header_line_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_range_segment_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_max_range_segment_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_range_segment_max_range_segment: {
			description: [
				"Maximum number of range segments in HTTP range line (0 to 2147483647).",
			]
			required: false
		}

		constraint_max_range_segment_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_max_range_segment_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_url_param_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_max_url_param_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_max_url_param_max_url_param: {
			description: [
				"Maximum number of parameters in URL (0 to 2147483647).",
			]
			required: false
		}

		constraint_max_url_param_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_max_url_param_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_method_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_method_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_method_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_method_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_param_length_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_param_length_length: {
			description: [
				"Maximum length of parameter in URL, HTTP POST request or HTTP body in bytes (0 to 2147483647).",
			]
			required: false
		}

		constraint_param_length_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_param_length_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_param_length_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_url_param_length_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_url_param_length_length: {
			description: [
				"Maximum length of URL parameter in bytes (0 to 2147483647).",
			]
			required: false
		}

		constraint_url_param_length_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_url_param_length_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_url_param_length_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_version_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
			]
			required: false
			choices: ["allow", "block"]
		}

		constraint_version_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		constraint_version_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		constraint_version_status: {
			description: [
				"Enable/disable the constraint.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		method: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		method_default_allowed_methods: {
			description: [
				"Methods.",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | delete | HTTP DELETE method.",
				"flag | get | HTTP GET method.",
				"flag | head | HTTP HEAD method.",
				"flag | options | HTTP OPTIONS method.",
				"flag | post | HTTP POST method.",
				"flag | put | HTTP PUT method.",
				"flag | trace | HTTP TRACE method.",
				"flag | others | Other HTTP methods.",
				"flag | connect | HTTP CONNECT method.",
			]
			required: false
			choices: ["delete", "get", "head", "options", "post", "put", "trace", "others", "connect"]
		}

		method_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		method_severity: {
			description: [
				"Severity.",
				"choice | low | low severity",
				"choice | medium | medium severity",
				"choice | high | High severity",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		method_status: {
			description: [
				"Status.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		method_method_policy_address: {
			description: [
				"Host address.",
			]
			required: false
		}

		method_method_policy_allowed_methods: {
			description: [
				"Allowed Methods.",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | delete | HTTP DELETE method.",
				"flag | get | HTTP GET method.",
				"flag | head | HTTP HEAD method.",
				"flag | options | HTTP OPTIONS method.",
				"flag | post | HTTP POST method.",
				"flag | put | HTTP PUT method.",
				"flag | trace | HTTP TRACE method.",
				"flag | others | Other HTTP methods.",
				"flag | connect | HTTP CONNECT method.",
			]
			required: false
			choices: ["delete", "get", "head", "options", "post", "put", "trace", "others", "connect"]
		}

		method_method_policy_pattern: {
			description: [
				"URL pattern.",
			]
			required: false
		}

		method_method_policy_regex: {
			description: [
				"Enable/disable regular expression based pattern match.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		signature: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		signature_credit_card_detection_threshold: {
			description: [
				"The minimum number of Credit cards to detect violation.",
			]
			required: false
		}

		signature_disabled_signature: {
			description: [
				"Disabled signatures",
			]
			required: false
		}

		signature_disabled_sub_class: {
			description: [
				"Disabled signature subclasses.",
			]
			required: false
		}

		signature_custom_signature_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
				"choice | erase | Erase credit card numbers.",
			]
			required: false
			choices: ["allow", "block", "erase"]
		}

		signature_custom_signature_case_sensitivity: {
			description: [
				"Case sensitivity in pattern.",
				"choice | disable | Case insensitive in pattern.",
				"choice | enable | Case sensitive in pattern.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		signature_custom_signature_direction: {
			description: [
				"Traffic direction.",
				"choice | request | Match HTTP request.",
				"choice | response | Match HTTP response.",
			]
			required: false
			choices: ["request", "response"]
		}

		signature_custom_signature_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		signature_custom_signature_name: {
			description: [
				"Signature name.",
			]
			required: false
		}

		signature_custom_signature_pattern: {
			description: [
				"Match pattern.",
			]
			required: false
		}

		signature_custom_signature_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		signature_custom_signature_status: {
			description: [
				"Status.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		signature_custom_signature_target: {
			description: [
				"Match HTTP target.",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | arg | HTTP arguments.",
				"flag | arg-name | Names of HTTP arguments.",
				"flag | req-body | HTTP request body.",
				"flag | req-cookie | HTTP request cookies.",
				"flag | req-cookie-name | HTTP request cookie names.",
				"flag | req-filename | HTTP request file name.",
				"flag | req-header | HTTP request headers.",
				"flag | req-header-name | HTTP request header names.",
				"flag | req-raw-uri | Raw URI of HTTP request.",
				"flag | req-uri | URI of HTTP request.",
				"flag | resp-body | HTTP response body.",
				"flag | resp-hdr | HTTP response headers.",
				"flag | resp-status | HTTP response status.",
			]
			required: false
			choices: [
				"arg",
				"arg-name",
				"req-body",
				"req-cookie",
				"req-cookie-name",
				"req-filename",
				"req-header",
				"req-header-name",
				"req-raw-uri",
				"req-uri",
				"resp-body",
				"resp-hdr",
				"resp-status",
			]
		}

		signature_main_class_action: {
			description: [
				"Action.",
				"choice | allow | Allow.",
				"choice | block | Block.",
				"choice | erase | Erase credit card numbers.",
			]
			required: false
			choices: ["allow", "block", "erase"]
		}

		signature_main_class_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		signature_main_class_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		signature_main_class_status: {
			description: [
				"Status.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		url_access: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		url_access_action: {
			description: [
				"Action.",
				"choice | bypass | Allow the HTTP request, also bypass further WAF scanning.",
				"choice | permit | Allow the HTTP request, and continue further WAF scanning.",
				"choice | block | Block HTTP request.",
			]
			required: false
			choices: ["bypass", "permit", "block"]
		}

		url_access_address: {
			description: [
				"Host address.",
			]
			required: false
		}

		url_access_log: {
			description: [
				"Enable/disable logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		url_access_severity: {
			description: [
				"Severity.",
				"choice | low | Low severity.",
				"choice | medium | Medium severity.",
				"choice | high | High severity.",
			]
			required: false
			choices: ["low", "medium", "high"]
		}

		url_access_access_pattern_negate: {
			description: [
				"Enable/disable match negation.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		url_access_access_pattern_pattern: {
			description: [
				"URL pattern.",
			]
			required: false
		}

		url_access_access_pattern_regex: {
			description: [
				"Enable/disable regular expression based pattern match.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		url_access_access_pattern_srcaddr: {
			description: [
				"Source address.",
			]
			required: false
		}
	}
}
