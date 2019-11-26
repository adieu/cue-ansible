package ansible

module: apt_repository: {
	module:            "apt_repository"
	short_description: "Add and remove APT repositories"
	description: [
		"Add or remove an APT repositories in Ubuntu and Debian.",
	]
	notes: [
		"This module works on Debian, Ubuntu and their derivatives.",
		"This module supports Debian Squeeze (version 6) as well as its successors.",
	]
	options: {
		repo: {
			description: [
				"A source string for the repository.",
			]
			required: true
		}
		state: {
			description: [
				"A source string state.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		mode: {
			description: [
				"The octal mode for newly created files in sources.list.d",
			]
			default:       "0644"
			version_added: "1.6"
		}
		update_cache: {
			description: [
				"Run the equivalent of C(apt-get update) when a change occurs.  Cache updates are run after making changes.",
			]
			type:    "bool"
			default: "yes"
		}
		update_cache_retries: {
			description: [
				"Amount of retries if the cache update fails. Also see I(update_cache_retry_max_delay).",
			]
			type:          "int"
			default:       5
			version_added: "2.10"
		}
		update_cache_retry_max_delay: {
			description: [
				"Use an exponential backoff delay for each retry (see I(update_cache_retries)) up to this max delay in seconds.",
			]
			type:          "int"
			default:       12
			version_added: "2.10"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:          "bool"
			default:       "yes"
			version_added: "1.8"
		}
		filename: {
			description: [
				"Sets the name of the source list file in sources.list.d. Defaults to a file name based on the repository source url. The .list extension will be automatically added.",
			]

			version_added: "2.1"
		}
		codename: {
			description: [
				"Override the distribution codename to use for PPA repositories. Should usually only be set when working with a PPA on a non-Ubuntu target (e.g. Debian or Mint)",
			]

			version_added: "2.3"
		}
	}
	author: [
		"Alexander Saltanov (@sashka)",
	]
	version_added: "0.7"
	requirements: [
		"python-apt (python 2)",
		"python3-apt (python 3)",
	]
}
