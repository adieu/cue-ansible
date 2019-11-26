package ansible

module: github_release: {
	module:            "github_release"
	short_description: "Interact with GitHub Releases"
	description: [
		"Fetch metadata about GitHub Releases",
	]
	version_added: 2.2
	options: {
		token: description: [
			"GitHub Personal Access Token for authenticating. Mutually exclusive with C(password).",
		]
		user: {
			description: [
				"The GitHub account that owns the repository",
			]
			required: true
		}
		password: {
			description: [
				"The GitHub account password for the user. Mutually exclusive with C(token).",
			]
			version_added: "2.4"
		}
		repo: {
			description: [
				"Repository name",
			]
			required: true
		}
		action: {
			description: [
				"Action to perform",
			]
			required: true
			choices: ["latest_release", "create_release"]
		}
		tag: {
			description: [
				"Tag name when creating a release. Required when using action is set to C(create_release).",
			]
			version_added: 2.4
		}
		target: {
			description: [
				"Target of release when creating a release",
			]
			version_added: 2.4
		}
		name: {
			description: [
				"Name of release when creating a release",
			]
			version_added: 2.4
		}
		body: {
			description: [
				"Description of the release when creating a release",
			]
			version_added: 2.4
		}
		draft: {
			description: [
				"Sets if the release is a draft or not. (boolean)",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.4
		}
		prerelease: {
			description: [
				"Sets if the release is a prerelease or not. (boolean)",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.4
		}
	}

	author: [
		"Adrian Moisey (@adrianmoisey)",
	]
	requirements: ["github3.py >= 1.0.0a3"]
}
