package ansible

module: postgresql_publication: {
	module:            "postgresql_publication"
	short_description: "Add, update, or remove PostgreSQL publication"
	description: [
		"Add, update, or remove PostgreSQL publication.",
	]
	version_added: "2.9"
	options: {
		name: {
			description: [
				"Name of the publication to add, update, or remove.",
			]
			required: true
			type:     "str"
		}
		db: {
			description: [
				"Name of the database to connect to and where the publication state will be changed.",
			]

			aliases: ["login_db"]
			type: "str"
		}
		tables: {
			description: [
				"List of tables to add to the publication.",
				"If no value is set all tables are targeted.",
				"If the publication already exists for specific tables and I(tables) is not passed, nothing will be changed. If you need to add all tables to the publication with the same name, drop existent and create new without passing I(tables).",
			]

			type:     "list"
			elements: "str"
		}
		state: {
			description: [
				"The publication state.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		parameters: {
			description: [
				"Dictionary with optional publication parameters.",
				"Available parameters depend on PostgreSQL version.",
			]
			type: "dict"
		}
		owner: {
			description: [
				"Publication owner.",
				"If I(owner) is not defined, the owner will be set as I(login_user) or I(session_role).",
			]
			type: "str"
		}
		cascade: {
			description: [
				"Drop publication dependencies. Has effect with I(state=absent) only.",
			]
			type:    "bool"
			default: false
		}
	}
	notes: [
		"PostgreSQL version must be 10 or greater.",
	]
	seealso: [{
		name:        "CREATE PUBLICATION reference"
		description: "Complete reference of the CREATE PUBLICATION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createpublication.html"
	}, {
		name:        "ALTER PUBLICATION reference"
		description: "Complete reference of the ALTER PUBLICATION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-alterpublication.html"
	}, {
		name:        "DROP PUBLICATION reference"
		description: "Complete reference of the DROP PUBLICATION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-droppublication.html"
	}]
	author: [
		"Loic Blot (@nerzhul) <loic.blot@unix-experience.fr>",
		"Andrew Klychkov (@Andersson007) <aaklychkov@mail.ru>",
	]
	extends_documentation_fragment: ["postgres"]
}
