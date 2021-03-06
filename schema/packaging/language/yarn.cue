package ansible

module: yarn: {
	module:            "yarn"
	short_description: "Manage node.js packages with Yarn"
	description: [
		"Manage node.js packages with the Yarn package manager (https://yarnpkg.com/)",
	]
	version_added: "2.6"
	author: [
		"David Gunter (@verkaufer)",
		"Chris Hoffman (@chrishoffman), creator of NPM Ansible module)",
	]
	options: {
		name: {
			description: [
				"The name of a node.js library to install",
				"If omitted all packages in package.json are installed.",
			]
			required: false
		}
		path: {
			description: [
				"The base path where Node.js libraries will be installed.",
				"This is where the node_modules folder lives.",
			]
			required: false
		}
		version: {
			description: [
				"The version of the library to be installed.",
				"Must be in semver format. If \"latest\" is desired, use \"state\" arg instead",
			]
			required: false
		}
		global: {
			description: [
				"Install the node.js library globally",
			]
			required: false
			default:  false
			type:     "bool"
		}
		executable: {
			description: [
				"The executable location for yarn.",
			]
			required: false
		}
		ignore_scripts: {
			description: [
				"Use the --ignore-scripts flag when installing.",
			]
			required: false
			type:     "bool"
			default:  false
		}
		production: {
			description: [
				"Install dependencies in production mode.",
				"Yarn will ignore any dependencies under devDependencies in package.json",
			]
			required: false
			type:     "bool"
			default:  false
		}
		registry: {
			description: [
				"The registry to install modules from.",
			]
			required: false
		}
		state: {
			description: [
				"Installation state of the named node.js library",
				"If absent is selected, a name option must be provided",
			]
			required: false
			default:  "present"
			choices: ["present", "absent", "latest"]
		}
	}
	requirements: ["Yarn installed in bin path (typically /usr/local/bin)"]
}
