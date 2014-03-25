initialization
initialize
	super initialize.
	self
		color: Color transparent;
		borderColor: Color transparent;
		initializeBackgroundImage;
		hitAllowed: true;
		extent: (self class width) @ (self class height);
		containsPowerup: false.