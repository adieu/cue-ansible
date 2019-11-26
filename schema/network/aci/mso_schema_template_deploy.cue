package ansible

module: mso_schema_template_deploy: {
	module:            "mso_schema_template_deploy"
	short_description: "Deploy schema templates to sites"
	description: [
		"Deploy schema templates to sites.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.8"
	options: {
		schema: {
			description: [
				"The name of the schema.",
			]
			type:     "str"
			required: true
		}
		template: {
			description: [
				"The name of the template.",
			]
			type: "str"
			aliases: ["name"]
		}
		site: {
			description: [
				"The name of the site B(to undeploy).",
			]
			type: "str"
		}
		state: {
			description: [
				"Use C(deploy) to deploy schema template.",
				"Use C(status) to get deployment status.",
				"Use C(undeploy) to deploy schema template from a site.",
			]
			type: "str"
			choices: ["deploy", "status", "undeploy"]
			default: "deploy"
		}
	}
	seealso: [{
		module: "mso_schema_site"
	}, {
		module: "mso_schema_template"
	}]
	extends_documentation_fragment: "mso"
}
