initialization
initialize
	super initialize.
	BroBreakout playSound: 'explosion.wav'.
	self color: Color transparent;
		changeNoLayout;
		currentSpriteIndex: 0;
		extent: (self class diameter) @ (self class diameter).