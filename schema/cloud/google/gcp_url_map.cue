package ansible

module: gcp_url_map: {
	module:            "gcp_url_map"
	version_added:     "2.4"
	short_description: "Create, Update or Destroy a Url_Map."
	description: [
		"Create, Update or Destroy a Url_Map. See U(https://cloud.google.com/compute/docs/load-balancing/http/url-map) for an overview. More details on the Url_Map API can be found at U(https://cloud.google.com/compute/docs/reference/latest/urlMaps#resource).",
	]

	requirements: [
		"python >= 2.6",
		"google-api-python-client >= 1.6.2",
		"google-auth >= 0.9.0",
		"google-auth-httplib2 >= 0.0.2",
	]
	notes: [
		"Only supports global Backend Services.",
		"Url_Map tests are not currently supported.",
	]
	author: [
		"Tom Melendez (@supertom) <tom@supertom.com>",
	]
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_compute_url_map) instead."
	}
	options: {
		url_map_name: {
			description: [
				"Name of the Url_Map.",
			]
			required: true
		}
		default_service: {
			description: [
				"Default Backend Service if no host rules match.",
			]
			required: true
		}
		host_rules: {
			description: [
				"The list of HostRules to use against the URL. Contains a list of hosts and an associated path_matcher.",
				"The 'hosts' parameter is a list of host patterns to match. They must be valid hostnames, except * will match any string of ([a-z0-9-.]*). In that case, * must be the first character and must be followed in the pattern by either - or ..",
				"The 'path_matcher' parameter is name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.",
			]

			required: false
		}
		path_matchers: {
			description: [
				"The list of named PathMatchers to use against the URL. Contains path_rules, which is a list of paths and an associated service. A default_service can also be specified for each path_matcher.",
				"The 'name' parameter to which this path_matcher is referred by the host_rule.",
				"The 'default_service' parameter is the name of the BackendService resource. This will be used if none of the path_rules defined by this path_matcher is matched by the URL's path portion.",
				"The 'path_rules' parameter is a list of dictionaries containing a list of paths and a service to direct traffic to. Each path item must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or",
			]

			//, and those chars are not allowed here.
			required: false
		}
	}
}
