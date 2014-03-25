accessing
configurations
	"Store Configurations to make them persistent in the image"
	Configurations ifNil: [Configurations := Dictionary new.
		Configurations
			at: #playSoundEffects put: true;
			at: #playMusic put: true].
		
	^ Configurations