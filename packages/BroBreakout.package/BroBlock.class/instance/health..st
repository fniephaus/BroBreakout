accessing
health: anInteger
	"Set background image according to health value"
	((self backgroundMorph notNil) and: (#(-1 1 2 3) includes: anInteger)) ifTrue: [
			self setBackgroundImage: 'block_', anInteger ,'.jpg'].
	health := anInteger.