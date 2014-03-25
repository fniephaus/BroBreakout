event handling
keyStroke: anEvent
	super keyStroke: anEvent.
	self lastKey: anEvent keyCharacter.
	
	((anEvent keyCharacter = $m) or:
		"If the overlay is active, allow any key but q to switch to menu"
		((self overlay notNil) and: (self lastKey = $q) not)) ifTrue: [
			self switchToMenu].