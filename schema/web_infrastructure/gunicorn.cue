package ansible

module: gunicorn: {
	module:            "gunicorn"
	version_added:     "2.4"
	short_description: "Run gunicorn with various settings."
	description: [
		"Starts gunicorn with the parameters specified. Common settings for gunicorn configuration are supported. For additional configuration use a config file See U(https://gunicorn-docs.readthedocs.io/en/latest/settings.html) for more options. It's recommended to always use the chdir option to avoid problems with the location of the app.",
	]

	requirements: ["gunicorn"]
	author: [
		"Alejandro Gomez (@agmezr)",
	]
	options: {
		app: {
			required: true
			aliases: ["name"]
			description: [
				"The app module. A name refers to a WSGI callable that should be found in the specified module.",
			]
		}
		venv: {
			aliases: ["virtualenv"]
			description: [
				"Path to the virtualenv directory.",
			]
		}
		config: description: [
			"Path to the gunicorn configuration file.",
		]
		chdir: description: [
			"Chdir to specified directory before apps loading.",
		]
		pid: description: [
			"A filename to use for the PID file. If not set and not found on the configuration file a tmp pid file will be created to check a successful run of gunicorn.",
		]

		worker: {
			choices: ["sync", "eventlet", "gevent", "tornado ", "gthread", "gaiohttp"]
			description: [
				"The type of workers to use. The default class (sync) should handle most \"normal\" types of workloads.",
			]
		}
		user: description: [
			"Switch worker processes to run as this user.",
		]
	}
	notes: [
		"If not specified on config file, a temporary error log will be created on /tmp dir. Please make sure you have write access in /tmp dir. Not needed but will help you to identify any problem with configuration.",
	]
}
