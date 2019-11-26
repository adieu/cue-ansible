package ansible

module: ovirt_event_info: {
	module:            "ovirt_event_info"
	short_description: "This module can be used to retrieve information about one or more oVirt/RHV events"
	author:            "Chris Keller (@nasx)"
	version_added:     "2.8"
	description: [
		"Retrieve information about one or more oVirt/RHV events.",
		"This module was called C(ovirt_event_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_event_info) module no longer returns C(ansible_facts)!",
	]

	options: {
		case_sensitive: {
			description: [
				"Indicates if the search performed using the search parameter should be performed taking case into account. The default value is true, which means that case is taken into account. If you want to search ignoring case set it to false.",
			]

			required: false
			default:  true
			type:     "bool"
		}

		from_: {
			description: [
				"Indicates the event index after which events should be returned. The indexes of events are strictly increasing, so when this parameter is used only the events with greater indexes will be returned.",
			]

			required: false
			type:     "int"
		}

		max: {
			description: [
				"Sets the maximum number of events to return. If not specified all the events are returned.",
			]
			required: false
			type:     "int"
		}

		search: {
			description: [
				"Search term which is accepted by the oVirt/RHV API.",
				"For example to search for events of severity alert use the following pattern: severity=alert",
			]
			required: false
			type:     "str"
		}

		headers: {
			description: [
				"Additional HTTP headers.",
			]
			required: false
			type:     "str"
		}

		query: {
			description: [
				"Additional URL query parameters.",
			]
			required: false
			type:     "str"
		}

		wait: {
			description: [
				"If True wait for the response.",
			]
			required: false
			default:  true
			type:     "bool"
		}
	}
	extends_documentation_fragment: "ovirt_info"
}
