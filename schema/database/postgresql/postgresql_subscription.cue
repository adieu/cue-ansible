package ansible

module: postgresql_subscription: {
	module:            "postgresql_subscription"
	short_description: "Add, update, or remove PostgreSQL subscription"
	description: [
		"Add, update, or remove PostgreSQL subscription.",
	]
	version_added: "2.10"

	options: {
		name: {
			description: [
				"Name of the subscription to add, update, or remove.",
			]
			type:     "str"
			required: true
		}
		db: {
			description: [
				"Name of the database to connect to and where the subscription state will be changed.",
			]

			aliases: ["login_db"]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"The subscription state.",
				"C(present) implies that if I(name) subscription doesn't exist, it will be created.",
				"C(absent) implies that if I(name) subscription exists, it will be removed.",
				"C(stat) implies that if I(name) subscription exists, returns current configuration.",
				"C(refresh) implies that if I(name) subscription exists, it will be refreshed. Fetch missing table information from publisher. Always returns ``changed`` is ``True``. This will start replication of tables that were added to the subscribed-to publications since the last invocation of REFRESH PUBLICATION or since CREATE SUBSCRIPTION. The existing data in the publications that are being subscribed to should be copied once the replication starts.",
				"For more information about C(refresh) see U(https://www.postgresql.org/docs/current/sql-altersubscription.html).",
			]
			type: "str"
			choices: ["absent", "present", "refresh", "stat"]
			default: "present"
		}
		relinfo: {
			description: [
				"Get information of the state for each replicated relation in the subscription.",
			]
			type:    "bool"
			default: false
		}
		owner: {
			description: [
				"Subscription owner.",
				"If I(owner) is not defined, the owner will be set as I(login_user) or I(session_role).",
				"Ignored when I(state) is not C(present).",
			]
			type: "str"
		}
		publications: {
			description: [
				"The publication names on the publisher to use for the subscription.",
				"Ignored when I(state) is not C(present).",
			]
			type: "list"
		}
		connparams: {
			description: [
				"The connection dict param-value to connect to the publisher.",
				"For more information see U(https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING).",
				"Ignored when I(state) is not C(present).",
			]
			type: "dict"
		}
		cascade: {
			description: [
				"Drop subscription dependencies. Has effect with I(state=absent) only.",
				"Ignored when I(state) is not C(absent).",
			]
			type:    "bool"
			default: false
		}
		subsparams: {
			description: [
				"Dictionary of optional parameters for a subscription, e.g. copy_data, enabled, create_slot, etc.",
				"For update the subscription allowed keys are C(enabled), C(slot_name), C(synchronous_commit), C(publication_name).",
				"See available parameters to create a new subscription on U(https://www.postgresql.org/docs/current/sql-createsubscription.html).",
				"Ignored when I(state) is not C(present).",
			]
			type: "dict"
		}
	}

	notes: [
		"PostgreSQL version must be 10 or greater.",
	]

	seealso: [{
		module: "postgresql_publication"
	}, {
		name:        "CREATE SUBSCRIPTION reference"
		description: "Complete reference of the CREATE SUBSCRIPTION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createsubscription.html"
	}, {
		name:        "ALTER SUBSCRIPTION reference"
		description: "Complete reference of the ALTER SUBSCRIPTION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-altersubscription.html"
	}, {
		name:        "DROP SUBSCRIPTION reference"
		description: "Complete reference of the DROP SUBSCRIPTION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-dropsubscription.html"
	}]

	author: [
		"Andrew Klychkov (@Andersson007) <aaklychkov@mail.ru>",
	]

	extends_documentation_fragment: ["postgres"]
}
