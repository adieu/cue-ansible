package ansible

module: say: {
	module:            "say"
	version_added:     "1.2"
	short_description: "Makes a computer to speak."
	description: [
		"makes a computer speak! Amuse your friends, annoy your coworkers!",
	]
	notes: [
		"In 2.5, this module has been renamed from C(osx_say) to M(say).",
		"If you like this module, you may also be interested in the osx_say callback plugin.",
		"A list of available voices, with language, can be found by running C(say -v ?) on a OSX host and C(espeak --voices) on a Linux host.",
	]
	options: {
		msg: {
			description:
					"What to say"
			required: true
		}
		voice: {
			description:
					"What voice to use"
			required: false
		}
	}
	requirements: ["say or espeak or espeak-ng"]
	author: [
		"Ansible Core Team",
		"Michael DeHaan (@mpdehaan)",
	]
}
