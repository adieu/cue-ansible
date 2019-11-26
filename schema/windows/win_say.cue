package ansible

module: win_say: {
	module:            "win_say"
	version_added:     "2.3"
	short_description: "Text to speech module for Windows to speak messages and optionally play sounds"
	description: [
		"Uses .NET libraries to convert text to speech and optionally play .wav sounds.  Audio Service needs to be running and some kind of speakers or headphones need to be attached to the windows target(s) for the speech to be audible.",
	]

	options: {
		msg: {
			description: [
				"The text to be spoken.",
				"Use either C(msg) or C(msg_file).",
				"Optional so that you can use this module just to play sounds.",
			]
			type: "str"
		}
		msg_file: {
			description: [
				"Full path to a windows format text file containing the text to be spoken.",
				"Use either C(msg) or C(msg_file).",
				"Optional so that you can use this module just to play sounds.",
			]
			type: "path"
		}
		voice: {
			description: [
				"Which voice to use. See notes for how to discover installed voices.",
				"If the requested voice is not available the default voice will be used. Example voice names from Windows 10 are C(Microsoft Zira Desktop) and C(Microsoft Hazel Desktop).",
			]

			type: "str"
		}
		speech_speed: {
			description: [
				"How fast or slow to speak the text.",
				"Must be an integer value in the range -10 to 10.",
				"-10 is slowest, 10 is fastest.",
			]
			type:    "int"
			default: 0
		}
		start_sound_path: {
			description: [
				"Full path to a C(.wav) file containing a sound to play before the text is spoken.",
				"Useful on conference calls to alert other speakers that ansible has something to say.",
			]
			type: "path"
		}
		end_sound_path: {
			description: [
				"Full path to a C(.wav) file containing a sound to play after the text has been spoken.",
				"Useful on conference calls to alert other speakers that ansible has finished speaking.",
			]
			type: "path"
		}
	}
	notes: [
		"Needs speakers or headphones to do anything useful.",
		"""
		To find which voices are installed, run the following Powershell commands.

		            Add-Type -AssemblyName System.Speech
		            $speech = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
		            $speech.GetInstalledVoices() | ForEach-Object { $_.VoiceInfo }
		            $speech.Dispose()

		""",
		"Speech can be surprisingly slow, so it's best to keep message text short.",
	]
	seealso: [{
		module: "win_msg"
	}, {
		module: "win_toast"
	}]
	author: ["Jon Hawkesworth (@jhawkesworth)"]
}
