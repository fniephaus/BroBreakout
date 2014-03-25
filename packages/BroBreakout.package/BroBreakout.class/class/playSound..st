sounds
playSound: aFilename
	(self configuration: #playSoundEffects) ifTrue: [
		(self get: #sound for: aFilename) play]