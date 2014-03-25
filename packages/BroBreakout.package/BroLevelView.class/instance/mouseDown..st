event handling
mouseDown: anEvent
	self overlay ifNotNil: [self switchToMenu]